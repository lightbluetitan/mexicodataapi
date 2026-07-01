# View Available Datasets in MexicoDataAPI

This function lists all datasets available in the 'MexicoDataAPI'
package. If the 'MexicoDataAPI' package is not loaded, it stops and
shows an error message. If no datasets are available, it returns a
message and an empty vector.

## Usage

``` r
view_datasets_MexicoDataAPI()
```

## Value

A character vector with the names of the available datasets. If no
datasets are found, it returns an empty character vector.

## Examples

``` r
if (requireNamespace("MexicoDataAPI", quietly = TRUE)) {
  library(MexicoDataAPI)
  view_datasets_MexicoDataAPI()
}
#> Datasets available in the 'MexicoDataAPI' package:
#> [1] "chiapas_dry_forests_df" "mex_income_2008_tbl_df" "mex_income_2016_tbl_df"
#> [4] "mexico_abb_chr"         "mexico_elections_df"    "mexico_states_df"      
#> [7] "pollution_stations_df"  "pollution_zones_df"     "stations_sinaica_df"   
```
