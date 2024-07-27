a<-12
b<-1.2
c<-12L
d<-"12L"
e<-pi
class(a)
#numeric
class(b)
#numeric
class(c)
#integer
class(d)
#character
class(e)
#numeric
#result is as expected
#12 is numeric,1.2 is numeric
#the L after 12 makes it an integer and the quotation mark makes "12L" a character
#pi has a numeric value
is.numeric(12)
#TRUE
is.numeric(1.2)
#TRUE
is.integer(12L)
#TRUE
is.character("12L")
#TRUE
is.numeric(pi)
#TRUE
as.numeric(letters)
#[1] NA NA NA NA NA NA NA NA NA
#[10] NA NA NA NA NA NA NA NA NA
#[19] NA NA NA NA NA NA NA NA
#Warning message:
#NAs introduced by coercion
as.factor(LETTERS)
# [1] A B C D E F G H I J K L M N
#[15] O P Q R S T U V W X Y Z
#26 Levels: A B C D E F G ... Z
class(14.3)
#numeric
#character has no order/levels whle factor introduces order/level to your data.
#it categorizes your data

#FUNCTION TYPES
rnorm(n=10,mean=33.2, sd=13.8)
#NO, different set of numbers was gotten
?sample()
#takes a sample of the specified size from the elements of x using either with or without replacement.
x<-1:20
#assigning 1:20 to variable x
x
sample(x,10,replace=FALSE)
#[1]  7 13 10  6  8  3 16 15 12 20
sample(x,12,replace=TRUE)
#[1]  1  6  2  4 19 13 16 16 14 18 17 14
#square root of number {sqrt()}
sqrt(16)
#square of number
?square
#no inbuilt function for finding square of a number
#correlation of number cor()
#rounding of number round()
a <-1:5
print(a)
#[1] 1 2 3 4 5
square_of_number <-function(a){
  a^2
}
a^2
#[1]  1  4  9 16 25
Cube_of_number<-function(a){
  a^3
}
a^3
#[1]   1   8  27  64 125
power_function <- function(x,y){
  x^y
}
#where x is the original number
#y is the power to which x is raised to
y <-1:10
x <-2
x^y
#[1]    2    4    8   16   32
#[6]   64  128  256  512 1024

#set.seed allow the same set of random numbers to be generated when rnorm() is 
#used

missing_vector <- c(NA, NA, 1:10, NA, NA, 34, 87)
#is.na confirms if there is a missing vector
is.na(missing_vector)
#[1]  TRUE  TRUE FALSE FALSE
#[5] FALSE FALSE FALSE FALSE
#[9] FALSE FALSE FALSE FALSE
#[13]  TRUE  TRUE FALSE FALSE