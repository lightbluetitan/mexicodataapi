# MexicoDataAPI - Access Mexican Data via APIs and Curated Datasets
# Version 0.2.0
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

#' Get Country Information for Mexico
#'
#' @description
#' Retrieves comprehensive country information for Mexico from the REST Countries API.
#' This function fetches data including official and common names, geographical information,
#' capital, area, population, and languages.
#'
#' @return A tibble with one row containing Mexico's country information:
#' \describe{
#'   \item{name_common}{Common name of the country}
#'   \item{name_official}{Official name of the country}
#'   \item{region}{Geographic region}
#'   \item{subregion}{Geographic subregion}
#'   \item{capital}{Capital city(ies)}
#'   \item{area}{Total area in square kilometers}
#'   \item{population}{Total population}
#'   \item{languages}{Languages spoken (comma-separated)}
#' }
#'
#' @details
#' This function makes a request to the REST Countries API v3.1 endpoint specifically
#' for Mexico using full text search. It handles API errors gracefully and
#' returns NULL if the request fails or no data is found.
#'
#' @examples
#' \donttest{
#' # Get Mexico information
#' mx_info <- get_country_info_mx()
#' print(mx_info)
#' }
#'
#' @importFrom httr GET http_error content
#' @importFrom jsonlite fromJSON
#' @importFrom tibble tibble
#'
#' @export
get_country_info_mx <- function() {
  url <- "https://restcountries.com/v3.1/name/mexico?fullText=true"
  response <- httr::GET(url)

  if (httr::http_error(response)) {
    message("API request failed.")
    return(NULL)
  }

  data_raw <- httr::content(response, as = "text", encoding = "UTF-8")
  data_list <- jsonlite::fromJSON(data_raw)

  if (length(data_list) == 0) {
    message("No data found for Mexico.")
    return(NULL)
  }

  data <- data_list[1, ]  # Only one country should be returned

  tibble::tibble(
    name_common   = data$name$common,
    name_official = data$name$official,
    region        = data$region,
    subregion     = data$subregion,
    capital       = paste(data$capital, collapse = ", "),
    area          = data$area,
    population    = data$population,
    languages     = paste(unlist(data$languages), collapse = ", ")
  )
}
