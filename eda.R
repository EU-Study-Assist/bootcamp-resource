
# Exploratory Data Analysis -----------------------------------------------
library(tidyverse)
library(readxl)
chick_weight <- read_excel("data/chickweight.xlsx")

## Preview data --------------------------------------------------
head(chick_weight)
tail(chick_weight)

head(chick_weight, n = 10)
tail(chick_weight, n = 10)

dim(chick_weight)

# install.packages(car)
set.seed(3423)

car::some(chick_weight)
chick_weight |> 
  car::some()

chick_weight[sample(nrow(chick_weight), 10), ]


str(chick_weight)

summary(chick_weight)

# Univariate --------------------------------------------------------------
chick_weight <- chick_weight |> 
  mutate(
    Chick = as.factor(Chick),
    Diet = as.factor(Diet)
  )

summary(chick_weight)

chick_weight |> summary()


### Single variable analysis
chick_weight |> 
  group_by(weight) |> 
  summarize(
    frequency = n()
  )

chick_weight |> 
  count(weight)

mean(chick_weight$weight)

median(chick_weight$weight)

quantile(chick_weight$weight, probs = c(0, .25, .50, .75, 1))

chick_weight$weight
mean(chick_weight$Time)

mean(chick_weight$weight)

chick_weight |> 
  count(Diet)

chick_weight |> 
  count(Chick, Diet) |> 
  arrange(n) |> 
  print(n = 100)

chick_weight |> 
  count(Chick)


print(arrange(count(chick_weight, Chick, Diet), n), n = 100)


## visualization --------------------------------------------------------
### ggplot2 primer --------------------------------

chick_weight

class_people <- tibble(
  names = c("faith", "agatha", "nomvume", "soso",
            "promise", "olakunle", "thandekile", "anap",
            "thomas"),
  hair_length = c(1, 5, 7, 9, 3, 3, 5, 5, 0.5),
  height = c(1.4, 1.6, 1.7, 1.4, 1.8, 2, 1.2, 1.6, 1.7),
  y2020 = c(100, 120, 120, 112, 111, 130, 160, 160, 170),
  y_2022 = c(rep(140, 5), rep(180, 4)),
  y2024 = c(200, 180, 180, 180, 200, 250, 240, 240, 250)
)

class_people |> 
  pivot_longer(
    cols = starts_with("y"),
    names_to = "years",
    values_to = "salary"
  ) |> 
  mutate(
    years = parse_number(years)
  )

- "data"
- "mapped to variables"
- "geometry"
- "scales"
- "coord"

ggplot(chick_weight)



hist(chick_weight$weight)
plot(chick_weight$weight, type = "h")

# Bivariate ---------------------------------------------------------------



# Multivariate ------------------------------------------------------------


