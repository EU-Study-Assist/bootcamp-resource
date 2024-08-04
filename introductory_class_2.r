
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

utils::read.csv()
readr::read_csv()
# Base R import function ----
redpine <- read.csv("data/redpine.csv")
summary(redpine)

# readr import function
read_csv("data/redpine.csv", col_types = c("fffdd"))

## Text file -----------
read_delim(file = "data/dbhlist_exp1012.txt", delim = "\t")
read_delim(file = "data/plantgrowth.csv", delim = ",")

## CSV Files
read_csv("data/plantgrowth.csv")
read_csv("data/fao_wood_data.csv")

# Excel Files -------------------------------------------------------------
library(readxl)
read_excel("data/chickweight.xlsx")
read_excel("data/Versions_log.xlsx")
read_excel("data/Versions_log.xlsx", sheet = 5)
read_excel("data/Versions_log.xlsx", sheet = 6)

read_excel("data/Versions_log.xlsx", sheet = "Subset_Scotland")
read_excel("data/Versions_log.xlsx", sheet = "Country")

read_excel("data/Versions_log.xlsx", sheet = 8, skip = 5)

read_excel("data/Versions_log.xlsx",
           sheet = "promise_sheet", col_names = FALSE
)

read_excel("data/Versions_log.xlsx",
           sheet = "promise_sheet", col_names = FALSE,
           na = c("0", "999")
) |> 
  print(n = 100)

# Google Sheet Files ------------------------------------------------------
library(googlesheets4)
## Authenticate google account
gs4_auth()

## sheets id
sheet_id <- "https://docs.google.com/spreadsheets/d/1ducblIqO8pIr1Rl4WEJ1qPUWmHHBc3gp5fC0wbFbMBA/edit?gid=795082586#gid=795082586"

sheet_id <- paste0("https://docs.google.com/spreadsheets/d/",
"1ducblIqO8pIr1Rl4WEJ1qPUWmHHBc3gp5fC0wbFbMBA/",
"edit?gid=795082586#gid=795082586"
)

read_sheet(sheet_id)

## short sheet id
short_id <- "1ducblIqO8pIr1Rl4WEJ1qPUWmHHBc3gp5fC0wbFbMBA"
read_sheet(short_id, range = "A1:B14")

# LibreOffice Files -------------------------------------------------------
library(readODS)
read_ods("data/insect_spray.ods")

# Exporting Files ---------------------------------------------------------
set.seed(234)
length(round(rnorm(15, 10, 1.1)))

rnorm(15, 10, 1.1) |> 
  round() |> 
  length()



fao_data <- read_csv("data/fao_wood_data.csv")

print(fao_data, n = 5, width = Inf)

fao_data <- fao_data |> 
  janitor::clean_names()

fao_data <- fao_data |> 
  select(area, item, element, unit, y1961:y2022) |> 
  pivot_longer(
    cols = y1961:y2022,
    names_to = "years",
    values_to = "values"
  ) |> 
  mutate(
    years = parse_number(years)
  )

fao_data <- fao_data[complete.cases(fao_data), ]

fao_data <- fao_data |> 
  pivot_wider(
    names_from = unit,
    values_from = values
  )

fao_data <- fao_data |> 
  select(area:`1000 USD`)

fao_data <- fao_data |> 
  filter(!is.na(`1000 USD`))

filter(fao_data, !is.na(`1000 USD`))

## Exporting CSV ---------------------
# Export to root directory
write.csv(fao_data, "fao_data.csv")
  
# Export to specific directory
write_csv(fao_data, "data/fao_data.csv")
write_csv(fao_data, "michael/fao_data.csv")

write_csv(fao_data, "~/Documents/eustudyassist/fao_data.csv")

## Exporting Excel -------------------
library(writexl)
write_xlsx(fao_data, "data/fao_excel.xlsx")

## Exporting ods -------------------------------------------------------
write_ods(fao_data, "data/fao_data.ods")

read_excel("data/chickweight.xlsx") |> 
  write_csv("data/chickweight.csv")

## Exporting googlesheets ------------------------------------------------
sheet_write(
  "fao_data_gsheet",
  fao_data, sheet = "fao_data"
)