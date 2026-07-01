# Air Quality Measuring Stations in Mexico (SINAICA)

This dataset, stations_sinaica_df, is a data frame containing
information about air quality monitoring stations that report to the
National Air Quality Information System (SINAICA) in Mexico. The dataset
includes 365 observations and 26 variables, providing metadata on
station identifiers, geolocation, network affiliations, operational
status, and other attributes such as video links and validation dates.

## Usage

``` r
data(stations_sinaica_df)
```

## Format

A data frame with 365 observations and 26 variables:

- station_id:

  Station identifier (integer)

- station_name:

  Name of the station (character)

- station_code:

  Code of the station (character)

- network_id:

  Identifier of the network (integer)

- network_name:

  Name of the network (character)

- network_code:

  Code of the network (character)

- street:

  Street address (character)

- ext:

  External number (character)

- interior:

  Interior number (character)

- colonia:

  Colonia (neighborhood) name (character)

- zip:

  Postal code (character)

- state_code:

  State code (integer)

- municipio_code:

  Municipality code (integer)

- year_started:

  Year the station began operation (integer)

- altitude:

  Altitude of the station in meters (integer)

- address:

  Full address of the station (character)

- date_validated:

  Validation date (character)

- date_validated2:

  Second validation date (character)

- passed_validation:

  Indicates if the station passed validation (integer)

- video:

  Video URL or link (character)

- lat:

  Latitude (numeric)

- lon:

  Longitude (numeric)

- date_started:

  Date the station started operation (character)

- timezone:

  Timezone of the station (character)

- street_view:

  Street view URL or link (character)

- video_interior:

  Interior video URL or link (character)

## Source

Data taken from the rsinaica package version 1.1.0

## Details

The dataset name has been kept as 'stations_sinaica_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the MexicoDataAPI package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a data frame. The original content
has not been modified in any way.
