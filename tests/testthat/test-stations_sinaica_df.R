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

# stations_sinaica_df


library(testthat)

# Test 1: Confirm the object is a data frame
test_that("stations_sinaica_df is a data frame", {
  expect_s3_class(stations_sinaica_df, "data.frame")
})

# Test 2: Confirm it has exactly 26 columns
test_that("stations_sinaica_df has 26 columns", {
  expect_equal(length(stations_sinaica_df), 26)
})

# Test 3: Confirm it has exactly 365 rows
test_that("stations_sinaica_df has 365 rows", {
  expect_equal(nrow(stations_sinaica_df), 365)
})

# Test 4: Confirm column names are correct
test_that("stations_sinaica_df has correct column names", {
  expect_named(stations_sinaica_df, c(
    "station_id", "station_name", "station_code", "network_id", "network_name",
    "network_code", "street", "ext", "interior", "colonia",
    "zip", "state_code", "municipio_code", "year_started", "altitude",
    "address", "date_validated", "date_validated2", "passed_validation", "video",
    "lat", "lon", "date_started", "timezone", "street_view", "video_interior"
  ))
})

# Test 5: Confirm column types are as expected
test_that("stations_sinaica_df columns have correct types", {
  expect_type(stations_sinaica_df$station_id, "integer")
  expect_type(stations_sinaica_df$station_name, "character")
  expect_type(stations_sinaica_df$station_code, "character")
  expect_type(stations_sinaica_df$network_id, "integer")
  expect_type(stations_sinaica_df$network_name, "character")
  expect_type(stations_sinaica_df$network_code, "character")
  expect_type(stations_sinaica_df$street, "character")
  expect_type(stations_sinaica_df$ext, "character")
  expect_type(stations_sinaica_df$interior, "character")
  expect_type(stations_sinaica_df$colonia, "character")
  expect_type(stations_sinaica_df$zip, "character")
  expect_type(stations_sinaica_df$state_code, "integer")
  expect_type(stations_sinaica_df$municipio_code, "integer")
  expect_type(stations_sinaica_df$year_started, "integer")
  expect_type(stations_sinaica_df$altitude, "integer")
  expect_type(stations_sinaica_df$address, "character")
  expect_type(stations_sinaica_df$date_validated, "character")
  expect_type(stations_sinaica_df$date_validated2, "character")
  expect_type(stations_sinaica_df$passed_validation, "integer")
  expect_type(stations_sinaica_df$video, "character")
  expect_type(stations_sinaica_df$lat, "double")
  expect_type(stations_sinaica_df$lon, "double")
  expect_type(stations_sinaica_df$date_started, "character")
  expect_type(stations_sinaica_df$timezone, "character")
  expect_type(stations_sinaica_df$street_view, "character")
  expect_type(stations_sinaica_df$video_interior, "character")
})
