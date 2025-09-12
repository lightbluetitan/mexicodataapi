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

# view_datasets_MexicoDataAPI

library(testthat)
library(MexicoDataAPI)

test_that("view_datasets_MexicoDataAPI works when package is loaded", {
  result <- view_datasets_MexicoDataAPI()
  expect_type(result, "character")
  expect_true(length(result) > 0)
})

test_that("view_datasets_MexicoDataAPI prints correct message", {
  output <- capture_messages(view_datasets_MexicoDataAPI())
  expect_match(
    output[1],
    "Datasets available in the 'MexicoDataAPI' package:",
    fixed = TRUE
  )
})

test_that("view_datasets_MexicoDataAPI returns expected datasets", {
  datasets <- view_datasets_MexicoDataAPI()
  expected_datasets <- c(
    "chiapas_dry_forests_df",
    "mex_income_2008_tbl_df",
    "mex_income_2016_tbl_df",
    "mexico_abb_chr",
    "mexico_elections_df",
    "mexico_states_df",
    "pollution_stations_df",
    "pollution_zones_df",
    "stations_sinaica_df"


  )
  # Check if all expected datasets are present
  missing_datasets <- setdiff(expected_datasets, datasets)
  expect_true(
    length(missing_datasets) == 0,
    info = paste("Missing datasets:", paste(missing_datasets, collapse = ", "))
  )
})
