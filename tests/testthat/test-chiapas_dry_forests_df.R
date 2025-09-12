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

# chiapas_dry_forests_df


library(testthat)

# Test 1: Confirm the object is a data frame
test_that("chiapas_dry_forests_df is a data frame", {
  expect_s3_class(chiapas_dry_forests_df, "data.frame")
})

# Test 2: Confirm it has exactly 2 columns
test_that("chiapas_dry_forests_df has 2 columns", {
  expect_equal(length(chiapas_dry_forests_df), 2)
})

# Test 3: Confirm it has exactly 96 rows
test_that("chiapas_dry_forests_df has 96 rows", {
  expect_equal(nrow(chiapas_dry_forests_df), 96)
})

# Test 4: Confirm column names are correct
test_that("chiapas_dry_forests_df has correct column names", {
  expect_named(chiapas_dry_forests_df, c("richness", "ndvi"))
})

# Test 5: Confirm column types are correct
test_that("chiapas_dry_forests_df columns have correct types", {
  expect_type(chiapas_dry_forests_df$richness, "integer")
  expect_type(chiapas_dry_forests_df$ndvi, "double")
})









