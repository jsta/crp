# ---- setup ----
library(httr)
library(foreign)
library(rio)
library(readr)
library(dplyr)

base_url <- "https://water.usgs.gov/GIS/dsdl/ds573_tillage_lu01.zip"
zip_file <- file.path(DataPackageR::project_path(), "data-raw", basename(base_url))
dbf_file <- file.path(DataPackageR::project_path(), "data-raw", basename(base_url))

if(!file.exists(zip_file)){
  httr::GET(base_url, write_disk(basename(base_url), overwrite=TRUE))
}

unzip(zip_file, exdir = "data-raw")

tillage_ctic <- rio::import(dbf_file)

# ---- cleanup ----
tillage_ctic$huc8_n <- as.character(tillage_ctic$huc8_n)
tillage_ctic[which(nchar(tillage_ctic$huc8_n) == 7), "huc8_n"] <-
  paste0("0", tillage_ctic[which(nchar(tillage_ctic$huc8_n) == 7), "huc8_n"])

# ---- saving ----
write_csv(tillage_ctic, "data-raw/tillage_ctic.csv")
devtools::use_data(tillage_ctic, overwrite = TRUE)

# ---- metadata ----
library(xml2)

# http://r-pkgs.had.co.nz/man.html
tabular <- function(df, ...) {
  stopifnot(is.data.frame(df))

  align <- function(x) if (is.numeric(x)) "r" else "l"
  col_align <- vapply(df, align, character(1))

  cols <- lapply(df, format, ...)
  contents <- do.call("paste",
                      c(cols, list(sep = " \\tab ", collapse = "\\cr\n  ")))

  paste("\\tabular{", paste(col_align, collapse = ""), "}{\n  ",
        contents, "\n}\n", sep = "")
}

pg       <- read_xml("https://water.usgs.gov/GIS/metadata/usgswrd/XML/ds573_tillage_lu01.xml")
recs     <- xml_find_all(pg, "//attr")
metadata <- data.frame(col_names = xml_text(xml_find_all(recs[1], "//attrlabl")),
           definition = xml_text(xml_find_all(recs[1], "//attrdef")),
           stringsAsFactors = FALSE)
cat(tabular(metadata))
