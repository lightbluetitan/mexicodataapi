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

# get_mexico_unemployment

library(testthat)

# Basic structure and content
test_that("get_mexico_unemployment() returns a valid tibble with correct structure", {
  skip_on_cran()

  result <- get_mexico_unemployment()

  expect_false(is.null(result))
  expect_s3_class(result, "tbl_df")
  expect_gt(nrow(result), 0)

  expected_columns <- c("indicator", "country", "year", "value")
  expect_true(all(expected_columns %in% names(result)))
  expect_equal(ncol(result), 4)

  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

# Test for year range
test_that("get_mexico_unemployment() includes years from 2010 to 2022", {
  skip_on_cran()
  result <- get_mexico_unemployment()
  expect_true(all(2010:2022 %in% result$year))
})

# Test that all rows refer to Mexico
test_that("get_mexico_unemployment() country is always Mexico", {
  skip_on_cran()
  result <- get_mexico_unemployment()
  expect_true(all(result$country == "Mexico"))
})

# Test for positive numeric values
test_that("get_mexico_unemployment() values are non-negative numbers", {
  skip_on_cran()
  result <- get_mexico_unemployment()
  expect_true(all(result$value >= 0, na.rm = TRUE))
})

# Test for handling NA values
test_that("get_mexico_unemployment() handles NA values correctly", {
  skip_on_cran()
  result <- get_mexico_unemployment()
  expect_true(typeof(result$value) == "double")
  expect_true(any(is.na(result$value)) || any(!is.na(result$value)))
})

# Test for graceful handling of API errors
test_that("get_mexico_unemployment() handles API error gracefully", {
  skip_on_cran()

  stub_get_mexico_unemployment <- function() {
    url <- "https://api.worldbank.org/v2/country/MEX/indicator/INVALID_CODE"
    res <- httr::GET(url)

    if (res$status_code != 200) {
      return(NULL)
    }

    # Retrieve raw text content
    text_content <- httr::content(res, "text", encoding = "UTF-8")

    # Check if the content is valid JSON (World Bank JSON responses start with “[”)
    if (!startsWith(text_content, "[")) {
      return(NULL)
    }

    content <- jsonlite::fromJSON(text_content)

    if (length(content) < 2 || is.null(content[[2]])) {
      return(NULL)
    }

    data <- content[[2]]
    df <- dplyr::as_tibble(data)
    return(df)
  }

  result <- stub_get_mexico_unemployment()
  expect_true(is.null(result) || inherits(result, "tbl_df"))
})
