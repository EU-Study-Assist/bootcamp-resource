# Data types 

#question 1 
class(12) # numeric
class(1.2) # numeric
class(12L) # integer
class("12L") # character
class(pi) # numeric

#Question 2 
## the results are as expected because 12 and 1.2 are numeric values but 12L
### is a definite integer, "12L" is a character because it’s in a quotation mark 
#### pi is a numeric constant

# Question 3 
is.numeric(12) # True
is.numeric(1.2) # True
is.character("12L") # True
is.numeric(pi) # True

# Question 4 
as.numeric(letters)
##  NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
as.factor(LETTERS)
### A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
###Levels: A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
class(14.3)
#### numeric

#Question 5
## factors are a subset of characters that are used for categorical variables 
###while characters are objects in quotations


#Function Types

# Question 1
rnorm(n = 10, mean = 33.2, sd = 13.8) # it returned different result


# question 2
pnorm()
qnorm()
dnorm()
runif()

#  Question 3
sample(x, size, replace = FALSE, prob = NULL)
set.seed(42) # for reproducibility 
sample(1:10, 5)
sample(1:10, 5, replace = TRUE) #sampling with replacements 
sample(letters, 6) # sampling characters 

# Question 4
sqrt() # square root of numbers
square() # square of numbers
cor() # correlation of numbers 
round() # rounding of numbers

# Question 5

## custom function for a square of a number
square_of_numbers <- function(x) {
 return(x ^ 2)
}
square_of_numbers(5) # this example would return 25

###  custom function for a cube of a number
cube_of_numbers <- function(x) {
  return(x ^3)
}
cube_of_numbers(2) # this example would return 8

#### the power function that raises a number to the power of another number
power <- function(base, exponent) {
  return(base ^ exponent)
}
power(2, 3) # this example would return 8
 
 # Question 6
 set.seed() # is used for creating fixed numbers to ensure reproducibility 
 ## of data
 
 # How to check if a vector is having a NA value
 missing_vector <- c(NA, NA, 1:10, NA, NA, 34, 87)
 my_vector <- anyNA(missing_vector)
 my_vector
 