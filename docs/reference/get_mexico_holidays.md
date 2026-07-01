# Get Official Public Holidays in Mexico for a Given Year

Retrieves the list of official public holidays in Mexico for a specific
year using the Nager.Date public holidays API. This function returns a
tibble containing the date of the holiday, the name in the local
language (Spanish), and the English name. It is useful for academic,
planning, and data analysis purposes. The information is retrieved
directly from the Nager.Date API and reflects the current status of
holidays for the requested year. The field names returned are consistent
with the API structure.

## Usage

``` r
get_mexico_holidays(year)
```

## Source

Data obtained from the Nager.Date API: <https://date.nager.at/>

## Arguments

- year:

  An integer indicating the year (e.g., 2024 or 2025).

## Value

A tibble with the following columns:

- `date`: Date of the holiday (class `Date`)

- `local_name`: Holiday name in the local language (Spanish)

- `name`: Holiday name in English

## Examples

``` r
get_mexico_holidays(2024)
#> # A tibble: 10 × 3
#>    date       local_name                              name                    
#>    <date>     <chr>                                   <chr>                   
#>  1 2024-01-01 Año Nuevo                               New Year's Day          
#>  2 2024-02-05 Día de la Constitución                  Constitution Day        
#>  3 2024-03-18 Natalicio de Benito Juárez              Benito Juárez's birthday
#>  4 2024-03-28 Jueves Santo                            Maundy Thursday         
#>  5 2024-03-29 Viernes Santo                           Good Friday             
#>  6 2024-05-01 Día del Trabajo                         Labour Day              
#>  7 2024-09-16 Día de la Independencia                 Independence Day        
#>  8 2024-10-01 Transmisión del Poder Ejecutivo Federal Inauguration Day        
#>  9 2024-11-18 Día de la Revolución                    Revolution Day          
#> 10 2024-12-25 Navidad                                 Christmas Day           
get_mexico_holidays(2025)
#> # A tibble: 9 × 3
#>   date       local_name                 name                    
#>   <date>     <chr>                      <chr>                   
#> 1 2025-01-01 Año Nuevo                  New Year's Day          
#> 2 2025-02-03 Día de la Constitución     Constitution Day        
#> 3 2025-03-17 Natalicio de Benito Juárez Benito Juárez's birthday
#> 4 2025-04-17 Jueves Santo               Maundy Thursday         
#> 5 2025-04-18 Viernes Santo              Good Friday             
#> 6 2025-05-01 Día del Trabajo            Labour Day              
#> 7 2025-09-16 Día de la Independencia    Independence Day        
#> 8 2025-11-17 Día de la Revolución       Revolution Day          
#> 9 2025-12-25 Navidad                    Christmas Day           
```
