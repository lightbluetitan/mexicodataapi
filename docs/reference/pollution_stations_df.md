# Pollution Measuring Stations in Mexico City

This dataset, pollution_stations_df, is a data frame containing
information about pollution measuring stations located in Mexico City.
Each record corresponds to a station, including geographic coordinates
and elevation. The station with code SS1 was manually added due to its
absence in the original dataset; its location was identified through the
Audit of Ambient Air Monitoring Stations for the Sistema de Monitoreo
Atmosférico de la Ciudad de México.

## Usage

``` r
data(pollution_stations_df)
```

## Format

A data frame with 70 observations and 7 variables:

- station_code:

  Station identifier code (character)

- station_name:

  Name of the pollution station (character)

- lon:

  Longitude (numeric)

- lat:

  Latitude (numeric)

- altitude:

  Elevation above sea level in meters (integer)

- comment:

  Comments or notes (character)

- station_id:

  Numerical ID used for internal reference (numeric)

## Source

Data taken from the aire.zmvm package version 1.0.0

## Details

The dataset name has been kept as 'pollution_stations_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the MexicoDataAPI package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a data frame. The original content
has not been modified in any way.
