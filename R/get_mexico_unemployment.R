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


#' Get Mexico's Unemployment Rate from World Bank
#'
#' Retrieves Mexico's total unemployment rate as a percentage of the total labor force
#' from 2010 to 2022 using the World Bank Open Data API.
#'
#' @return A tibble with four columns: `indicator` (name of the indicator),
#' `country` (country name), `year` (year of observation), and `value`
#' (unemployment rate as a numeric percentage).
#'
#' @details
#' The function sends a GET request to the World Bank API. If the request fails or returns a status
#' other than 200, the function returns \code{NULL} with an informative message.
#'
#' @note This function requires an internet connection.
#'
#' @seealso \link[httr]{GET}, \link[jsonlite]{fromJSON}, \link[dplyr]{as_tibble}
#'
#' @examples
#' \dontrun{
#' get_mexico_unemployment()
#' }
#'
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr as_tibble
#'
#' @export
get_mexico_unemployment <- function() {
  url <- "https://api.worldbank.org/v2/country/MEX/indicator/SL.UEM.TOTL.ZS?format=json&date=2010:2022&per_page=100"

  res <- httr::GET(url)

  if (res$status_code != 200) {
    message("Error: status ", res$status_code)
    return(NULL)
  }

  content <- jsonlite::fromJSON(httr::content(res, "text", encoding = "UTF-8"))
  data <- content[[2]]

  df <- dplyr::as_tibble(data.frame(
    indicator = data$indicator$value,
    country = data$country$value,
    year = as.integer(data$date),
    value = data$value
  ))

  return(df)
}
