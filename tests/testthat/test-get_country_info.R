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

# get_country_info

library(testthat)

test_that("get_country_info() returns a tibble with expected structure for a valid country", {
  result <- get_country_info("Mexico")
  expect_s3_class(result, "tbl_df")
  expect_equal(nrow(result), 1)
  expect_true(all(c(
    "name_common", "name_official", "capital",
    "region", "subregion", "population", "area", "languages"
  ) %in% names(result)))
})

test_that("get_country_info() is case-insensitive for valid country names", {
  result1 <- get_country_info("Mexico")
  result2 <- get_country_info("mexico")
  expect_equal(result1, result2)
})

test_that("get_country_info() returns NULL and message for invalid country", {
  # "InvalidCountryNameXYZ" does not exist and should return NULL
  result <- get_country_info("InvalidCountryNameXYZ")
  expect_null(result)
})

test_that("get_country_info() handles missing input with an error", {
  expect_error(get_country_info(), "Please provide a valid country name")
})

test_that("get_country_info() handles non-character input with an error", {
  expect_error(get_country_info(123), "Please provide a valid country name")
})
