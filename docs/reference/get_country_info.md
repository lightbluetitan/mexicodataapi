# Get Key Country Information from the REST Countries API

Retrieves selected, essential information about Mexico or any other
country by its full name. The data is retrieved from the REST Countries
API. See the API documentation at <https://restcountries.com/>. Example
API usage: <https://restcountries.com/v3.1/name/mexico?fullText=true>.

## Usage

``` r
get_country_info(name)
```

## Arguments

- name:

  Full country name (common or official). For example: "Mexico", "Peru",
  "France".

## Value

A data frame with 8 columns:

- `name_common`: Common name of the country.

- `name_official`: Official name of the country.

- `capital`: Capital city.

- `region`: Geographic region.

- `subregion`: Subregion.

- `population`: Total population.

- `area`: Total area in square kilometers.

- `languages`: Official languages, separated by commas.

## Details

This function returns readable details such as the country's common and
official name, capital, region, subregion, population, area, and
official languages.

The function sends a GET request to the REST Countries API. If the
request is successful (HTTP 200), it parses the JSON and extracts the
key fields. If the country is not found or there's an error, the
function returns `NULL` with a user-friendly message.

## See also

[`GET`](https://httr.r-lib.org/reference/GET.html),
[`fromJSON`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html),
[`tibble`](https://tibble.tidyverse.org/reference/tibble.html)

## Examples

``` r
if (FALSE) { # \dontrun{
get_country_info("Mexico")
get_country_info("Japan")
get_country_info("France")
} # }
```
