# DATA TYPES
# Answers for question, checking class
class (12)
class (1.2)
class (12L)
class ("12L")
class (pi)

# Answer for question 2
# Yes, the results were as expected because by using "class" one expects R to describe the type of object or data one is dealing with eg numeric, character etc.

# Answer for question 3,checking types with is.functions
is.numeric(12)
is.double(12)
is.numeric(1.2)
is.double(1.2)
is.integer(12L)
is.character("12L")
is.numeric(pi)
is.double(pi)

#Answer for question 4 
as.numeric(letters)
as.factor(LETTERS)
class(14.3)

#Answer for question 5, the difference between character and factor
# Character are basic data types of string or text without any level or structure. 
# Factors are a type of categorical data with fixed and limited values normally known as levels. 
factor_vec <- factor(c("apple", "pear", "apple", "banana"))
#levels: apple banana banana

#FUNCTION TYPES 
# 1.No, because without setting the seed, random numbers will always be different.

# 2. Functions similar to rnorm function for generating numbers: 
help.search("random numbers")
# Binomial Distribution rbinom(n,size, prob)
# Uniform Distribution runif(n,min = 0, max = 1)
# Random Sample sample(x,size, replace =  FALSE, prob = NULL)

#4. Functions for finding square root numbers, square of numbers, correlation numbers, rounding of numbers
sqrt()
x^2
cor()
round()

# 5. Creating My_function: 
# Custom function for the square of a number
square <- function() {
  result <- x^2
  return(result)
}

# Custom function for the cube of a number
cube <- function() {
  result <- x^3
  return(result)
}

# Custom function for raising a number to the power of another number
power <- function(base, exponent) {
  result <- base^exponent
  return(result)
}

#6. What set.seed is used for: 
# Set.seed is used to make sure that the same set of random numbers are used every time a code is run, thereby ensuring that results are produced the same way.  

#7. How to check for vector having NA value
missing_vector <- c(NA, NA, 1:10, NA, NA, 34, 87)
is.na(missing_vector)


