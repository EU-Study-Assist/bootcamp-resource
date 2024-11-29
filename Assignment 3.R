#Packages
#Packages is a collection of functions in R. It is like a basket that contains 
   #functions that are used in R.
install.packages() #the name of the package in the brackets within quotation marks
library() ##declaring the name of the package in the library function
##name of the packag followed by two colons and then the particular function 
##with the package that wants to be used
##tidyverse::
getwd()
##Installing packages
installed.packages()
help("install.packages")
install.packages("tidyverse")
install.packages("readxl")
install.packages("googlesheets4")
install.packages("readODS")

####File extensions...................................
#microsoft excel-".xlsx",".xls"
#libreoffice calc---".ods"
#stata---".dta", ".do"
#IBM_SPSS---".sav"
#google sheets

##Google sheets is web based and cannot be utilized unless one is online.

#they both have different delimeters.
#.txt uses the tab delimeter ("\t") while .csv uses the comma (",")

##reading fao_wood_export_data.csv file
library(tidyverse)
read_csv("data/fao_wood_export_data.csv")
#file extension is.csv
#printing fist 6 observations and last 6 observations
fao_wood_export<-read_csv("data/fao_wood_export_data.csv")
head(fao_wood_export)

##delimeter is comma ","

#previewing last six observations of the data
fao_wood_export %>% 
  tail()


##Question 5.....................................................

##reading/importing north atlantic catches sheet
library(readxl)
read_excel("data/Versions_log.xlsx", sheet = 2)

##naming
north_east_catches <- read_excel("data/Versions_log.xlsx", sheet = 2)
##returning fist 6, last 6 and random observations
north_east_catches %>% 
  head() 
north_east_catches %>%
  tail() 
north_east_catches %>% 
   car::some()

##Question 6......................
sheet_4_versionlog <- read_excel("data/Versions_log.xlsx", sheet = 4)
sheet_5_versionlog <- read_excel("data/Versions_log.xlsx", sheet = 5)
sheet_4_versionlog %>% 
  head() 
  

sheet_5_versionlog %>% 
  head()
##Question 7................................  
install.packages("readODS")
library("readODS")
timber <- read_ods("data/Ch2_Timber.ods",sheet = "Table_2_1a")
print(timber)

##7b............
table_2 <- read_ods("data/Ch2_Timber.ods", sheet = "Table_2_7b" )
print(table_2)

#7c...........
read.delim()
plot_11 <- read.delim("data/plot_11_tvol.txt")
plot_11 <- read.delim("data/plot_11_tvol.txt")
plot_11
is.na(plot_11)      #Yes , there are missing data in plot 11 data

##Question 8.........
library(googlesheets4)
gs4_auth()
black_cherry_id <- "1l7COp-Ps5Zy8X0nnw0grnWgB1o79uwRmK1ncqtm56AE"
black_cherry<- read_sheet(black_cherry_id)
black_cherry %>% 
  head()
black_cherry

