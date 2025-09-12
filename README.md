# MexicoDataAPI

The `MexicoDataAPI` package provides a unified interface to access open data from the **World Bank API**, **REST Countries API**, and **Nager.Date API**, with a focus on Mexico. It allows users to retrieve up-to-date information on topics such as economic indicators, population figures, literacy rates, unemployment levels, basic geopolitical information, and official public holidays.

In addition to API-access functions, the package includes a set of curated datasets related to **Mexico**. These cover areas such as air quality monitoring, state-level income surveys, postal abbreviations, election results, and regional forest classification.

## Installation

You can install the `MexicoDataAPI` package from CRAN with the following R function:

```R

install.packages("MexicoDataAPI")

```


## Usage

After installation, load the package and start exploring and using its functions and datasets.

```R

library(MexicoDataAPI)

```

### MexicoDataAPI Functions

- `get_country_info_mx()`: Get Key Country Information about Mexico from the REST Countries API

- `get_mexico_cpi()`: Get Mexico's Consumer Price Index (2010 = 100) from World Bank  

- `get_mexico_gdp()`: Get Mexico's GDP (Current US$) from World Bank 

- `get_mexico_holidays()`: Get official public holidays in Mexico for a given year, e.g., `get_mexico_holidays(2025)`. 

- `get_mexico_life_expectancy()`: Get Mexico's Life Expectancy from World Bank 

- `get_mexico_literacy_rate()`: Get Mexico's Literacy Rate (Age 15+) from World Bank 

- `get_mexico_population()`: Get Mexico's Population (Total) from World Bank 

- `get_mexico_unemployment()`: Get Mexico's Unemployment Rate (%) from World Bank 

- `view_datasets_MexicoDataAPI()`: Lists all curated datasets included in the `MexicoDataAPI` package


## Dataset Suffixes

Each dataset in `MexicoDataAPI` is labeled with a *suffix* to indicate its structure and type:

- `_df`: A standard data frame.

- `_tbl_df`: A tibble data frame object.

- `_chr`: A character object.


## Datasets Included in MexicoDataAPI

In addition to API access functions, `MexicoDataAPI` provides several preloaded datasets related to Mexico’s environment, demographics, and public data. Here are some featured examples:

- `mexico_elections_df`: Data frame containing a subset of the 2012 Mexico Elections Panel Study.

- `mex_income_2016_tbl_df`: Tibble containing household-level income data and associated demographic characteristics from the 2016 ENIGH (Household Income and Expenditure Survey).

- `mexico_abb_chr`: Character vector containing the official two- or three-letter postal abbreviations for the 32 federal entities of Mexico.


## Example Code:

```R

# Load the package
library(MexicoDataAPI)

# Selected, essential information about Mexico
get_country_info_mx()

# Get Mexico's Population (Total) from World Bank
get_mexico_population()

# Load a dataset
data("mex_income_2016_tbl_df")

# Shows six rows of the dataset
head(mex_income_2016_tbl_df)

# Display the structure of the dataset
str(mex_income_2016_tbl_df)

# Shows the whole dataset

View(mex_income_2016_tbl_df)


```

