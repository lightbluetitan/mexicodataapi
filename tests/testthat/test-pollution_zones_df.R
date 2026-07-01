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

# pollution_zones_df

library(testthat)

# Test 1: Confirm the object is a data frame
test_that("pollution_zones_df is a data frame", {
  expect_s3_class(pollution_zones_df, "data.frame")
})

# Test 2: Confirm it has exactly 6 columns
test_that("pollution_zones_df has 6 columns", {
  expect_equal(length(pollution_zones_df), 6)
})

# Test 3: Confirm it has exactly 36 rows
test_that("pollution_zones_df has 36 rows", {
  expect_equal(nrow(pollution_zones_df), 36)
})

# Test 4: Confirm column names are correct
test_that("pollution_zones_df has correct column names", {
  expect_named(pollution_zones_df, c(
    "region", "state_code", "state_abbr",
    "municipio_code", "municipio_name", "zone"
  ))
})

# Test 5: Confirm all columns are character type
test_that("pollution_zones_df columns have correct types", {
  expect_type(pollution_zones_df$region, "character")
  expect_type(pollution_zones_df$state_code, "character")
  expect_type(pollution_zones_df$state_abbr, "character")
  expect_type(pollution_zones_df$municipio_code, "character")
  expect_type(pollution_zones_df$municipio_name, "character")
  expect_type(pollution_zones_df$zone, "character")
})
