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

# utils.R


utils::globalVariables(c(


  # Variables of the get_country_info_mx function
  "name_common", "name_official", "region", "subregion", "capital", "area", "population", "languages",

  # Variables of the get_mexico_cpi function

  "indicator","country","year","value",

  # Variables of the get_mexico_gdp function

  "indicator","country","year","value","value_label",

  # Variables of the get_mexico_life_expectancy function
  "indicator","country","year","value",

  # Variables of the get_mexico_literacy_rate function
  "indicator","country","year","value",

  # Variables of the get_mexico_population function
  "indicator","country","year","value","value_label",

  # Variables of the get_mexico_unemployment function
  "indicator","country","year","value",

  # Variables of the get_mexico_holidays function
  "date","local_name","name"



))

utils::globalVariables(c("data"))
