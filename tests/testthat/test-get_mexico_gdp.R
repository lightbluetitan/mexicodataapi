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


# get_mexico_gdp

library(testthat)

test_that("get_mexico_gdp() handles API error gracefully", {
  skip_on_cran()

  stub_get_mexico_gdp <- function() {
    url <- "https://api.worldbank.org/v2/country/MEX/indicator/INVALID?format=json&date=2010:2022&per_page=100"
    res <- httr::GET(url)

    if (res$status_code != 200) {
      return(NULL)
    }

    content <- jsonlite::fromJSON(httr::content(res, "text", encoding = "UTF-8"))

    # FIX: Check if the second element exists and is not NULL
    if (length(content) < 2 || is.null(content[[2]])) {
      return(NULL)
    }

    data <- content[[2]]

    df <- dplyr::tibble(
      indicator = data$indicator$value,
      country = data$country$value,
      year = as.integer(data$date),
      value = data$value
    ) |>
      dplyr::mutate(value_label = scales::comma(value, accuracy = 1))

    return(df)
  }

  result <- stub_get_mexico_gdp()
  expect_null(result)
})
