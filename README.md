
<!-- README.md is generated from README.Rmd. Please edit that file -->

# crp

The goal of crp is to provide reproducible access to Conservation
Reserve Program data.

## Installation

You can install `crp` from Github with:

``` r
devtools::install_github("jsta/crp")
```

## Example

``` r
library(crp)
head(crp)
#>     STATE  COUNTY FIPS year crp_acres
#> 1 ALABAMA AUTAUGA 1001 1986     570.2
#> 2 ALABAMA AUTAUGA 1001 1987    1445.2
#> 3 ALABAMA AUTAUGA 1001 1988    2983.7
#> 4 ALABAMA AUTAUGA 1001 1989    4774.3
#> 5 ALABAMA AUTAUGA 1001 1990    4781.0
#> 6 ALABAMA AUTAUGA 1001 1991    4929.8
```
