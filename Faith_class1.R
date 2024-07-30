## Simple Operations

2+2
4-5
56-4
24-89
78/12
24 %% 12
3 ** 2
3^5
4 * 3
4 ** 3
4 ** 4

# Order of Operations
4 + 3 - 3
4 + (3*4)
54/(2*3)^3

## Assigning Variables
agatha <- 38
faith_12 <- 90
assign('anap', 12)
anap
faith_12

even <- c(200:400, 2)
length(even)

## Conditionals..............................................
TRUE & TRUE
TRUE & FALSE
FALSE & FALSE
TRUE & FALSE
TRUE & TRUE

## Vector...................................................
trees <- c('pinus species', 'eucalyptus species', 'lophira species',
           'tectona species', 'acacia species')

tree_height <- c(27, 25, 20, 23, 18)

is.numeric(tree_height)
trees[-1]
trees[4:5]
trees[1:4]
trees[c(2, 4)]
append(trees, 'jakarda')
trees <- append(trees, 'jakarda species')
trees
print(trees)

which(trees == c)
tree_height*2
tree_height

## Sequence................................................

student_names <- c('promise', 'thandekile', 'nomvume', 
                   'dare', 'agatha', 'faith')
student_names
gender <- c('male', 'female', 'female', 'female', 'male', 'male')

unique(student_names)
unique(gender)
length(gender)
length(unique(gender))
length(trees)
length(unique(trees))
unique(trees)

num <- 100
length(num)
unique(length(num))
sqrt(100)
sqrt(length(100))
## Generating random numbers..........................
my_rand <- rnorm(n = 100, mean = 5.5, sd = 15)
my_rand

## Data Structure...................................
## Vector
trees <- c('pinus species', 'eucalyptus species', 'lophira species',
           'tectona species', 'acacia species')
trees[2]
trees[3]
trees[-1]
trees[-3:-1]
trees[-2]

y## Check object type...........................................
class(trees)
is.numeric(trees)
is.vector(trees)
is.character(trees)

trees_height <- c(27, 25, 23, 17, 10)
is.vector(trees_height)

## Accessing............................................................
is.vector(trees_height[2])
is.vector(trees[3])
is.character(trees[3])
is.numeric(trees_height[3])

## Adding items....................................
trees[6] <- 'jakarda species'
trees

data_rf <- c(trees, trees_height)
data_rf

trees == 'lophira species'
## Sub-setting and Indexing...........................
which(trees == 'tectona species')
which(trees == c('lophira species', 'pinus species'))

## Mathematical Operations.......................................
trees
trees_height <- append(trees_height, c(15, 20))
trees_height
length(trees_height)
length(trees) == length(trees_height)
trees <-  append(trees, 'tobacco species')

# Novume experiment
set.seed(234)
pinus_control_height <- round(rnorm(10, 3.5, 1), 2)
pinus_fertilizer_height1 <- round(rnorm(10, 4.5, 1.1), 2)
pinus_control_height
pinus_fertilizer_height1

pinus_control_diameter <- round(rnorm(10, 0.9, 0.3), 2)
pinus_fertilizer_diameter1 <- round(rnorm(10, 1.4, 5), 2)

pinus_fertilizer_diameter1
pinus_control_diameter
# Simple comparison
mean(pinus_control_height)
mean(pinus_fertilizer_height1)

mean(pinus_control_diameter)
mean(pinus_fertilizer_diameter1)

max(pinus_control_height)
max(pinus_fertilizer_height1)

min(pinus_control_height)
min(pinus_fertilizer_height1)

max(pinus_fertilizer_height1) - max(pinus_control_height)
mean(pinus_fertilizer_height1) - mean(pinus_control_height)



trees
trees_diameter <- round(rnorm(7, 10, 1))
trees_height * trees_diameter
trees_diameter
trees_height
trees_volume <- round(rnorm(7, 10, 1.5))
trees_volume
trees_height * trees_diameter* (trees_volume * 2 + 2)

control_diameter <- trees_diameter * rnorm(7, 0.5, .3)
control_diameter
treatment_diameter <- control_diameter
control_diameter <- trees_diameter
treatment_diameter
control_diameter

## Getting the volume
(treatment_diameter/2)^2 * trees_height

## Matrices.....................................................
## Check object type............................................
## Accessing....................................................
## 