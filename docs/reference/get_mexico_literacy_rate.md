# Get Mexico's Literacy Rate (Age 15+) from World Bank

This function retrieves Mexico's literacy rate for adults aged 15 and
above, expressed as a percentage, for the years 2010 to 2022 using the
World Bank Open Data API. The indicator used is `SE.ADT.LITR.ZS`.

## Usage

``` r
get_mexico_literacy_rate()
```

## Value

A tibble with the following columns:

- `indicator`: Indicator name (e.g., "Literacy rate, adult total (

- `country`: Country name ("Mexico").

- `year`: Year of the data.

- `value`: Literacy rate (numeric percentage).

## Note

Some years may return missing values (\`NA\`) due to lack of official
data reported to the World Bank. Requires internet connection. The
function pulls data in real time from the World Bank API.

## See also

[`GET`](https://httr.r-lib.org/reference/GET.html),
[`fromJSON`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html),
[`as_tibble`](https://tibble.tidyverse.org/reference/as_tibble.html)

## Examples

``` r
if (FALSE) { # \dontrun{
get_mexico_literacy_rate()
} # }
```
