
data-raw: data-raw/tillage_ctic.csv data-raw/crp.csv

data-raw/tillage_ctic.csv: data-raw/tillage_ctic.R
	Rscript $<

data-raw/crp.csv: data-raw/crp.R
	Rscript $<
