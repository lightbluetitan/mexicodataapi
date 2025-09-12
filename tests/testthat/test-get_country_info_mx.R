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

# get_country_info_mx


library(testthat)

test_that("get_country_info_mx() returns a tibble with correct structure", {
  result <- get_country_info_mx()

  expect_s3_class(result, "tbl_df")
  expect_equal(nrow(result), 1)
  expect_named(
    result,
    c("name_common", "name_official", "region", "subregion",
      "capital", "area", "population", "languages")
  )

  expect_type(result$name_common, "character")
  expect_type(result$name_official, "character")
  expect_type(result$region, "character")
  expect_type(result$subregion, "character")
  expect_type(result$capital, "character")
  expect_true(is.numeric(result$area))
  expect_true(is.numeric(result$population))
  expect_type(result$languages, "character")
})

test_that("get_country_info_mx() returns data for Mexico", {
  result <- get_country_info_mx()

  expect_equal(result$name_common, "Mexico")
  expect_equal(result$capital, "Mexico City")
  expect_equal(result$region, "Americas")
  expect_equal(result$subregion, "North America")
})


