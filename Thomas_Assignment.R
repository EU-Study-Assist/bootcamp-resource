#Data types

#1_What result will you get when you check the class of the following

class(12)                # a answer is numeric
class(1.2)              # b answer is numeric
class(12L)             # c answer is integer
class("12L")          # d answer is character
class(pi)            # e answer is numeric

#2_Is the result as expected?
"Yes,the class shows all of the data type of the variable above.
Hence, the data in number one were expected to be numeric, integer and character"

#3_Use the appropriate is._ function to assert the data type in question 1

is.numeric(12)         # answer is TRUE
is.numeric(1.2)         # answer is TRUE
is.integer(12L)          # answer is TRUE
is.character("12l")       # answer is TRUE
is.numeric(pi)             # answer is TRUE

#4_What is the output of the following code:
as.numeric(letters)      # answer is NA
as.factor(LETTERS)       # answer is the alphabet in CAP
class(14.3)              # answer is numeric

#5_What is the difference between factors and characters?
"factors have levels or order while character are literally strings, no significant order"


# Function Type

#1_When you tried the rnorm() function did you get the same result as given in the document?
"No, there is always new dataset of numbers"

#2_What are the functions that are similar to rnorm for generating random numbers
"Others include, runif()_for uniform distribution,rbinom()_for binomial distribution"

#3_Explore the sample() function in R

#4_What is the function for finding the following

sqrt()              #square root of numbers
square of numbers
cor()               #correlation of numbers
round()            #rounding of numbers

#5_Write a custom function for

square <- function(x) {
  
   x^2                    #The square of a number
}                 

cube <- function(a) {
  
  a^3                    #The cube of a number
}                 

power_function <- function(x, y) {
  
  x^y                  #The power function of a number
  
}

#6_What is the set.seed function used for

"for ensuring reproducibility of research or results"

#7_How do you check if a vector is having a NA value. Take the code below as an example. missing_victor <- c(NA, NA, 1:10, NA, NA, 34, 87)

"by using is.na"
missing_vector <- c(NA, NA, 1:10, NA, NA, 34, 87)      # Check for any NA values
has_na <- is.na(missing_vector)
print(has_na)        # answer is TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
