# Packages

# Question 1
## Packages in R is a collection of functions, data and compiled code
### in a well defined format

# Question 2
# installing packages
install.packages()

# Question 3 
## the two ways of using installed packages
### 1 loading the entire package
library() 
require()
#### 2 accessing package functions using :: 
ggplot2::ggplot()

# Question 4
## Installing tidyverse, readxl, googlesheets4, readODS packages
install.packages("tidyverse")
install.packages("readxl")
install.packages("googlesheets4")
install.packages("readODS")


# Question 5
## Packages for importing data from IBM SPSS and Stata
# the 'haven' package 
## haven()
# foreign()


# File extension

# Question 1
## file extension(s) for Microsoft Excel, LibreOffice Calc, Stata, IBM SPSS
### and Google Sheets
# Microsoft excel
.xlsx
.xls

## LibreOffice Calc
.ods # OpenDocument Spreadsheet 
.fods # Flat OpenDocument Spreadsheet

### Stata
.dta

#### IBM SPSS
.sav
.zsav # Compressed SPSS Data File

##### Google Sheets
# there is no specific file extension but can exported to the following format:
.csv
.xlsx
.pdf
.ods


# Question 2
## How google sheets is different
#  it's cloud based platform which enables real time multiple user collaborations
## it's easily accessible, very convenient, free to use and integrate with other tools

# Question 3
## difference between “.txt” and ”.csv” files
.txt # tap separated files
.csv # comma separated files

# Question 4
library("tidyverse")

fao_data <- read_csv("data/fao_wood_data.csv")
print(fao_data)
 # (a) the file extension is .csv
## (b) printing the first six observation from fao_data
head(fao_data)

### (c) the file delimeter
delim = ","
#### (d) previewing the last six observation using pipe
fao_data |> 
  tail()

# Question 5
library("readxl")
North_East <- read_excel("data/Versions_log.xlsx", sheet = 2)
North_East

# (a) printint the first six observation from North_East
head(North_East)

# (b) printint the last six observation from North_East
tail(North_East)

# (c) printing ten rasndom data point observation
install.packages("car")
library("car")
some(North_East)

# Question 6
## importing sheets 4 and 5 from the data/Versions_log.xlsx file and printing
### the first six observations 
species <- read_excel("data/Versions_log.xlsx", sheet = 4) 
species |> 
  head()

country <- read_excel("data/Versions_log.xlsx", sheet = 5)
country |> 
  head()

country |> 
  tail()

# Question 7 (a) importing and printing the third sheet from the file Ch2_Timber.ods
library(readODS)
Timber <-read_ods("data/Ch2_Timber.ods", sheet = 3)
print(Timber)

##  (b) importing and printing Table_2_7b from the Ch2_Timber.ods
Timber_Table<- read_ods("data/Ch2_Timber.ods", sheet = "Table_2_7b")
print(Timber_Table)

### (c) importing plot_11_tvol.txt file
plot_11 <- read.delim("data/plot_11_tvol.txt")
plot_11
summary(plot_11)

length(plot_11$site) # 62
length(plot_11$plot) # 62

#### (d) Is any of the variable in plot11 having missing data
is.na(plot_11)

# Question 8
## importing a googlesheet file
library(googlesheets4)
gs4_auth()

sheet_id <- "1l7COp-Ps5Zy8X0nnw0grnWgB1o79uwRmK1ncqtm56AE"
read_sheet(sheet_id) |> 
  head()
