class (12)
## 12 is numeric
class (1.2)
## 1.2 is also numeric
class (12L)
## 12L is an integer
class ("12L")
## 12L is a character
class (pi)
## pi is numeric

## No 2
### Yes, the result is as expected because of the following:
### (a) 12 is not enclosed in apostrophe (""), hence, it is numeric.
### in addition, it is also a double because actually, it is assumed by R to be 12.0
### and for it to be a double, then it has to be numeric

## (b) 1.2 is numeric because it is also a decimal number

## (c) 12L is an integer because it is a whole number

## (d) "12L" is a character because it is enclosed in apostrophe

## (e) pi is numeric because in actual fact, it is 3.142..

## No 3.

is.numeric (12)
## it is true
is.numeric (1.2)
## it is true
is.integer (12L)
## it is true
is.character ("12L")
## it is true
is.numeric (pi)
## it is true

## NO 4.

as.numeric (letters)
## the output is NA
as.factor (LETTERS)
## the output is the letters of the alphabets. it also shows the levels which are the letters of the alphabet too.
class (14.3)
## the output is numeric

## No 5.
## factors are categorical variables with defined levels within, and that are stored as integers
### while characters are string data types with no defined levels within them

## Function Types
## No 1.
rnorm (70, 37, 2.4)
## Yes, i got the same result
?rnorm
## we have dnorm, pnorm and qnorm

?sample()
Kunle <- 1:50
Kunle
sample (kunle, 15, replace = TRUE)
boy <- 1:50
boy
sample (boy, 15, replace = TRUE)
sample (boy, 15, replace = FALSE)
sample (c(boy, 15, replace = TRUE, prob = c("A", "B", "C"))

## No 4.
# (a) sqrt(x)
# (b) x^2 or x*2
# (c) cor(x,y)
# (d) round(x,digits)

## No 5.
# (a) function (x) {x^2}
# (b) function (x) {x^3}
# (c) function (x(2,4)) {2^4}

# No 6.
## the set.seed is used to ensure that the sequence of the generated random values will be the same every time it is required
## No 7.

missing_vector <- c(NA, NA, 1:10, NA, NA, 34, 87)
is.na(missing_vector)
## to check, i will use is.na(missing_vector)
