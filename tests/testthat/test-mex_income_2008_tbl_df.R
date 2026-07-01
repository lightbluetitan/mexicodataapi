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

# mex_income_2008_tbl_df

library(testthat)

# Test 1: Confirm the object is a tibble (tbl_df), which is also a data.frame
test_that("mex_income_2008_tbl_df is a tibble and data.frame", {
  expect_s3_class(mex_income_2008_tbl_df, "tbl_df")
  expect_s3_class(mex_income_2008_tbl_df, "data.frame")
})

# Test 2: Confirm it has exactly 8 columns
test_that("mex_income_2008_tbl_df has 8 columns", {
  expect_equal(length(mex_income_2008_tbl_df), 8)
})

# Test 3: Confirm it has exactly 5000 rows
test_that("mex_income_2008_tbl_df has 5000 rows", {
  expect_equal(nrow(mex_income_2008_tbl_df), 5000)
})

# Test 4: Confirm column names are correct
test_that("mex_income_2008_tbl_df has correct column names", {
  expect_named(mex_income_2008_tbl_df, c(
    "hh_number", "factor", "income", "hh_structure",
    "education", "domicile_size", "age", "age_cat"
  ))
})

# Test 5: Confirm column types are as expected
test_that("mex_income_2008_tbl_df columns have correct types", {
  expect_type(mex_income_2008_tbl_df$hh_number, "character")
  expect_type(mex_income_2008_tbl_df$factor, "integer")
  expect_type(mex_income_2008_tbl_df$income, "double")
  expect_s3_class(mex_income_2008_tbl_df$hh_structure, "factor")
  expect_s3_class(mex_income_2008_tbl_df$education, "factor")
  expect_s3_class(mex_income_2008_tbl_df$domicile_size, "factor")
  expect_type(mex_income_2008_tbl_df$age, "integer")
  expect_s3_class(mex_income_2008_tbl_df$age_cat, "factor")
})
