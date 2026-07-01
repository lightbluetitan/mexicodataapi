# Mexican Income Data (2016)

This dataset, mex_income_2016_tbl_df, is a tibble containing
household-level income data and associated demographic characteristics
from the 2016 ENIGH (Household Income and Expenditure Survey) in Mexico.
The dataset includes 5,000 observations and 8 variables, covering
household number, income, household composition, education, domicile
size, and age categories.

## Usage

``` r
data(mex_income_2016_tbl_df)
```

## Format

A tibble with 5,000 observations and 8 variables:

- hh_number:

  Household ID (character)

- factor:

  Expansion factor (integer)

- income:

  Household income (numeric)

- hh_structure:

  Household structure (factor with 5 levels)

- education:

  Education level of household members (factor with 11 levels)

- domicile_size:

  Size of domicile (factor with 4 levels)

- age:

  Age of household head (integer)

- age_cat:

  Categorical age group (factor with 7 levels)

## Source

Data taken from the dineq package version 0.1.0

## Details

The dataset name has been kept as 'mex_income_2016_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the MexicoDataAPI package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is a tibble data frame. The original
content has not been modified in any way.
