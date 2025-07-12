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


#' Get Mexico's Life Expectancy from World Bank
#'
#' Retrieves Mexico's life expectancy at birth (in years)
#' for the years 2010 to 2022 using the World Bank Open Data API.
#' The indicator used is `SP.DYN.LE00.IN`.
#'
#' @return A tibble with the following columns:
#' \describe{
#'   \item{indicator}{Indicator name (e.g., "Life expectancy at birth, total (years)")}
#'   \item{country}{Country name ("Mexico")}
#'   \item{year}{Year of the data (integer)}
#'   \item{value}{Life expectancy in years (numeric)}
#' }
#'
#' @details
#' The function sends a GET request to the World Bank API.
#' If the API request fails or returns an error status code, the function returns `NULL` with a message.
#'
#' @note Requires internet connection. Data is retrieved in real time from the World Bank API.
#'
#' @examples
#' if (interactive()) {
#'   get_mexico_life_expectancy()
#' }
#'
#' @seealso
#' \link[httr]{GET}, \link[jsonlite]{fromJSON}, \link[dplyr]{as_tibble}
#'
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr as_tibble
#'
#' @export
get_mexico_life_expectancy <- function() {
  url <- "https://api.worldbank.org/v2/country/MEX/indicator/SP.DYN.LE00.IN?format=json&date=2010:2022&per_page=100"

  res <- httr::GET(url)

  if (res$status_code != 200) {
    message(paste("Error: status", res$status_code))
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
