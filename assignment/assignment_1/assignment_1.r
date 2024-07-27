
# Data Types Assignment --------------------------------------------------------

# Question 1 --------------------------------------------------------------
class(12)
class(1.2)
class(12L)
class("12L")
class(pi)

is.character()

birds <- factor(c("common bulbul", "laughing dove", "adamawa turtle dove"),
                levels = c("common bulbul", "laughing dove", "adamawa turtle dove"),
                ordered = TRUE)

is.factor(birds)
is.character(birds)
is.numeric(birds)
is.integer(birds)

my_bird <- c("common bulbul", "laughing dove", "adamawa turtle dove")
is.character(my_bird)

as.numeric(my_bird)

as.numeric(birds)

"a" + "a"

rat_weight <- rnorm(n = 10, mean = 33.2, sd = 13.8)
rat_weight
mean(rat_weight)

sample(my_bird, 10, replace = TRUE)

die <- 1:6

set.seed(2323)
my_roll <- sample(die, 100, replace = TRUE)

my_roll
set.seed(2323)
my_roll_2 <- sample(die, 100, replace = TRUE)

my_roll_2
length(my_roll[my_roll == 1])
