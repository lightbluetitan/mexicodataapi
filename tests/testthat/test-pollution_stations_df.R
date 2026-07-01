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

# pollution_stations_df

library(testthat)

# Test 1: Confirm the object is a data frame
test_that("pollution_stations_df is a data frame", {
  expect_s3_class(pollution_stations_df, "data.frame")
})

# Test 2: Confirm it has exactly 7 columns
test_that("pollution_stations_df has 7 columns", {
  expect_equal(length(pollution_stations_df), 7)
})

# Test 3: Confirm it has exactly 70 rows
test_that("pollution_stations_df has 70 rows", {
  expect_equal(nrow(pollution_stations_df), 70)
})

# Test 4: Confirm column names are correct
test_that("pollution_stations_df has correct column names", {
  expect_named(pollution_stations_df, c(
    "station_code", "station_name", "lon", "lat", "altitude", "comment", "station_id"
  ))
})

# Test 5: Confirm column types are as expected
test_that("pollution_stations_df columns have correct types", {
  expect_type(pollution_stations_df$station_code, "character")
  expect_type(pollution_stations_df$station_name, "character")
  expect_type(pollution_stations_df$lon, "double")
  expect_type(pollution_stations_df$lat, "double")
  expect_type(pollution_stations_df$altitude, "integer")
  expect_type(pollution_stations_df$comment, "character")
  expect_type(pollution_stations_df$station_id, "double")
})
