# Get Mexico's Consumer Price Index (2010 = 100) from World Bank

Retrieves Mexico's Consumer Price Index (CPI) using 2010 as the base
year, for the years 2010 to 2022 from the World Bank Open Data API. The
indicator used is \`FP.CPI.TOTL\`.

## Usage

``` r
get_mexico_cpi()
```

## Value

A tibble with four columns:

- indicator:

  Indicator name (e.g., "Consumer price index (2010 = 100)")

- country:

  Country name ("Mexico")

- year:

  Year of the data (integer)

- value:

  Consumer Price Index value (numeric)

## Details

The function sends a GET request to the World Bank API. If the API
request fails or returns an error status code, the function returns
\`NULL\` with an informative message.

## Note

Requires internet connection. Data is retrieved in real time from the
World Bank API.

## See also

[`GET`](https://httr.r-lib.org/reference/GET.html),
[`fromJSON`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html),
[`as_tibble`](https://tibble.tidyverse.org/reference/as_tibble.html)

## Examples

``` r
if (interactive()) {
  get_mexico_cpi()
}
```
