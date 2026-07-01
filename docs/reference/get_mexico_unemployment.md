# Get Mexico's Unemployment Rate from World Bank

Retrieves Mexico's total unemployment rate as a percentage of the total
labor force from 2010 to 2022 using the World Bank Open Data API.

## Usage

``` r
get_mexico_unemployment()
```

## Value

A tibble with four columns: \`indicator\` (name of the indicator),
\`country\` (country name), \`year\` (year of observation), and
\`value\` (unemployment rate as a numeric percentage).

## Details

The function sends a GET request to the World Bank API. If the request
fails or returns a status other than 200, the function returns `NULL`
with an informative message.

## Note

This function requires an internet connection.

## See also

[GET](https://httr.r-lib.org/reference/GET.html),
[fromJSON](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html),
[as_tibble](https://tibble.tidyverse.org/reference/as_tibble.html)

## Examples

``` r
if (FALSE) { # \dontrun{
get_mexico_unemployment()
} # }
```
