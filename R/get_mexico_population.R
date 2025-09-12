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


#' Get Mexico's Population (Total) from World Bank
#'
#' Retrieves Mexico's total population for the years 2010 to 2022
#' using the World Bank Open Data API. The indicator used is `SP.POP.TOTL`.
#'
#' @return A tibble with the following columns:
#' \describe{
#'   \item{indicator}{Indicator name (e.g., "Population, total")}
#'   \item{country}{Country name ("Mexico")}
#'   \item{year}{Year of the data (integer)}
#'   \item{value}{Population as numeric value}
#'   \item{value_label}{Formatted population value (e.g., "126,705,138")}
#' }
#'
#' @details
#' The function sends a GET request to the World Bank API. If the request fails
#' or returns an error code, it will return `NULL` with an informative message.
#'
#' @note Requires internet connection. Data is retrieved in real time from the World Bank API.
#'
#' @examples
#' if (interactive()) {
#'   get_mexico_population()
#' }
#'
#' @seealso
#' \link[httr]{GET}, \link[jsonlite]{fromJSON}, \link[dplyr]{as_tibble}, \link[scales]{comma}
#'
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr tibble mutate
#' @importFrom scales comma
#'
#' @export
get_mexico_population <- function() {
  url <- "https://api.worldbank.org/v2/country/MEX/indicator/SP.POP.TOTL?format=json&date=2010:2022&per_page=100"

  res <- httr::GET(url)

  if (res$status_code != 200) {
    message(paste("Error: status", res$status_code))
    return(NULL)
  }

  content <- jsonlite::fromJSON(httr::content(res, "text", encoding = "UTF-8"))
  data <- content[[2]]

  df <- dplyr::tibble(
    indicator = data$indicator$value,
    country = data$country$value,
    year = as.integer(data$date),
    value = data$value
  ) |>
    dplyr::mutate(
      value_label = scales::comma(value, accuracy = 1)
    )

  return(df)
}
