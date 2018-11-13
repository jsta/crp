library(readxl)
library(magrittr)
library(readr)
suppressMessages(library(tidyr))
suppressMessages(library(dplyr))
library(DataPackageR)

ofile <- file.path(DataPackageR::project_path(), "data-raw", "crp.xlsx")

if(!file.exists(ofile)){
  download.file("https://www.fsa.usda.gov/Assets/USDA-FSA-Public/usdafiles/Conservation/Excel/CRP%20Rental%20Payment%20History%20By%20County1.xlsx?CRP+Rental+Payment+History+by+County",
                ofile)
}

crp <- readxl::read_excel(ofile, skip = 2)[-1,] %>%
  tidyr::gather(key = "year", value = "crp_acres", -STATE, -COUNTY, -FIPS) %>%
  filter(!is.na(COUNTY)) %>%
  arrange(STATE, COUNTY, year) %>%
  write_csv("crp.csv")

crp <- read_csv("crp.csv")
# DataPackageR::package_build()
