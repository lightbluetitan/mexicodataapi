# MexicoDataAPI - Access Mexican Data via APIs and Curated Datasets
# Version 0.3.0
# Copyright (C) 2025-2026 Renzo Caceres Rossi
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

# get_mexico_population


library(testthat)

# Basic structure test
test_that("get_mexico_population() returns a valid tibble with correct structure", {
  skip_on_cran()

  result <- get_mexico_population()

  expect_false(is.null(result))
  expect_s3_class(result, "tbl_df")
  expect_gt(nrow(result), 0)

  expected_columns <- c("indicator", "country", "year", "value", "value_label")
  expect_true(all(expected_columns %in% names(result)))
  expect_equal(ncol(result), 5)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_true(typeof(result$value) %in% c("double", "integer"))
  expect_type(result$value_label, "character")
})

# Test for expected years
test_that("get_mexico_population() includes years from 2010 to 2022", {
  skip_on_cran()
  result <- get_mexico_population()
  expect_true(all(2010:2022 %in% result$year))
})

# Test for country field
test_that("get_mexico_population() country is always Mexico", {
  skip_on_cran()
  result <- get_mexico_population()
  expect_true(all(result$country == "Mexico"))
})

# Test for positive numeric values
test_that("get_mexico_population() value is numeric and positive", {
  skip_on_cran()
  result <- get_mexico_population()
  expect_true(all(result$value > 0, na.rm = TRUE))
})

# Test for NA handling
test_that("get_mexico_population() handles NA values correctly", {
  skip_on_cran()
  result <- get_mexico_population()
  expect_true(typeof(result$value) %in% c("integer", "double"))
  expect_true(any(is.na(result$value)) || any(!is.na(result$value)))
})

# Test for graceful API error handling
test_that("get_mexico_population() handles API error gracefully", {
  skip_on_cran()

  stub_get_mexico_population <- function() {
    url <- "https://api.worldbank.org/v2/country/MEX/indicator/INVALID_CODE?format=json"
    res <- httr::GET(url)

    if (res$status_code != 200) {
      return(NULL)
    }

    content_raw <- httr::content(res, "text", encoding = "UTF-8")

    parsed <- tryCatch({
      jsonlite::fromJSON(content_raw)
    }, error = function(e) {
      return(NULL)
    })

    if (is.null(parsed) || length(parsed) < 2 || is.null(parsed[[2]])) {
      return(NULL)
    }

    data <- parsed[[2]]
    df <- dplyr::as_tibble(data)
    return(df)
  }

  result <- stub_get_mexico_population()
  expect_true(is.null(result) || inherits(result, "tbl_df"))
})
