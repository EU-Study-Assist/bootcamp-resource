
# Importing Data ----------------------------------------------------------

# File Formats ------------------------------------------------------------
## Excel files
".xls"
".xlsx"
## Word
".docx"

# R
".r"

## SPSS
".sav"

## Stata
".do"
".dta"

## LibreCalc
".ods"

# Importing Text and CSV Files --------------------------------------------
library("tidyverse")

read.csv("data/redpine.csv")
read_csv("data/redpine.csv")

## Text file -----------
read_delim(file = "data/dbhlist_exp1012.txt", delim = "\t")
read_delim(file = "data/plantgrowth.csv", delim = ",")

## CSV Files
read_csv("data/plantgrowth.csv")

# Excel Files -------------------------------------------------------------


# Google Sheet Files ------------------------------------------------------


# LibreOffice Files -------------------------------------------------------


# Exporting Files ---------------------------------------------------------


