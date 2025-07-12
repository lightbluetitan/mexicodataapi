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

#' Air Quality Measuring Stations in Mexico (SINAICA)
#'
#' This dataset, stations_sinaica_df, is a data frame containing information about air quality monitoring
#' stations that report to the National Air Quality Information System (SINAICA) in Mexico.
#' The dataset includes 365 observations and 26 variables, providing metadata on station identifiers,
#' geolocation, network affiliations, operational status, and other attributes such as video links and validation dates.
#'
#' The dataset name has been kept as 'stations_sinaica_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name stations_sinaica_df
#' @format A data frame with 365 observations and 26 variables:
#' \describe{
#'   \item{station_id}{Station identifier (integer)}
#'   \item{station_name}{Name of the station (character)}
#'   \item{station_code}{Code of the station (character)}
#'   \item{network_id}{Identifier of the network (integer)}
#'   \item{network_name}{Name of the network (character)}
#'   \item{network_code}{Code of the network (character)}
#'   \item{street}{Street address (character)}
#'   \item{ext}{External number (character)}
#'   \item{interior}{Interior number (character)}
#'   \item{colonia}{Colonia (neighborhood) name (character)}
#'   \item{zip}{Postal code (character)}
#'   \item{state_code}{State code (integer)}
#'   \item{municipio_code}{Municipality code (integer)}
#'   \item{year_started}{Year the station began operation (integer)}
#'   \item{altitude}{Altitude of the station in meters (integer)}
#'   \item{address}{Full address of the station (character)}
#'   \item{date_validated}{Validation date (character)}
#'   \item{date_validated2}{Second validation date (character)}
#'   \item{passed_validation}{Indicates if the station passed validation (integer)}
#'   \item{video}{Video URL or link (character)}
#'   \item{lat}{Latitude (numeric)}
#'   \item{lon}{Longitude (numeric)}
#'   \item{date_started}{Date the station started operation (character)}
#'   \item{timezone}{Timezone of the station (character)}
#'   \item{street_view}{Street view URL or link (character)}
#'   \item{video_interior}{Interior video URL or link (character)}
#' }
#' @source Data taken from the rsinaica package version 1.1.0
#' @usage data(stations_sinaica_df)
#' @export
load("data/stations_sinaica_df.rda")
NULL


#' 2012 Mexico Elections Panel Study
#'
#' This dataset, mexico_elections_df, is a data frame containing a subset of the 2012 Mexico Elections Panel Study.
#' The dataset includes 1004 observations and 25 variables, covering demographics, political preferences,
#' and attitudes toward electoral processes. It provides valuable insights into voter behavior and perceptions
#' during the 2012 federal elections in Mexico.
#'
#' The dataset name has been kept as 'mexico_elections_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name mexico_elections_df
#' @format A data frame with 1004 observations and 25 variables:
#' \describe{
#'   \item{mex.t}{Wave number (integer)}
#'   \item{mex.male}{Gender: 1 = Male, 0 = Female (integer)}
#'   \item{mex.age}{Age of respondent (numeric)}
#'   \item{mex.education}{Level of education (integer)}
#'   \item{mex.y.all}{Year variable (integer)}
#'   \item{mex.vote}{Vote intention or behavior (integer)}
#'   \item{mex.age2}{Age squared (numeric)}
#'   \item{mex.interest}{Interest in politics (integer)}
#'   \item{mex.married}{Marital status (integer)}
#'   \item{mex.pidpanw2}{Partisan ID: PAN (integer)}
#'   \item{mex.pidprdw2}{Partisan ID: PRD (integer)}
#'   \item{mex.pidpriw2}{Partisan ID: PRI (integer)}
#'   \item{mex.votecard}{Possession of voting card (integer)}
#'   \item{mex.urban}{Urban residence indicator (integer)}
#'   \item{mex.cleanelections}{Perception of clean elections (integer)}
#'   \item{mex.metro}{Lives in metropolitan area (integer)}
#'   \item{mex.centralregion}{Lives in central region (integer)}
#'   \item{mex.northregion}{Lives in northern region (integer)}
#'   \item{mex.wealth}{Wealth index (numeric)}
#'   \item{mex.epnapprove}{Approval of electoral authority (integer)}
#'   \item{mex.havepropoganda}{Received political propaganda (integer)}
#'   \item{mex.concurrent}{Concurrent elections indicator (integer)}
#'   \item{mex.cleanelectionsmiss}{Missing response for clean elections question (integer)}
#'   \item{mex.loyal}{Party loyalty (integer)}
#'   \item{mex.direct}{Direct benefit from party/government (integer)}
#' }
#' @source Data taken from the list package version 9.2.6
#' @usage data(mexico_elections_df)
#' @export
load("data/mexico_elections_df.rda")
NULL



