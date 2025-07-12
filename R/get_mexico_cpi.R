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

#' Get Mexico's Consumer Price Index (2010 = 100) from World Bank
#'
#' Retrieves Mexico's Consumer Price Index (CPI) using 2010 as the base year,
#' for the years 2010 to 2022 from the World Bank Open Data API.
#' The indicator used is `FP.CPI.TOTL`.
#'
#' @return A tibble with four columns:
#' \describe{
#'   \item{indicator}{Indicator name (e.g., "Consumer price index (2010 = 100)")}
#'   \item{country}{Country name ("Mexico")}
#'   \item{year}{Year of the data (integer)}
#'   \item{value}{Consumer Price Index value (numeric)}
#' }
#'
#' @details
#' The function sends a GET request to the World Bank API.
#' If the API request fails or returns an error status code, the function returns `NULL` with an informative message.
#'
#' @note Requires internet connection. Data is retrieved in real time from the World Bank API.
#'
#' @examples
#' if (interactive()) {
#'   get_mexico_cpi()
#' }
#'
#' @seealso
#' \code{\link[httr]{GET}}, \code{\link[jsonlite]{fromJSON}}, \code{\link[dplyr]{as_tibble}}
#'
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr as_tibble
#'
#' @export
get_mexico_cpi <- function() {
  url <- "https://api.worldbank.org/v2/country/MEX/indicator/FP.CPI.TOTL?format=json&date=2010:2022&per_page=100"

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
