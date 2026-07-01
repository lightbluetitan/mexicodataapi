# 2012 Mexico Elections Panel Study

This dataset, mexico_elections_df, is a data frame containing a subset
of the 2012 Mexico Elections Panel Study. The dataset includes 1004
observations and 25 variables, covering demographics, political
preferences, and attitudes toward electoral processes. It provides
valuable insights into voter behavior and perceptions during the 2012
federal elections in Mexico.

## Usage

``` r
data(mexico_elections_df)
```

## Format

A data frame with 1004 observations and 25 variables:

- mex.t:

  Wave number (integer)

- mex.male:

  Gender: 1 = Male, 0 = Female (integer)

- mex.age:

  Age of respondent (numeric)

- mex.education:

  Level of education (integer)

- mex.y.all:

  Year variable (integer)

- mex.vote:

  Vote intention or behavior (integer)

- mex.age2:

  Age squared (numeric)

- mex.interest:

  Interest in politics (integer)

- mex.married:

  Marital status (integer)

- mex.pidpanw2:

  Partisan ID: PAN (integer)

- mex.pidprdw2:

  Partisan ID: PRD (integer)

- mex.pidpriw2:

  Partisan ID: PRI (integer)

- mex.votecard:

  Possession of voting card (integer)

- mex.urban:

  Urban residence indicator (integer)

- mex.cleanelections:

  Perception of clean elections (integer)

- mex.metro:

  Lives in metropolitan area (integer)

- mex.centralregion:

  Lives in central region (integer)

- mex.northregion:

  Lives in northern region (integer)

- mex.wealth:

  Wealth index (numeric)

- mex.epnapprove:

  Approval of electoral authority (integer)

- mex.havepropoganda:

  Received political propaganda (integer)

- mex.concurrent:

  Concurrent elections indicator (integer)

- mex.cleanelectionsmiss:

  Missing response for clean elections question (integer)

- mex.loyal:

  Party loyalty (integer)

- mex.direct:

  Direct benefit from party/government (integer)

## Source

Data taken from the list package version 9.2.6

## Details

The dataset name has been kept as 'mexico_elections_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the MexicoDataAPI package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a data frame. The original content
has not been modified in any way.
