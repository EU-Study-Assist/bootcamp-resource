
# Importing data correction -----------------------------------------------


# 1. In your words how would you briefly define packages
"Packages are collections of functions."

# 2. What function do you use to install packages in R
"install.packages("package_name")"

# 3. After installation, what are two ways to use packages in R
"library("package")"
ggplot2::aes_q()

# 4. Install the following packages:
#   a. tidyverse
# b. readxl
# c. googlesheets4
# d. readODS
install.packages(c("tidyverse", "readxl", "googlesheets4", "readODS"))

# 5. What package(s) can you use to import data from IBM SPSS, and Stata.
"haven"
"foreign"

# Files Extension
# 1. What is/are the main file extension(s) of the following data analysis software:
#   a. Microsoft Excel
".xlsx" ".xls"
# b. LibreOffice Calc
".ods"
# c. Stata
".do" ".dta"
# 1d. IBM SPSS
".sav"
# e. Google Sheets
".gsheet"

# 2. How does Google Sheets differ from the above analysis software?
"It's cloud-based. It's not a downloaded software"

#   3. What is the difference between “.txt” and ”.csv” files.
"The delimiter for txt is tab '\t', while csv is separated ','"

# 4. Using the tidyverse package read the fao_wood_export_data.csv file found in the data
# folder. Answer the following questions with file.
library(tidyverse)
fao_tbl <- read_csv("data/fao_wood_data.csv")


# a. What is the file extension?
"csv"
#   b. Print the first 6 observations of the file
head(fao_tbl)

# c. What is the delimiter of the file?
","
#   d. Using the pipe operator, preview the last 6 observations of the data
fao_tbl |> 
  tail()

# 5. Correctly import the North-East Atlantic Catches sheet of the Versions_log.xlsx excel
# file into RStudio. Give the data a name of your choosing. With the data return:
library(readxl)
ne_atlantic_catches <- read_excel("data/Versions_log.xlsx",
                                  sheet = "North-East Atlantic Catches")

#   a. the first 6 observations
head(ne_atlantic_catches)

ne_atlantic_catches |> 
  head()

# b. the last 6 observations
ne_atlantic_catches |> 
  tail()

# c. ten random data point observation. You can research this on your own.
random_sample <- sample(ne_atlantic_catches, 10, replace = FALSE, prob = NULL)
car::some(ne_atlantic_catches)

ne_atlantic_catches[sample(nrow(ne_atlantic_catches), 10, replace = FALSE, prob = NULL), ]

ne_atlantic_catches[c(5002, 6636, 35726,
                      30387, 34404, 89,
                      33083, 27469, 42301, 38209), ]
list.files(path = "data")

# 6. Using the same file, Versions_log.xlsx import sheet 4 and 5 giving them appropriate vari-
#   able names. Ensure you print the first 6 observations
species_sheet <- read_excel("data/Versions_log.xlsx", sheet = "Species")
country_sheet <- read_excel("data/Versions_log.xlsx", sheet = 5)

species_sheet |> 
  head(6)

country_sheet |> 
  head()

# 7. Import the data in the third sheet of the file Ch2_Timber.ods and give it a suitable variable
# name. Print the data after you done.
library(readODS)
timber <- read_ods("data/Ch2_Timber.ods",
         sheet = "Table_2_1a", skip = 4)

# 7b. Import the sheet named Table_2_7b from the Ch2_Timber.ods. Give the data a suitable
# name and print after all
softwood_hardwood <- read_ods("data/Ch2_Timber.ods",
                   sheet = "Table_2_7b", skip = 4)

# 7c. Import the plot_11_tvol.txt data. How many distinct site and plot does the data have?
plot_11 <- read_delim("data/plot_11_tvol.txt")
read_tsv("data/plot_11_tvol.txt")

length(plot_11$site) # good trail
length(plot_11$plot) # good trail

unique(c(plot_11$site, plot_11$plot)) # good trial

plot_11 |> 
  summarize(
    plot = length(unique(plot)),
    site = length(unique(site))
  )

length(unique(plot_11$plot))
length(unique(plot_11$site))

# 7d. Is any of the variable in plot11 having missing data
is.na(plot_11)
is.na(plot_11$height)
plot_11 |> 
  arrange(desc(is.na(height)))

unique(is.na(plot_11))

skimr::skim(plot_11)

# 8. Import the data on black cherry trees with the google sheet id
# 1l7COp-Ps5Zy8X0nnw0grnWg

black_cherry_id <- "1l7COp-Ps5Zy8X0nnw0grnWg"
library(googlesheets4)

read_sheet(black_cherry_id)
