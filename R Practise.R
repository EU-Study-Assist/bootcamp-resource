# R Practise Test Data Types, Data Structures and Functions 

# Part 1: Data Types
## Create data types
num <- 1500
str <- "trees"
bool <- TRUE

##Check Data Types 
class(num)
class(str)
class(bool)

#Part 2: Functions 
##Create a function 
add_numbers <- function(a, b) {
  return(a + b)
}
result <- add_numbers (1500, 50)

##Creating a Basic Function 
square_number <- function(x){
  return(x*x)
}
result <- square_number(4)
print(result)

##Creating a Basic Function
multiply_numbers <- function(a,b){
  return(a * b)
}
result <- multiply_numbers(3 , 5)
print(result)
multiply_numbers <- function(a, b) {
  return(a * b)
}
result <- multiply_numbers(3, 5)
print(result) 

##Create a vector 
vec <- c(1,2,3,4,5)
## Access Elements of a vector 
vec[4]
##Creat a list 
my_list <- list(num, str, bool)
number_list <- list(300, 400, 600, 800, 1000)
list2 <- list("nangamso", "olamide","micheal" ,"soso" ,"zamaleta")

##Access Elements of a list 
my_list [2]
number_list[3]
list2[4:5]

##Creat a Data Frame
df <- data.frame(Name = c("Soso", "Musa", "Zamaleta"), Age =c(20, 25, 30))
##Access Elements of Data Frame
df$Name
df$Age

#Basic Operations 
sum(7 + 3)
sub(10 - 5)
multiplication <- 4 * 6
division <- 20/4

#Simple Plot
plot(vec)
##The wrong way to plot a plot
plot(10, 30, 50, 80, 100)
##Correct way to plot a plot(plotting a single vector)
values <- c(10, 30, 50, 80, 100)
plot(values)
##Plotting two vectors 
x_values <- c(1,2,3,4,5)
y_values <- c(10, 30, 50, 80, 100)
plot(x_values, y_values)
##Plotting with specified points 
plot(1:5, c(10, 30, 50, 80, 100))
