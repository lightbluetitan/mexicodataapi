# Get Country Information for Mexico

Retrieves comprehensive country information for Mexico from the REST
Countries API. This function fetches data including official and common
names, geographical information, capital, area, population, and
languages.

## Usage

``` r
get_country_info_mx()
```

## Value

A tibble with one row containing Mexico's country information:

- name_common:

  Common name of the country

- name_official:

  Official name of the country

- region:

  Geographic region

- subregion:

  Geographic subregion

- capital:

  Capital city(ies)

- area:

  Total area in square kilometers

- population:

  Total population

- languages:

  Languages spoken (comma-separated)

## Details

This function makes a request to the REST Countries API v3.1 endpoint
specifically for Mexico using full text search. It handles API errors
gracefully and returns NULL if the request fails or no data is found.

## Examples

``` r
# \donttest{
# Get Mexico information
mx_info <- get_country_info_mx()
print(mx_info)
#> # A tibble: 1 × 8
#>   name_common name_official region subregion capital   area population languages
#>   <chr>       <chr>         <chr>  <chr>     <chr>    <dbl>      <int> <chr>    
#> 1 Mexico      United Mexic… Ameri… North Am… Mexico… 1.96e6  128932753 Spanish  
# }
```
