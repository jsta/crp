
<!-- README.md is generated from README.Rmd. Please edit that file -->

# macroag

The goal of `macroag` is to provide reproducible access to agricultral
data for macrosystems research.

## Installation

You can install `macroag` from Github with:

``` r
devtools::install_github("jsta/macroag")
```

``` r
library(macroag)
```

## Conservation Reserve Program data

``` r
head(crp)
#>     STATE  COUNTY FIPS year crp_acres
#> 1 ALABAMA AUTAUGA 1001 1986     570.2
#> 2 ALABAMA AUTAUGA 1001 1987    1445.2
#> 3 ALABAMA AUTAUGA 1001 1988    2983.7
#> 4 ALABAMA AUTAUGA 1001 1989    4774.3
#> 5 ALABAMA AUTAUGA 1001 1990    4781.0
#> 6 ALABAMA AUTAUGA 1001 1991    4929.8
```

## Conservation Tillage data

``` r
head(tillage_ctic)
#>    huc8_n     crop year  notill ridge    mulch   reduced   intense
#> 1 1010001 allcrops 1989 1.04427     0 8093.091 2351.1735  5016.672
#> 2 1010001 allcrops 1990 0.00000     0 7790.253 2809.0858  6154.509
#> 3 1010001 allcrops 1991 0.00000     0 8160.969 3613.1736  4751.428
#> 4 1010001 allcrops 1992 0.00000     0 3190.244 2057.2116 11006.604
#> 5 1010001 allcrops 1993 0.00000     0 7662.330  814.5305  5950.458
#> 6 1010001 allcrops 1994 0.00000     0 5199.211 1153.9182  7760.700
#>    totacre pctnotil pctridge pctmulch  pctreduc pctinten
#> 1 15461.98 0.006754        0 52.34188 15.206159 32.44521
#> 2 16753.85 0.000000        0 46.49829 16.766810 36.73490
#> 3 16525.57 0.000000        0 49.38389 21.864139 28.75198
#> 4 16254.06 0.000000        0 19.62737 12.656601 67.71603
#> 5 14427.32 0.000000        0 53.10987  5.645751 41.24438
#> 6 14113.83 0.000000        0 36.83770  8.175798 54.98650
```
