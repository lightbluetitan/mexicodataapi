# MexicoDataAPI 0.3.0

## Breaking Changes
- `get_country_info_mx()` was removed from the package. The 'REST Countries API' v3.1
  endpoint it depended on was deprecated by its provider. The replacement v5 endpoint
  now requires an API key, which is incompatible with CRAN's policy on packages using
  Internet resources (they must work without user-provided credentials). As a
  consequence, the 'REST Countries API' is no longer used by `MexicoDataAPI`.

---


# MexicoDataAPI 0.2.0

## Breaking Changes

- `get_country_info()` was renamed to `get_country_info_mx()` to avoid naming conflicts with other packages and improve function identification.

The following API was added to the `MexicoDataAPI` package:

- 'Nager.Date' <https://date.nager.at/Api>.

The following function was added to the `MexicoDataAPI` package:

- `get_mexico_holidays()`: Get official public holidays in Mexico for a given year, e.g., `get_mexico_holidays(2025)`. 

---

# MexicoDataAPI 0.1.0

## Initial Release

- First release of `MexicoDataAPI` package.
- Added `view_datasets_MexicoDataAPI()` function to explore available datasets.
- Curated Collection of datasets that cover diverse aspects of Chilean society.
- Initial APIs *World Bank API* and *REST Countries API* – Added functions powered by these APIs