#' Postal Abbreviations for Mexico
#'
#' This dataset, mexico_abb_chr, is a character vector containing the official two- or three-letter
#' postal abbreviations for the 32 federal entities of Mexico. These abbreviations are commonly used in
#' maps, postal services, and statistical reports.
#'
#' The dataset name has been kept as mexico_abb_chr to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix chr indicates that the dataset is a character vector. The original content has not been modified
#' in any way.
#'
#' @name mexico_abb_chr
#' @format A character vector with 32 elements:
#' \describe{
#'   \item{mexico_abb_chr}{Character vector of 32 postal abbreviations (e.g., "AGU", "BCN", "DIF")}
#' }
#' @source Data taken from the minimap package version 0.1.0
#' @usage data(mexico_abb_chr)
#' @export
load("data/mexico_abb_chr.rda")
NULL


#' Pollution Measuring Stations in Mexico City
#'
#' This dataset, pollution_stations_df, is a data frame containing information about pollution measuring stations
#' located in Mexico City. Each record corresponds to a station, including geographic coordinates and elevation.
#' The station with code SS1 was manually added due to its absence in the original dataset; its location was
#' identified through the Audit of Ambient Air Monitoring Stations for the Sistema de Monitoreo Atmosférico
#' de la Ciudad de México.
#'
#' The dataset name has been kept as 'pollution_stations_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name pollution_stations_df
#' @format A data frame with 70 observations and 7 variables:
#' \describe{
#'   \item{station_code}{Station identifier code (character)}
#'   \item{station_name}{Name of the pollution station (character)}
#'   \item{lon}{Longitude (numeric)}
#'   \item{lat}{Latitude (numeric)}
#'   \item{altitude}{Elevation above sea level in meters (integer)}
#'   \item{comment}{Comments or notes (character)}
#'   \item{station_id}{Numerical ID used for internal reference (numeric)}
#' }
#' @source Data taken from the aire.zmvm package version 1.0.0
#' @usage data(pollution_stations_df)
#' @export
load("data/pollution_stations_df.rda")
NULL



#' Pollution Zones in Mexico City
#'
#' This dataset, pollution_zones_df, is a data frame containing the municipios (counties) that compose the
#' five geographic zones into which Mexico City was divided for the purpose of disseminating information
#' about the IMECA (Índice Metropolitano de la Calidad del Aire).
#'
#' The dataset name has been kept as pollution_zones_df to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name pollution_zones_df
#' @format A data frame with 36 observations and 6 variables:
#' \describe{
#'   \item{region}{Geographic region (character)}
#'   \item{state_code}{State code (character)}
#'   \item{state_abbr}{State abbreviation (character)}
#'   \item{municipio_code}{Municipality code (character)}
#'   \item{municipio_name}{Municipality name (character)}
#'   \item{zone}{Air quality zone designation (character)}
#' }
#' @source Data taken from the aire.zmvm package version 1.0.0
#' @usage data(pollution_zones_df)
#' @export
load("data/pollution_zones_df.rda")
NULL


#' Mexican States Demographics (2020)
#'
#' This dataset, mexico_states_df, is a data frame containing population estimates and demographic indicators
#' for all 32 Mexican states in the year 2020. It includes total population, gender-specific counts, and
#' the number of people who self-identify as Afro-Mexican or speak an indigenous language.
#'
#' The dataset name has been kept as 'mexico_states_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name mexico_states_df
#' @format A data frame with 32 observations and 11 variables:
#' \describe{
#'   \item{region}{Geographic region of the state (character)}
#'   \item{state_name}{State name (character)}
#'   \item{state_name_official}{Official state name (character)}
#'   \item{state_abbr}{State abbreviation (character)}
#'   \item{state_abbr_official}{Official state abbreviation (character)}
#'   \item{year}{Year of the data (numeric)}
#'   \item{pop}{Total population (integer)}
#'   \item{pop_male}{Male population (integer)}
#'   \item{pop_female}{Female population (integer)}
#'   \item{afromexican}{Number of people who identify as Afro-Mexican (integer)}
#'   \item{indigenous_language}{Number of people who speak an indigenous language (integer)}
#' }
#' @source Data taken from the MexBrewer package version 0.0.2
#' @usage data(mexico_states_df)
#' @export
load("data/mexico_states_df.rda")
NULL



