# Simple Operations -------------------------------------------------------

2 + 2
2 - 5
34 - 5
3 / 2
3 %% 2
3 ** 5
3^5
4 * 4

## Order of Operation -----------------------------------------------------
4 + 3 * 2
4 + (3 * 2)
(4 + 3) * 2

# BODMAS
# PEMDAS

# Assigning Variables -----------------------------------------------------

agatha <- 20
thandekile = 21
assign("anap", 19)

soso <- 17
fisola <- 20
promise <- 20
nomvume <- 17
dare <- 15
agatha
thandekile
anap

# The Operators -----------------------------------------------------------
agatha > thandekile
thandekile > agatha
dare < promise
15 < 20

nomvume <= fisola

## Conditionals -----------------------------------------------------------
### AND (&) ---------------------------------------------------------------
TRUE & TRUE
TRUE & FALSE
FALSE & TRUE
FALSE & FALSE

### OR (|) ----------------------------------------------------------------
TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE

nomvume >= dare & fisola == promise

15 > 17 & 20 > 17

17 < 15  & 20 < 17
17 < 15 | 20 < 17
15 > 17 | 20 > 17

# Data Types --------------------------------------------------------------

## Strings / Characters ---------------------------------------------------

tree_1 <- "eucalyptus species"
tree_1

tree_2 <- "20"
tree_2

tree_3 <- "F"
tree_4 <- "TRUE"

class(tree_1)
class(tree_2)
class(tree_3)
class(tree_4)

species_1 <- "1" #eucalyptus camadulensis
species_2 <- "2" #milicia excelsa
species_3 <- "3" #ficus exasperata
species_4 <- "4" #terminalia cattapa

typeof(species_4)

is.character(tree_1)
is.character(promise)
is.character("promise")

## Numeric ----------------------------------------------------------------

### Double/Float/ Decimal number ------------------------------------------

class(12.3)
typeof(12.3)
typeof(12)

12 == 12.0
0.1 == .1

is.double(12)

is.numeric(12)
is.numeric(12L)

### Integers/ Whole numbers -----------------------------------------------

class(12L)
typeof(12L)

is.integer(12L)

## Boolean / Logical ------------------------------------------------------
class(TRUE)
typeof(TRUE)
class(T)
class(F)
class(NA)

is.logical(TRUE)
is.logical(FALSE)
is.logical(NA)

## Date/Time --------------------------------------------------------------
class(as.Date("2024/07/19"))

# Data Structure ----------------------------------------------------------

## Vectors ----------------------------------------------------------------
?c
help(c)

beautiful_people <- c(nomvume, fisola, thandekile, dare, agatha, promise, anap)
beautiful_people
class(beautiful_people)

beautiful_people_1 <- as.character(beautiful_people)


### Value coercion --------------------------------------------------------
num_ber <- c(1, 2, 3, 4, 5, 6)
num_ber
class(num_ber)
as.character(num_ber)

species <- c(species_1, species_2, species_3, species_4)
class(species)
species
species_num <-as.numeric(species)
class(species_num)

trees <- c(tree_1, tree_2, tree_3, tree_4)
  class(trees)
as.logical(trees)

my_num <- 0:30
as.logical(my_num)
my_num2 <- -10:10
class(my_num2)
as.logical(my_num2)

# Sequences and replications ----------------------------------------------
?seq()
seq(from = 1, to = 30, by = 1)
seq(1, 30, 2)
seq(2, 50, 2)
seq(0, 90, 3)

num <- 1:100
num

species <- c(species_1, species_2, species_3, species_4)
my_tree <- rep(species, 30)
my_tree
class(my_tree)

my_tree <- as.factor(my_tree)
my_tree <- factor(my_tree,
                  labels = c("eucalyptus camadulensis",
                             "milicia excelsa",
                             "ficus exasperata",
                             "terminalia cattapa"
                            ),
                  levels = c(4, 3, 2, 1),
                  ordered = TRUE
                  )
# Functions ---------------------------------------------------------------

## Simple Functions --------------------------------------------------
num

min(num)
max(num)
median(num)
mean(num)
plot(num)
min(1:6)
range(num)
sd(num)
var(num)
length(num)

my_tree
length(my_tree)

student_names <- c("promise", "thandekile", "dare", 
                   "nomvume", "nangamso", "agatha",
                   "faith")

gender <- c("male", "female", "male",
            "female", "female", "female", "male")

unique(student_names)
length(student_names)
length(gender)

unique(gender)
length(unique(gender))

length(my_tree)
unique(my_tree)
length(unique(my_tree))

sqrt(340)
sqrt(length(num))
sqrt(100)

### Generating Random Numbers ---------------------------------------------
set.seed(937476)

my_rand <- rnorm(n = 100, mean = 5.5, sd = 15)

?round
help(round)

round(my_rand, digits = 0)

ceiling(my_rand)
floor(my_rand)

