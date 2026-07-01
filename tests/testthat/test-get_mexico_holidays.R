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

# get_mexico_holidays


library(testthat)

test_that("get_mexico_holidays() returns a tibble with correct structure", {
  result <- get_mexico_holidays(2025)

  # Check that the result is a tibble
  expect_s3_class(result, "tbl_df")

  # Check that it has the expected columns
  expect_named(result, c("date", "local_name", "name"))

  # Check that it is not empty
  expect_gt(nrow(result), 0)

  # Check column classes
  expect_s3_class(result$date, "Date")
  expect_type(result$local_name, "character")
  expect_type(result$name, "character")
})

test_that("get_mexico_holidays() returns consistent data for multiple years", {
  result_2024 <- get_mexico_holidays(2024)
  result_2025 <- get_mexico_holidays(2025)

  # Both should be tibbles
  expect_s3_class(result_2024, "tbl_df")
  expect_s3_class(result_2025, "tbl_df")

  # They should have the same columns
  expect_identical(names(result_2024), names(result_2025))

  # Both should contain at least one holiday
  expect_gt(nrow(result_2024), 0)
  expect_gt(nrow(result_2025), 0)
})
