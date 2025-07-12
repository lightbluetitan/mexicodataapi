# MexicoDataAPI - Access Mexican Data via APIs and Curated Datasets
# Version 0.1.0
# Copyright (C) 2025 Renzo Caceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

#' Get Key Country Information from the REST Countries API
#'
#' Retrieves selected, essential information about Mexico or any other country by its full name.
#' The data is retrieved from the REST Countries API.
#' See the API documentation at \url{https://restcountries.com/}.
#' Example API usage: \url{https://restcountries.com/v3.1/name/mexico?fullText=true}.
#'
#' This function returns readable details such as the country's common and official name, capital,
#' region, subregion, population, area, and official languages.
#'
#' @param name Full country name (common or official). For example: "Mexico", "Peru", "France".
#'
#' @return A data frame with 8 columns:
#' \itemize{
#'   \item \code{name_common}: Common name of the country.
#'   \item \code{name_official}: Official name of the country.
#'   \item \code{capital}: Capital city.
#'   \item \code{region}: Geographic region.
#'   \item \code{subregion}: Subregion.
#'   \item \code{population}: Total population.
#'   \item \code{area}: Total area in square kilometers.
#'   \item \code{languages}: Official languages, separated by commas.
#' }
#'
#' @details
#' The function sends a GET request to the REST Countries API. If the request is successful (HTTP 200),
#' it parses the JSON and extracts the key fields. If the country is not found or there's an error,
#' the function returns \code{NULL} with a user-friendly message.
#'
#' @examples
#' \dontrun{
#' get_country_info("Mexico")
#' get_country_info("Japan")
#' get_country_info("France")
#' }
#'
#' @seealso \code{\link[httr]{GET}}, \code{\link[jsonlite]{fromJSON}}, \code{\link[dplyr]{tibble}}
#'
#' @importFrom httr GET
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr tibble
#' @export
get_country_info <- function(name) {
  if (missing(name) || !is.character(name)) {
    stop("Please provide a valid country name as a character string.")
  }

  base_url <- "https://restcountries.com/v3.1/name/"
  full_url <- paste0(base_url, utils::URLencode(name), "?fullText=true")

  response <- httr::GET(full_url)

  if (httr::status_code(response) != 200) {
    message(paste("API request failed with status:", httr::status_code(response)))
    return(NULL)
  }

  json_data <- jsonlite::fromJSON(rawToChar(response$content), simplifyVector = FALSE)

  if (length(json_data) == 0) {
    message("No data found for the given country name.")
    return(NULL)
  }

  country <- json_data[[1]]

  name_common   <- if (!is.null(country$name$common)) country$name$common else NA_character_
  name_official <- if (!is.null(country$name$official)) country$name$official else NA_character_
  capital       <- if (!is.null(country$capital)) paste(country$capital, collapse = ", ") else NA_character_
  region        <- if (!is.null(country$region)) country$region else NA_character_
  subregion     <- if (!is.null(country$subregion)) country$subregion else NA_character_
  population    <- if (!is.null(country$population)) country$population else NA_integer_
  area          <- if (!is.null(country$area)) country$area else NA_real_
  languages     <- if (!is.null(country$languages) && length(country$languages) > 0) {
    paste(unname(unlist(country$languages)), collapse = ", ")
  } else {
    NA_character_
  }

  result <- dplyr::tibble(
    name_common   = name_common,
    name_official = name_official,
    capital       = capital,
    region        = region,
    subregion     = subregion,
    population    = population,
    area          = area,
    languages     = languages
  )

  return(result)
}
