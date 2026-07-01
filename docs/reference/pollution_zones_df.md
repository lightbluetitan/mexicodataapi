# Pollution Zones in Mexico City

This dataset, pollution_zones_df, is a data frame containing the
municipios (counties) that compose the five geographic zones into which
Mexico City was divided for the purpose of disseminating information
about the IMECA (Índice Metropolitano de la Calidad del Aire).

## Usage

``` r
data(pollution_zones_df)
```

## Format

A data frame with 36 observations and 6 variables:

- region:

  Geographic region (character)

- state_code:

  State code (character)

- state_abbr:

  State abbreviation (character)

- municipio_code:

  Municipality code (character)

- municipio_name:

  Municipality name (character)

- zone:

  Air quality zone designation (character)

## Source

Data taken from the aire.zmvm package version 1.0.0

## Details

The dataset name has been kept as pollution_zones_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the MexicoDataAPI package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a data frame. The original content
has not been modified in any way.
