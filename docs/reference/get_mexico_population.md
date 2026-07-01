# Get Mexico's Population (Total) from World Bank

Retrieves Mexico's total population for the years 2010 to 2022 using the
World Bank Open Data API. The indicator used is \`SP.POP.TOTL\`.

## Usage

``` r
get_mexico_population()
```

## Value

A tibble with the following columns:

- indicator:

  Indicator name (e.g., "Population, total")

- country:

  Country name ("Mexico")

- year:

  Year of the data (integer)

- value:

  Population as numeric value

- value_label:

  Formatted population value (e.g., "126,705,138")

## Details

The function sends a GET request to the World Bank API. If the request
fails or returns an error code, it will return \`NULL\` with an
informative message.

## Note

Requires internet connection. Data is retrieved in real time from the
World Bank API.

## See also

[GET](https://httr.r-lib.org/reference/GET.html),
[fromJSON](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html),
[as_tibble](https://tibble.tidyverse.org/reference/as_tibble.html),
[comma](https://scales.r-lib.org/reference/comma.html)

## Examples

``` r
if (interactive()) {
  get_mexico_population()
}
```