args(rnorm)
help(rnorm)
help(unique)
?rnorm
?length

## Character Functions ----------------------------------------------------
my_tree

toupper(my_tree)
tolower(my_tree)


### Letters ---------------------------------------------------------------
letters
LETTERS

month.name
month.abb

## Creating a Custom Function ---------------------------------------------
my_rand + num
my_rand/num

tree_diameter <- rnorm(50, mean = 1, sd = 2)
tree_height <- runif(50, min = 5, max = 27)
tree_volume <- rnorm(50, mean = 70, sd = 15)

metric_converter <- function(x) {
  x * 1000
}

metric_converter(tree_diameter)
metric_converter(tree_height)
metric_converter(tree_volume)


?runif
num + 5

num + c(5, 9, 10)
length(num)/3
length(num)/2

sum(my_rand, num)

# Data Structure ----------------------------------------------------------

## Vector -----------------------------------------------------------------
trees <- c("pinus species", "eucalyptus species", "lophira species", 
           "tectona species", "acacia species")

tree_height <- c(27, 25, 20, 23, 18)

is.numeric(tree_height)
### Check object type -----------------------------------------------------

is.vector(trees)
is.vector(tree_height)

### Accessing -------------------------------------------------------------

trees[5]
trees[1]
trees[2:3]
trees[1:4]
trees[c(2, 4)]
trees[c(3, 5)]

which(trees == "acacia species")
trees[5]
trees == "lophira species"
2 == 2


### Adding items ----------------------------------------------------------
trees[6] <- "jakarada"
trees[3] <- "gmelina species"
trees

trees <- append(trees, "lophira species")
trees

### Subsetting and Indexing -----------------------------------------------

which(trees ==  "tectona species")
which(trees == c("lophira species", "pinus species"))

### Mathematical Operations -----------------------------------------------
trees
tree_height <- append(tree_height, c(15, 20))

tree_height
length(tree_height) == length(trees)
7 == 7

tree_height * 2
tree_diameter <- round(rnorm(7, 10, 1), 1)
tree_diameter

length(tree_diameter)
length(tree_height)

tree_height * tree_diameter

9.1 * 27

tree_volume <- rnorm(7, mean = 26, sd = 5)

tree_volume
tree_height / 3
tree_height + tree_diameter

tree_height * tree_diameter * (tree_volume * 2 + 2)

### Nomvume's Experiment
set.seed(234)

pinus_control_height <- round(rnorm(10, 3.5, 1), 2)
pinus_fertilzer_a_height <- round(rnorm(10, 4.5, 1.1), 2)

pinus_control_diameter <- round(rnorm(10, 0.9, 0.3), 2)
pinus_fertilizer_a_diameter <- round(rnorm(10, 1.4, .5), 2)

pinus_control_height
pinus_fertilzer_a_height

pinus_control_diameter
pinus_fertilizer_a_diameter

## Simple comparison
mean(pinus_control_height)
mean(pinus_fertilzer_a_height)

mean(pinus_fertilizer_a_diameter)
mean(pinus_control_diameter)

max(pinus_fertilzer_a_height)
min(pinus_fertilzer_a_height)

max(pinus_control_height)
min(pinus_control_height)

max(pinus_fertilzer_a_height) - max(pinus_control_height)
mean(pinus_fertilzer_a_height) - mean(pinus_control_height)

# Getting the volume
## Pinus tree volume derivation
pinus_control_tree_volume  <- pi * (pinus_control_diameter/2) ^ 2 *
  pinus_control_height

pinus_control_tree_volume

## pinus tree fertilized volume
pinus_fertilized_volume <- pi * (pinus_fertilizer_a_diameter/2) ^ 2 *
  pinus_fertilzer_a_height

pinus_fertilized_volume

mean(pinus_fertilized_volume)
mean(pinus_control_tree_volume)

control_tree_diameter <- tree_diameter
treatment_tree_diameter <- tree_diameter + rnorm(7, mean = .5, sd = .3)
treatment_tree_diameter <- round(treatment_tree_diameter, 1)

treatment_tree_diameter
control_tree_diameter


## Matrices ---------------------------------------------------------------

matrix(pinus_control_height, nrow = 5)

pinus_fake <- matrix(pinus_control_height, nrow = 5, byrow = TRUE)

colnames(pinus_fake) <- c("species_a", "species_b")
colnames(pinus_fake) <- c("control", "fertilized")
pinus_fake

pinus_height <- matrix(c(pinus_control_height, pinus_fertilzer_a_height), ncol = 2,
       byrow = FALSE)

pinus_height

colnames(pinus_height) <- c("control", "fertilized")

rownames(pinus_height) <- c(rep("red soil", 5), rep("yellow soil", 5))

pinus_height
### Check object type -----------------------------------------------------
is.matrix(pinus_height)

### Accessing -------------------------------------------------------------

