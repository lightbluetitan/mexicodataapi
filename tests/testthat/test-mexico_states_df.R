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

# mexico_states_df

library(testthat)

# Test 1: Confirm object is a data frame
test_that("mexico_states_df is a data frame", {
  expect_s3_class(mexico_states_df, "data.frame")
})

# Test 2: Confirm it has 11 columns
test_that("mexico_states_df has 11 columns", {
  expect_equal(length(mexico_states_df), 11)
})

# Test 3: Confirm it has 32 rows
test_that("mexico_states_df has 32 rows", {
  expect_equal(nrow(mexico_states_df), 32)
})

# Test 4: Confirm column names are correct
test_that("mexico_states_df has correct column names", {
  expect_named(mexico_states_df, c(
    "region", "state_name", "state_name_official",
    "state_abbr", "state_abbr_official", "year",
    "pop", "pop_male", "pop_female",
    "afromexican", "indigenous_language"
  ))
})

# Test 5: Confirm column types are as expected
test_that("mexico_states_df columns have correct types", {
  expect_type(mexico_states_df$region, "character")
  expect_type(mexico_states_df$state_name, "character")
  expect_type(mexico_states_df$state_name_official, "character")
  expect_type(mexico_states_df$state_abbr, "character")
  expect_type(mexico_states_df$state_abbr_official, "character")
  expect_type(mexico_states_df$year, "double")
  expect_type(mexico_states_df$pop, "integer")
  expect_type(mexico_states_df$pop_male, "integer")
  expect_type(mexico_states_df$pop_female, "integer")
  expect_type(mexico_states_df$afromexican, "integer")
  expect_type(mexico_states_df$indigenous_language, "integer")
})
