# Data Manipulation -------------------------------------------------------
library(tidyverse)

plot_11 <- read_delim("data/plot_11_tvol.txt")

head(plot_11) # preview first 6 observations
tail(plot_11) # preview last 6 observations

dim(plot_11) # Check dimension

print(plot_11, n = 100)

View(plot_11) # Preview in spreadsheet format

# arrange() ---------------------------------------------------------------
## Ascending order --------------------------------------------------------
arrange(plot_11, height)
print(arrange(plot_11, height), n = 100)

plot_11 |> 
  arrange(height)

plot_11 |> 
  arrange(height) |> 
  print(n = 100)

plot_11 |> 
  arrange(dbh) |> 
  print(n = 50)

## Descending order -------------------------------------------------------
plot_11 |> 
  arrange(desc(height)) |> 
  print(n = 100)

plot_11 |> 
  arrange(desc(dbh)) |> 
  print(n = 100)

## Missing values ---------------------------------------------------------
plot_11 |> 
  arrange(is.na(height)) |> 
  print(n = 100)


plot_11 |> 
  arrange(desc(is.na(height))) |> 
  print(n = 100)

# select() ----------------------------------------------------------------
library(readxl)
fish_nomenclature <- read_excel("data/ASFIS_sp_2023.xlsx", 
                            sheet = "ASFIS_sp")

head(fish_nomenclature)
names(fish_nomenclature)

fish_nomenclature <- fish_nomenclature |> 
  janitor::clean_names()

### Janitor
####camelcase
"EnglishName englishName"
"FirstName firstName"

#### Snake_case
"first_name"

janitor::clean_names()

## Selecting by column / variable name ------------------

fish_extract <- fish_nomenclature |> 
  select(isscaap_group, taxonomic_code, alpha3_code,
         scientific_name, english_name, author, family,
         order, fish_stat_data)
fish_extract |> 
  select(isscaap_group:english_name, author:fish_stat_data)

fish_nomenclature
## Selecting by column/ variable index number
fish_nomenclature |> 
  select(c(1:4))

fish_nomenclature |> 
  select(c(1:4, 13:14))

## Selecting with verbs
fish_nomenclature |> 
  select(contains("code"))

fish_nomenclature |> 
  select(contains("e"))

fish_nomenclature |> 
  select(ends_with("name"))


class_data <- tibble(
  name = c("faith", "olakunle", "agatha", 
           "dare", "promise", "nomvume",
           "nangamso"),
  salary = c(100000, 120000, 72000, 60000,
             290000, 120000, 500000),
  organization = c("FAO", "UNDP", "ICES",
                   "IUFRO", "IITA", "WWF", 
                   "BCG"),
  marital_status = c("s", "mm", "da", "p",
                     "m", "m", "da"),
  gender = c("n", "m", "f", "m", "m", "f", "f"),
  Y2012 = rnorm(7, 6, 1),
  Y2024 = rnorm(7, 10, 3)
)


names(class_data)
class_data |> 
  select(ends_with("ion"))

class_data |> 
  select(contains("ar"))

class_data |> 
  select(starts_with("y"))

class_data |> 
  select(contains("ar"), starts_with("y"))

fao_data <- read_csv("data/fao_wood_data.csv") |> 
  janitor::clean_names()

names(fao_data)

fao_data |> 
  select(starts_with("area"))

fao_data |> 
  select(ends_with("t"))

fao_data |> 
  select(everything())


class_data |> 
  arrange(name)

class_data |> 
  arrange(desc(name))

# filter() ----------------------------------------------------------------
fao_data <- fao_data |> 
  select(area, item, element, unit, starts_with("y"))

fao_data |> 
  filter(area == "Nigeria") |> 
  print(n = 1000)

fao_data |> 
  filter(area == c("Nigeria", "Ghana")) |> 
  print(n = 180)

fao_data |> 
  filter(area == "Nigeria" & area == "Ghana")

# "|" means OR
fao_data |> 
  filter(area == "Nigeria" | area == "Ghana")
  
# "&" means AND
fao_data |> 
  select(area, y2020) |> 
  filter(area == "Denmark" & is.na(y2020))

fao_data |> 
  select(area, y2020) |> 
  filter(area == "Denmark" & !is.na(y2020))

fao_data |> 
  select(area, y2020) |> 
  filter(area != "Denmark" & !is.na(y2020)) |> 
  count(area) |> 
  print(n = 500)

fao_data |> 
  select(area, y2020) |> 
  filter(!is.na(2020)) |> 
  count(area) |> 
  print(n = 500)


fao_data |> 
  select(area, y2020) |> 
  filter(
    area %in% c("South Africa", "Uruguay", "Nigeria") & !is.na(y2020)
  ) |> 
  count(area)

# mutate() ----------------------------------------------------------------

## Self-column mutation
plot_11 |> 
  mutate(
    height = height / 10,
    dbh = dbh / 10,
    site = factor(site),
    plot = factor(plot)
  )

fao_data |> 
  mutate(
    across(where(is.character), factor)
  )


fao_data |> 
  mutate(
    across(where(is.double), integer)
  )
## New-column mutation: creating a new column
plot_11 |> 
  mutate(
    height_m = height / 10,
    dbh_cm = dbh / 10,
    volume = pi * (dbh_cm/2)^2 * height_m
  )

# summarize() -------------------------------------------------------------

## group_by
fao_clean <- fao_data |> 
  select(area, item, element, unit, y1961) |> 
  filter(unit == "m3" & !is.na(y1961)) |> 
  select(-unit)

fao_data |> 
  select(area, item, element, unit, y1961) |> 
  filter(unit == "m3") |> 
  filter(!is.na(y1961)) |> 
  select(-unit)
  

fao_clean |> 
  rename( "volume" = y1961) |> 
  group_by(area) |> 
  summarize(
    average_volume = mean(volume),
    number_item = length(item),
    total_volume = sum(volume)
  )

fao_clean |> 
  rename("volume" = y1961) |> 
  group_by(element) |> 
  summarize(
    num_item = length(item),
    average_vol = mean(volume, na.rm = TRUE),
    total_vol = sum(volume, na.rm = TRUE)
  )


class_data |> 
  group_by(gender) |> 
  summarize(
    num_gender = length(gender),
    total_salary = sum(salary),
    average_salary = mean(salary) 
  )
