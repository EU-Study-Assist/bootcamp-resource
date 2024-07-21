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

agatha
thandekile
anap

# The Operators -----------------------------------------------------------
agatha > thandekile
thandekile > agatha

soso <- 17
fisola <- 20
promise <- 20
nomvume <- 17
dare <- 15

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

species <- c(specie_1, species_2, species_3, species_4)
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

## Statistical Functions --------------------------------------------------

### Generating Random Numbers ---------------------------------------------

## Character Functions ----------------------------------------------------

### Letters ---------------------------------------------------------------

## Creating a Custom Function ---------------------------------------------



# Data Structure ----------------------------------------------------------


## Vector -----------------------------------------------------------------


### Check object type -----------------------------------------------------

### Accessing -------------------------------------------------------------

### Adding items ----------------------------------------------------------

### Subsetting and Indexing -----------------------------------------------

### Mathematical Operations -----------------------------------------------

## Matrices ---------------------------------------------------------------


### Check object type -----------------------------------------------------

### Accessing -------------------------------------------------------------

### Subsetting and Indexing -----------------------------------------------

### Transpose -------------------------------------------------------------

### Operations (binding) --------------------------------------------------

### Mathematical Operations -----------------------------------------------


## Lists ------------------------------------------------------------------

### Check object type

### Accessing -------------------------------------------------------------


## Data Frames ------------------------------------------------------------

### Check object type -----------------------------------------------------

### Accessing -------------------------------------------------------------

### Adding items ----------------------------------------------------------

### Subsetting and Indexing -----------------------------------------------

### Mathematical Operations -----------------------------------------------

### Check object type -----------------------------------------------------