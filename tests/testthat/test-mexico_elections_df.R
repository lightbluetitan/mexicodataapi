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

# mexico_elections_df

library(testthat)

# Test 1: Confirm it is a data frame
test_that("mexico_elections_df is a data frame", {
  expect_s3_class(mexico_elections_df, "data.frame")
})

# Test 2: Confirm it has 25 columns
test_that("mexico_elections_df has 25 columns", {
  expect_equal(length(mexico_elections_df), 25)
})

# Test 3: Confirm it has 1004 rows
test_that("mexico_elections_df has 1004 rows", {
  expect_equal(nrow(mexico_elections_df), 1004)
})

# Test 4: Confirm column names are correct
test_that("mexico_elections_df has correct column names", {
  expect_named(mexico_elections_df, c(
    "mex.t", "mex.male", "mex.age", "mex.education",
    "mex.y.all", "mex.vote", "mex.age2", "mex.interest",
    "mex.married", "mex.pidpanw2", "mex.pidprdw2", "mex.pidpriw2",
    "mex.votecard", "mex.urban", "mex.cleanelections", "mex.metro",
    "mex.centralregion", "mex.northregion", "mex.wealth", "mex.epnapprove",
    "mex.havepropoganda", "mex.concurrent", "mex.cleanelectionsmiss",
    "mex.loyal", "mex.direct"
  ))
})

# Test 5: Confirm column types are as expected
test_that("mexico_elections_df columns have correct types", {
  expect_type(mexico_elections_df$mex.t, "integer")
  expect_type(mexico_elections_df$mex.male, "integer")
  expect_type(mexico_elections_df$mex.age, "double")
  expect_type(mexico_elections_df$mex.education, "integer")
  expect_type(mexico_elections_df$mex.y.all, "integer")
  expect_type(mexico_elections_df$mex.vote, "integer")
  expect_type(mexico_elections_df$mex.age2, "double")
  expect_type(mexico_elections_df$mex.interest, "integer")
  expect_type(mexico_elections_df$mex.married, "integer")
  expect_type(mexico_elections_df$mex.pidpanw2, "integer")
  expect_type(mexico_elections_df$mex.pidprdw2, "integer")
  expect_type(mexico_elections_df$mex.pidpriw2, "integer")
  expect_type(mexico_elections_df$mex.votecard, "integer")
  expect_type(mexico_elections_df$mex.urban, "integer")
  expect_type(mexico_elections_df$mex.cleanelections, "integer")
  expect_type(mexico_elections_df$mex.metro, "integer")
  expect_type(mexico_elections_df$mex.centralregion, "integer")
  expect_type(mexico_elections_df$mex.northregion, "integer")
  expect_type(mexico_elections_df$mex.wealth, "double")
  expect_type(mexico_elections_df$mex.epnapprove, "integer")
  expect_type(mexico_elections_df$mex.havepropoganda, "integer")
  expect_type(mexico_elections_df$mex.concurrent, "integer")
  expect_type(mexico_elections_df$mex.cleanelectionsmiss, "integer")
  expect_type(mexico_elections_df$mex.loyal, "integer")
  expect_type(mexico_elections_df$mex.direct, "integer")
})
