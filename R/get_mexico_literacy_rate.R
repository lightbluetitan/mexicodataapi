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


#' Get Mexico's Literacy Rate (Age 15+) from World Bank
#'
#' This function retrieves Mexico's literacy rate for adults aged 15 and above,
#' expressed as a percentage, for the years 2010 to 2022 using the World Bank Open Data API.
#' The indicator used is \code{SE.ADT.LITR.ZS}.
#'
#' @return A tibble with the following columns:
#' \itemize{
#'   \item \code{indicator}: Indicator name (e.g., "Literacy rate, adult total (% of people ages 15 and above)").
#'   \item \code{country}: Country name ("Mexico").
#'   \item \code{year}: Year of the data.
#'   \item \code{value}: Literacy rate (numeric percentage).
#' }
#'
#' @examples
#' \dontrun{
#' get_mexico_literacy_rate()
#' }
#'
#' @note Some years may return missing values (`NA`) due to lack of official data reported to the World Bank.
#' Requires internet connection. The function pulls data in real time from the World Bank API.
#'
#' @seealso \code{\link[httr]{GET}}, \code{\link[jsonlite]{fromJSON}}, \code{\link[dplyr]{as_tibble}}
#'
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @importFrom dplyr as_tibble
#'
#' @export
get_mexico_literacy_rate <- function() {
  url <- "https://api.worldbank.org/v2/country/MEX/indicator/SE.ADT.LITR.ZS?format=json&date=2010:2022&per_page=100"

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
  )

  return(df)
}
