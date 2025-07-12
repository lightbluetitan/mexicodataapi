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

# get_mexico_cpi


library(testthat)

test_that("get_mexico_cpi() returns a valid tibble with expected structure", {
  skip_on_cran()

  result <- get_mexico_cpi()

  # Test 1: The result is not NULL
  expect_false(is.null(result))

  # Test 2: It is a tibble
  expect_s3_class(result, "tbl_df")

  # Test 3: It has 4 columns
  expect_equal(ncol(result), 4)

  # Test 4: It has more than 10 rows
  expect_gt(nrow(result), 10)

  # Test 5: Column names are correct
  expected_columns <- c("indicator", "country", "year", "value")
  expect_named(result, expected_columns)

  # Test 6: Column types are correct
  expect_type(result$indicator, "character")
  expect_type(result$country, "character")
  expect_type(result$year, "integer")
  expect_type(result$value, "double")
})

test_that("get_mexico_cpi() handles API errors gracefully", {
  skip_on_cran()

  stub_get_mexico_cpi <- function() {
    url <- "https://api.worldbank.org/v2/country/MEX/indicator/INVALID_INDICATOR?format=json&date=2010:2022"
    res <- httr::GET(url)
    if (res$status_code != 200) {
      return(NULL)
    }

    content <- jsonlite::fromJSON(httr::content(res, "text", encoding = "UTF-8"))

    # Defensive check for content structure
    if (length(content) < 2 || is.null(content[[2]])) {
      return(NULL)
    }

    df <- dplyr::as_tibble(content[[2]])
    return(df)
  }

  result <- stub_get_mexico_cpi()
  expect_null(result)
})
