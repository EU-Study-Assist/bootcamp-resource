##DATA TYPES###

########### Question one ----------------------------------------------------------------
##1a: 12 is numeric and an interger

##1b: 1.2 is numeric and double/decimal number

##1c:12L is numeric and an integer

##1d: "12L" is a character/string

##1e: pi is numeric and double


##### Question 2
# Yes, the result is as expected. Why, because I used typeof() to confirm the classes


####Question 3
typeof(12)

typeof(1.2)

typeof(12L)

typeof("12L")

typeof(pi)

####Question 4: the output of the following code

as.numeric(letters)
##It gave NA which means no available

as.factor(LETTERS)
##it wrote A-Z in uppercase

class(14.3)
##it gave the class numeric

####Question 5
##A character is a string while a factor is a categorical variable with different levels


###FUNCTION TYPES######

###Question 1: Yes I did
rat_weight <- rnorm(n = 10, mean = 33.2, sd = 13.8)
rat_weight

rnorm(20, 5, 4) ## I tried to generate mine

###Question 2: runif() is also used to generate random numbers of uniform distribution

###Question 3:Exploring the sample() function 
sample(5:50,20)

###Question 4###
##4a: The function for finding square root is sqrt()

##4b: The function for finding the square of numbers is x**2 or x^2 

##4c:The function for finding the correlation of numbers is cor()

##4d: The function for rounding of numbers is round()

###Question 55. Write a custom function for:
##5a. The square of a number
sqrt(9)

##5b. The cube of a number
3**3
3^3

##5c. The power function that raise a number to the power of another number
10^4

###Question 6: The set.seed function is used to create reproducible random numbers 

###Question 7:7. How to check if a vector is having a NA value. Running the function is.na 
##will return with a true or false to inform if the value is missing or not
missing_vector <- c(NA, NA, 1:10, NA, NA, 34, 87)
missing_vector
is.na(missing_vector)
