
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

# components of a chart
# - "data"
# - "mapped variables to aesthetics" 
# - "geometry"
# - "scales"
# - "coord"

ggplot(chick_weight, aes(weight)) +
  geom_boxplot()

summary(chick_weight)

ggplot(chick_weight, aes(weight)) +
  geom_density(
    col = "dodgerblue3",
    linewidth = 1
  ) +
  labs(
    x = "Weight",
    y = "Density",
    title = "Density Distribution of Chick's Weight",
    subtitle = "Weight is right-skewed",
    caption = "Olamide Michael Adu @ 2024"
  ) +
  scale_x_log10() +
  theme_light() +
  theme(
    plot.title = element_text(face = "bold", size = 16)
  )
  
  
ggplot(chick_weight, aes(weight)) +
  geom_histogram(
    bins = 50,
    col = "gray",
    fill = "tomato"
  ) +
  labs(
    x = "Weight",
    y = "Frequency",
    title = "Distribution of Chick's Weight",
    subtitle = "Weight is right-skewed",
    caption = "Olamide Michael Adu @ 2024"
  ) +
  theme_light()




ggplot(chick_weight, aes(Diet)) +
  geom_bar(
    fill = "springgreen3"
  ) +
  labs(
    title = "Frequency of Chick Diets"
  ) +
  theme_minimal()


chick_weight |> 
  mutate(
    Diet = factor(Diet, labels = c("mash",
                                   "starter", "growers", "finishers"))
  ) |> 
  ggplot(aes(Diet)) +
  geom_bar(
    fill = "springgreen3"
  ) +
  labs(
    title = "Frequency of Chick Diets"
  ) +
  theme_minimal()





hist(chick_weight$weight)
plot(chick_weight$weight, type = "h")

# Bivariate ---------------------------------------------------------------

## Two cat
chick_weight |> 
  summarise(
    .by = Diet,
    total_weight = sum(weight),
    average_weight = mean(weight)
  ) |> 
  ggplot(aes(Diet, total_weight)) +
  geom_bar(stat = "identity")


chick_weight |> 
  ggplot(aes(Chick, fill = Diet)) +
  geom_bar(position = "dodge") +
  coord_flip()

## Two Num
chick_weight |> 
  ggplot(aes(Time, weight)) +
  geom_jitter(col = "indianred3") +
  geom_smooth(col = "gray4", se = FALSE)

chick_weight |> 
  ggplot(aes(Time, weight)) +
  geom_line() +
  facet_grid(~Diet)

cor(chick_weight$weight, chick_weight$Time)
chick_weight |> 
  summarize(
    correlation = cor(weight, Time)
  )


## One Num and One Cat
chick_weight |> 
  ggplot(aes(Diet, weight)) +
  geom_col() +
  labs(
    title = "Total weight from the Different Diets"
  )

chick_weight |> 
  ggplot(aes(Diet, weight)) +
  geom_boxplot() +
  labs(
    title = "Average weight from the Different Diets"
  )

summary(chick_weight)


# Recap -------------------------------------------------------------------
chick_weight |> 
  ggplot(aes(weight)) +
  geom_density(
    col = "aquamarine4",
    linewidth = 1.5
  ) +
  labs(
    x = "Weight",
    y = "Density",
    title = "Weight distribution of chicks",
    subtitle = "Weight is right-skewed",
    caption = "Olamide Adu @2024"
  ) +
  scale_x_continuous(
    breaks = seq(0, 400, 20)
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(size=15, face = "bold", hjust = .5)
  )

colors()

chick_weight |> 
  ggplot(aes(x = Diet, y = weight)) +
  geom_bar(
    stat = "identity",
    fill = "khaki3"
  ) +
  scale_y_continuous(
    breaks = seq(0, 30000, 2500),
    labels = scales::label_dollar()
  )


# Multivariate ------------------------------------------------------------
chick_weight |> 
  ggplot(aes(Time, weight, col = Diet)) +
  geom_point(size = .5) +
  geom_line() +
  facet_wrap(~Chick)

chick_weight |> 
  ggplot(aes(Diet, weight, fill = Chick)) +
  geom_boxplot()

chick_max_weight <- chick_weight |> 
  group_by(Chick, Diet) |> 
  summarize(
    max_time = max(Time),
    max_weight = max(weight)
  )

chick_weight |> 
  ggplot(aes(Time, weight, group =Chick, col = Diet)) +
  geom_line() +
  ggrepel::geom_text_repel(
    data = chick_max_weight,
    aes(x = max_time, y = max_weight, label = Chick),
    nudge_x = 1.2,
    nudge_y = 1.2
  )

# Inferential -------------------------------------------------------------

chick_weight |> 
  select(Chick)

chick_weight |> 
  count(Chick) |> 
  arrange(desc(n)) |> 
  ggplot(aes(n, fct_reorder(Chick, n))) +
  geom_col()


chick_weight |> 
  count(Time) |> 
  ggplot(aes(Time, n)) +
  geom_line() 

chick_weight |> 
  filter(!Chick %in% c(8, 44, 15, 16, 18))

chick_weight |> 
  slice_max(Time) 

day_21_weight <- chick_weight |> 
  filter(Time == 21)

# Student t-test ----------------------------------------------------------
# market_weight = 190g 0.19kg

### Two-tailed test
## Null: The true mean weight of chicks after 3 weeks is equal to 190g

## Alternative: The true mean weight of chicks after 3 weeks is not equal to 190g


two_tailed <- t.test(day_21_weight$weight, mu = 190)

### one-tail (less)

## Null: The true mean weight of chicks after 3 weeks is less than 190g
## Alternative: The true mean weight of chicks after 3 weeks is not less than 190

t.test(day_21_weight$weight, mu = 190, alternative = "less") ## Null hypothesis accepted

## Null: The true mean weight of chicks after 3 weeks is greater than 190g
## Alternative: The true mean weight of chicks after 3 weeks is not greater than 190g

t.test(day_21_weight$weight, mu = 190, alternative = "greater") # Alternative hypothesis accepted

# Independent t-test/ Two-sample t-test -----------------------------------
falcon <- stats4nr::falcon
falcon

# hypothesis
# Null: The average tail length of male and female falcon is the same
# tilde

t.test(tail ~ sex, data = falcon)
#t.test(data$column ~ data$column_1)
#t.test(falcon$F ~ falcon$M)

# two groups are always compared.
unique(chick_weight$Diet)

# ANOVA (Analysis of Variance) --------------------------------------------
chick_aov <- aov(weight ~ Diet - 1, data = chick_weight) |> 
  anova()

chick_aov
# Linear regression -------------------------------------------------------
chick_ml <- lm(weight ~ Diet - 1, data = chick_weight)
summary(chick_ml)


lm(weight ~ Diet + Time , data = chick_weight) |> 
  summary()

lm(log(weight) ~ Diet + Time + Diet:Time, data = chick_weight) |> 
  summary()
