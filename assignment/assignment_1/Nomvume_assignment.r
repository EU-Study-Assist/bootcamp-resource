class(12)
#numeric
class(1.2)
#numeric
class(12L)
#integer
class("12L")
#character
class(pi)
#numeric

#(2). Yes , numeric are all numbers whether they are decimals or whole numbers
# where integer contains the L , and character is text with"".

is.numeric(12)
#True
is.numeric(1.2)
#True
is.integer(12L)
#True
is.character("12L")
#True
is.numeric(pi)
#True

as.numeric(letters)
#NA
as.factor(LETTERS)
#A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
#Levels: A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

class(14.3)
#numeric

# 5. Character(string) is anything in quote and factor displays levels 

#FUNCTIONS TYPES

rnorm(n=10,mean=33.2,sd=13.8)
#1. yes

#2. runif function 
# sample() function and set.seed function

#3. sample(1:20, 10)

#4.
# a. sqrt(n)
# b. number^2
# c. cor(n)
# d.round(rnorm(n= 100,m= 5.6,sd=15),digits = 2)

#5. a.  function() {
#result <- sqrt()
#return(result)
}

# b. function() {
#result <- number^3
#return(result)
}

# c.function() {
#result <- number^3
#return(result)
}

#d. function(base, exponent) {
#return(base^exponent)
}

#6. set.seed are fixed random numbers ( capture/screenshot and allow the next person to use the same nr)

#7. any (is.na(missing_vector))

