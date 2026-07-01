# Mexican States Demographics (2020)

This dataset, mexico_states_df, is a data frame containing population
estimates and demographic indicators for all 32 Mexican states in the
year 2020. It includes total population, gender-specific counts, and the
number of people who self-identify as Afro-Mexican or speak an
indigenous language.

## Usage

``` r
data(mexico_states_df)
```

## Format

A data frame with 32 observations and 11 variables:

- region:

  Geographic region of the state (character)

- state_name:

  State name (character)

- state_name_official:

  Official state name (character)

- state_abbr:

  State abbreviation (character)

- state_abbr_official:

  Official state abbreviation (character)

- year:

  Year of the data (numeric)

- pop:

  Total population (integer)

- pop_male:

  Male population (integer)

- pop_female:

  Female population (integer)

- afromexican:

  Number of people who identify as Afro-Mexican (integer)

- indigenous_language:

  Number of people who speak an indigenous language (integer)

## Source

Data taken from the MexBrewer package version 0.0.2

## Details

The dataset name has been kept as 'mexico_states_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the MexicoDataAPI package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a data frame. The original content
has not been modified in any way.