# "in the squared bracket [a, b], a = row, b = column"
pinus_height[ ,2]
pinus_height[ , "fertilized"]
pinus_height[, "control"]
pinus_height[1,] # row 1
pinus_height[1, 2] # row 1 column 2

pinus_height[5, 2] # row 5, column 2

pinus_height[10, 2]

pinus_height["red soil", ]
pinus_height[1:5, ]
pinus_height[c(1, 5, 10), ]

### Subsetting and Indexing -----------------------------------------------
fertilized_red_soil <- pinus_height[1:5, "fertilized"]

pinus_height[pinus_height[1:10, "fertilized"] > 4.5, ]

pinus_height[pinus_height[ , "control"] > 3.5, ]

letters[5:26]
letters[ c ( seq (2, 26, by = 2) ) ]

set.seed(123)
starters <- round(rnorm(n = 10, mean = 2.0, sd = .5), 1)
growers <- round(rnorm(n = 10, mean = 5.6, sd = .2), 1)
finishers <- round(rnorm(n = 10, mean = 10, sd = 1.7), 1)

starters
growers
finishers

poultry <- matrix(c(starters, growers, finishers), ncol = 3)

colnames(poultry) <- c("starters", "growers", "finishers")
poultry

poultry[,2]
poultry[, "growers"]
poultry[(poultry[, "starters"] >= 2.0), "growers"]
poultry[,]

### Transpose -------------------------------------------------------------
t(poultry)

### Operations (binding) --------------------------------------------------
rownames(pinus_height) <- NULL
pinus_height

dim(pinus_height)
dim(poultry)

#### Combine columns
cbind(pinus_height, poultry)
poultry

set.seed(123)

poultry_2 <- poultry[, 1:2]

poultry_2
pinus_height

rownames(pinus_height) <- rep("durban", 10)
rownames(poultry_2) <- rep("cape_town", 10)
rbind(poultry_2, pinus_height)

### Mathematical Operations -----------------------------------------------
poultry_2 + pinus_height
poultry_2 * 3
poultry_2

## Lists ------------------------------------------------------------------
my_list <- list(c(1:30))
my_list

c(1:30)

my_list <- list(my_list)
my_list
### Check object type
is.list(my_list)

research <- list(treatment_tree_diameter, tree_diameter,
                 pinus_height, my_list, tree_height, poultry,
                 poultry_2)

research
names(research) <- c(letters[1:7])

names(tree_diameter) <- "dia"
names(pinus_fake) <- "fake"
names(pinus_fake)

pinus_fake
research

### Accessing -------------------------------------------------------------
research$d[[1]][[1]][29]

## Data Frames ------------------------------------------------------------
people_data <- data.frame(
  ladies = c("agatha", "nomvume", "anap", "nangamso"),
  gents = c("promise", "olakunle", "faith", NA),
  relationship = c("m", "d", "s", "s")
)

rnorm(12, mean = 1, sd = 4) |> 
  matrix(ncol = 3)

matrix(rnorm(12, mean = 1, sd = 4), ncol = 3)

tree_height
tree_diameter
tree_volume

tree <- data.frame(
  height = tree_height,
  diameter = tree_diameter,
  volume = tree_volume
)

pinus_fake
as.data.frame(pinus_fake)

pinus_fake |> as.data.frame()

pinus_df <- pinus_height |> 
  as.data.frame()

rownames(pinus_df) <- NULL
pinus_df

### Check object type -----------------------------------------------------
is.data.frame(people_data)
### Accessing -------------------------------------------------------------
pinus_df$fertilized
pinus_df$control


poultry_df <- poultry |> 
  as.data.frame()

rownames(poultry_df) <- NULL
poultry_df
pinus_df

cbind(poultry_df, pinus_df)

poultry_2_df <- poultry_2 |> 
  as.data.frame()

rownames(poultry_2_df) <- NULL
poultry_2_df

poultry_2_df
pinus_df

rbind(poultry_2_df, pinus_df)


colnames(pinus_df) <- c("starters", "growers")
pinus_df
poultry_data <- rbind(pinus_df, poultry_2_df)
### Subsetting and Indexing -----------------------------------------------
poultry_data$growers

subset(poultry_data, growers > 5)
subset(poultry_data, starters < 3.0)

### Adding items ----------------------------------------------------------
poultry_data$finishers <- rnorm(20, 15, 4.4)
poultry_data$finishers <- floor(poultry_data$finishers)
poultry_data$starters <- floor(poultry_data$starters)

### Mathematical Operations -----------------------------------------------
poultry_data$finishers <- poultry_data * 1000
poultry_data

### Check object type -----------------------------------------------------


# Packages ----------------------------------------------------------------

#install.packages("tidyverse")
#install.packages("ggplot2")

# Load packages
library(tidyverse)

poultry <- poultry_data |> 
  as_tibble()

poultry |> 
  select(starters, growers)

poultry[, 1:2]


# Importing Data ----------------------------------------------------------