#' Productivity in Chiapas Dry Forests
#'
#' This dataset, chiapas_dry_forests_df, is a data frame containing data on species richness and
#' vegetation productivity (measured via NDVI) in the dry forests of Chiapas, Mexico. It includes
#' 96 observations and 2 variables. These indicators are often used in ecological and environmental
#' analyses to assess biodiversity and landscape productivity.
#'
#' The dataset name has been kept as 'chiapas_dry_forests_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name chiapas_dry_forests_df
#' @format A data frame with 96 observations and 2 variables:
#' \describe{
#'   \item{richness}{Species richness (integer)}
#'   \item{ndvi}{Normalized Difference Vegetation Index (NDVI), a measure of vegetation productivity (numeric)}
#' }
#' @source Data taken from the ADER package version 1.5
#' @usage data(chiapas_dry_forests_df)
#' @export
load("data/chiapas_dry_forests_df.rda")
NULL


#' Mexican Income Data (2008)
#'
#' This dataset, mex_income_2008_tbl_df, is a tibble containing household-level income data and
#' associated demographic characteristics from the 2008 ENIGH (Household Income and Expenditure Survey)
#' in Mexico. The dataset includes 5,000 observations and 8 variables, covering household number,
#' income, household composition, education, domicile size, and age categories.
#'
#' The dataset name has been kept as 'mex_income_2008_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble data frame. The original content has not been modified
#' in any way.
#'
#' @name mex_income_2008_tbl_df
#' @format A tibble with 5,000 observations and 8 variables:
#' \describe{
#'   \item{hh_number}{Household ID (character)}
#'   \item{factor}{Expansion factor (integer)}
#'   \item{income}{Household income (numeric)}
#'   \item{hh_structure}{Household structure (factor with 5 levels)}
#'   \item{education}{Education level of household members (factor with 11 levels)}
#'   \item{domicile_size}{Size of domicile (factor with 4 levels)}
#'   \item{age}{Age of household head (integer)}
#'   \item{age_cat}{Categorical age group (factor with 7 levels)}
#' }
#' @source Data taken from the dineq package version 0.1.0
#' @usage data(mex_income_2008_tbl_df)
#' @export
load("data/mex_income_2008_tbl_df.rda")
NULL


#' Mexican Income Data (2016)
#'
#' This dataset, mex_income_2016_tbl_df, is a tibble containing household-level income data and
#' associated demographic characteristics from the 2016 ENIGH (Household Income and Expenditure Survey)
#' in Mexico. The dataset includes 5,000 observations and 8 variables, covering household number,
#' income, household composition, education, domicile size, and age categories.
#'
#' The dataset name has been kept as 'mex_income_2016_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' MexicoDataAPI package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble data frame. The original content has not been modified
#' in any way.
#'
#' @name mex_income_2016_tbl_df
#' @format A tibble with 5,000 observations and 8 variables:
#' \describe{
#'   \item{hh_number}{Household ID (character)}
#'   \item{factor}{Expansion factor (integer)}
#'   \item{income}{Household income (numeric)}
#'   \item{hh_structure}{Household structure (factor with 5 levels)}
#'   \item{education}{Education level of household members (factor with 11 levels)}
#'   \item{domicile_size}{Size of domicile (factor with 4 levels)}
#'   \item{age}{Age of household head (integer)}
#'   \item{age_cat}{Categorical age group (factor with 7 levels)}
#' }
#' @source Data taken from the dineq package version 0.1.0
#' @usage data(mex_income_2016_tbl_df)
#' @export
load("data/mex_income_2016_tbl_df.rda")
NULL












