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

# mexico_abb_chr

library(testthat)

# Test 1: Confirm the object is of type character
test_that("mexico_abb_chr is a character vector", {
  expect_type(mexico_abb_chr, "character")
})

# Test 2: Confirm it has 32 elements
test_that("mexico_abb_chr has 32 elements", {
  expect_length(mexico_abb_chr, 32)
})

# Test 3: Confirm all elements are either valid strings or NA
test_that("mexico_abb_chr contains only characters or NA", {
  expect_true(all(is.na(mexico_abb_chr) | is.character(mexico_abb_chr)))
})

# Test 4: Confirm it is not a data frame or tibble
test_that("mexico_abb_chr is not a data.frame or tibble", {
  expect_false(inherits(mexico_abb_chr, "data.frame"))
  expect_false(inherits(mexico_abb_chr, "tbl_df"))
})

# Test 5: Confirm all elements have exactly 3 characters (excluding NA)
test_that("All abbreviations have exactly 3 characters", {
  expect_true(all(nchar(na.omit(mexico_abb_chr)) == 3))
})

