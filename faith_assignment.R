# 1. What result will get when you check the class of the following:
class(12) #numeric
class(1.2) #numeric
class(12L) #integer
class('12L') #character
class(pi) #numeric
class(1.2L) #numeric

# 2. Is the result as expected: Yes
## 12 is a whole number without any decimal, indicating its class as numeric
## 1.2 is tagged at a decimal number or float, therefore identified as numeric
## 12L is an integer because when L is added to a whole number in R, its implies 'Integer'
## pi is an inbuilt function in R and comprises of decimal number, resulting in class 'numeric'

# 3. Use the appropriate (is.) function to assert the data types in question 1
is.numeric(12) #TRUE
is.numeric(1.2) #TRUE
is.integer(12L) #TRUE
is.character('12L') #TRUE
is.numeric(pi) #TRUE
is.integer(1.2L) #FALSE

# 4. What is the output of the following code:
as.numeric(letters)
## NA: NA means not applicable, indicating that letter cannot be converted to numbers.
as.factor(LETTERS)
## The letters where categorized into 26 different levels from A to Z.
class(14.3)
## the variable 14.3 belongs to the class: Numeric 

# 5. What is the difference between factors and characters
## Factors are categorical variables, that is classifying variables into different levels
## while characters are variables that are know as strings, its can be numeric, alphabet and alphanumeric

## Function Types........................................................................................
# 1. When you tried the rnorm() function did you get the same result as given in the document?
rnorm(25, 5)
rnorm(125, 5)
# 2. What are the functions that are similar to norm for generating random numbers
rbinom()

# 3. Explore the sample() function in R.
sample(1:125, 5) # sample 5 random numbers from 1 to 125
sample(120) # sample 120 random numbers
sample(120, 2) # sample 2 random numbers from 0 to 120

# 4. What is the function for finding the following
## a. square root of numbers
sqrt()
## b. square of numbers
x
## c. correlation of numbers
## d. rounding of numbers

# 5. Write a custom function for:
## a. The square of a number

square_num <- function(x) {
  return(x^2)
}
## b. The cube of a number
cube_num <- function(x) {
  return(x^3)
}
## c. The power function that raise a number to the power 
power_num <- function(X) {
  return()
}
# What is the set.seed function used for
?set.seed()
set.seed(2)
## Used to initiate random numbers.  
# How do you check if a vector is having NA value. Take the code below as an example
missing_vector <- c(NA, NA, 1:10, NA, NA, 34, 87)
missing_vector
is.na(missing_vector)
