# Q1. What result will you get when you check the class of the following:

# a. 12
Class(12)
# Ans: Error

# b. 1.2
class(1.2)
# Ans: numeric

# c. 12L
class(12L)
# Ans: integer

# d. "12L"
class("12L")
# Ans: character

# e. pi
class(pi)
# Ans: numeric

# Q2. Is the result as expected?
# a. If yes, why?
# The result is as expected for for questions 1b, 1c, 1d and 1e as they all express their perceived data types respectively, such that "Q1b. 1.2" expresses a numeric value as well as others.

# b. If no, why?
# The result for Q1a ought to be an integer or whole number instead an error in class(12) code is returned because it cannot identify the class of the object. Moreso, the object hasn't been assigned as a variable.

# Q3. Use the appropriate is._ function to assert the data type in question 1.
#a.
is.integer(12)
# Ans: FALSE

#b.
is.numeric(1.2)
# Ans: TRUE

#c.
is.integer(12L)
# Ans: TRUE

#d.
is.character("12L")
# Ans: TRUE

#e.
is.numeric(pi)
# Ans: TRUE


# Q4. What is the output of the following code:
# a. as.numeric(letters)
as.numeric(letters)
# Ans: 
# [1] NA NA NA NA NA NA NA NA NA NA NA
# [12] NA NA NA NA NA NA NA NA NA NA NA
# [23] NA NA NA NA

# b. as.factor(LETTERS)
as.factor(LETTERS)
# Ans: 
# [1] A B C D E F G H I J K L M N O P Q
# [18] R S T U V W X Y Z
# 26 Levels: A B C D E F G H I J K ... Z

# c. class(14.3)
class(14.3)
# Ans: [1] "numeric"


# Q5. What is the difference between factors and characters?
# Ans: Characters are any object within a double column "" that also could be assigned to a variable while factors could appear as character i.e "" but describes the categorization of an object which can as well have or be in levels.



# Function Types
# 1. When you tried the rnorm() function did you get the same result as given in the document?
# Ans: NO
rnorm(n = 10, mean= 33.2, sd = 13.8)

# 2. What are the functions that are similar to rnorm for generating random numbers
# Ans: runif(), rexp()


# 3. Explore the sample() function in R.

sample(x)
?sample
# Ans: 
# Random Samples and Permutations
# Description
# sample takes a sample of the specified size from the elements of x using either with or without replacement.

# Usage
# sample(x, size, replace = FALSE, prob = NULL)

# sample.int(n, size = n, replace = FALSE, prob = NULL,
#            useHash = (n > 1e+07 && !replace && is.null(prob) && size <= n/2))



# 4. What is the function for finding the following:
# a. square root of numbers
# Ans: sqrt()

# b. square of numbers
# Ans: 


# c. Correlation of numbers
# Ans: cor()

# d. rounding of numbers
# Ans: round()


# 5. Write a custom function for:
# a. The square of a number
# Ans: 

my_square <- function(a,b) {
  result <- a * b 
  return(result)
}

my_square(2,4)

# b. The cube of a number
# Ans: 

my_cube <- function(c, d, e) {
  result <- c * d * e
  return(result)
}

my_cube(2* 3 *4)

# c. The power function that raise a number to the power of another number

my_cube <- function(f) {
  result <- 
  return(result)
}


# 6. What is the set.seed function used for?
?set.seed
# Ans: It is an integer vector function containing the random number generator (RNG) used in creating random numbers that can be reproduced.

# 7. How do you check if a vector is having a NA value. Take the code below as an example.
missing_vector <- c(NA, NA, 1:10, NA, NA, 34, 87)
is.na(missing_vector)
# Ans: is.na

