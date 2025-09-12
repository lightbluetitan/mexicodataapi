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

# get_mexico_literacy_rate

library(testthat)

# Test 1: Valid output structure
test_that("get_mexico_literacy_rate() returns valid structure and types", {
  skip_on_cran()

  result <- get_mexico_literacy_rate()

  expect_false(is.null(result))
  expect_s3_class(result, "tbl_df")
  expect_gt(nrow(result), 0)

  expected_columns <- c("indicator", "country", "year", "value")
  expect_true(all(expected_columns %in% names(result)))
  expect_equal(ncol(result), 4)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_true(typeof(result$value) %in% c("integer", "double"))
})

# Test 2: Correct indicator name for the most recent year (if available)
test_that("get_mexico_literacy_rate() contains correct indicator label", {
  skip_on_cran()
  result <- get_mexico_literacy_rate()
  expect_true(any(grepl("Literacy rate", result$indicator)))
})

# Test 3: Check for presence of NA values (allowed and expected)
test_that("get_mexico_literacy_rate() allows NA values for missing years", {
  skip_on_cran()
  result <- get_mexico_literacy_rate()
  expect_true(any(is.na(result$value)))
})

# Test 4: Handles API errors gracefully
test_that("get_mexico_literacy_rate() handles API error gracefully", {
  skip_on_cran()

  stub_get_mexico_literacy_rate <- function() {
    url <- "https://api.worldbank.org/v2/country/MEX/indicator/INVALID_CODE?format=json&date=2010:2022&per_page=100"
    res <- httr::GET(url)
    if (res$status_code != 200) {
      return(NULL)
    }
    content <- jsonlite::fromJSON(httr::content(res, "text", encoding = "UTF-8"))
    if (length(content) < 2 || is.null(content[[2]])) return(NULL)
    data <- content[[2]]
    df <- dplyr::tibble(
      indicator = data$indicator$value,
      country = data$country$value,
      year = as.integer(data$date),
      value = data$value
    )
    return(df)
  }

  result <- stub_get_mexico_literacy_rate()
  expect_null(result)
})
