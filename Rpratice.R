## Data Manipulation
library(tidyverse)
library(janitor)
library(car)

plot_11 <- read_delim('data/ASFIS_sp_2023.txt')
emmision_data <- read_delim('data/emission_data.txt')

view(emmision_data)
emmision_data |> 
  str()

head(emmision_data)
tail(emmision_data)
car::some(emmision_data)

emmision_data |> 
  janitor::clean_names()
emmision_data |> 
  colnames()

emmision_data |> 
  summarise()
emmision_data |> 
  summary()
colnames(emmision_data)

emmision_data |> 
  group_by('emmission')

emmision_dlata |> 
  select(emission) |> 
  mutate(
    emission = emission * 1000
  )
emmision_data |> 
  ggplot(aes(emission, entity, fill = products))+
  geom_col()

t.test(emmision_data$emission, mu = 1000)

t.test(emmision_data$emission, emmision_data$per_capital_emission)
t.test(emmision_data$emission, emmision_data$per_capital_emission, 
       alternative = 'less')
t.test(emmision_data$emission, emmision_data$per_capital_emission, 
       alternative = 'greater')

emmision_data |> 
  ggplot(aes(per_capital_emission, entity, fill = products))+
  geom_col()+
  labs(
    x = 'Per_Capital_Emission',
    y = 'Entity of each Countries',
    title = 'Graph A',
    subtitle = 'Per Capital Emission'
  )

data_2 <- emmision_data |> 
  select('entity', 'code', 'products', emission, per_capital_emission) |> 
   mutate(
     emission = emission / 1000,
    as.factor(entity),
    as.factor(emission),
    as.factor(per_capital_emission),
    as.factor(code),
    as.factor(products)
  )
data_2 |> 
  ggplot(aes(emission, entity,  fill = products))+
  geom_col(
    size = 1
  )+
  theme_grey()

data_2 |> 
  ggplot(aes(per_capital_emission))+
  geom_line(
    size = 0.5
  )
head(emmision_data)
emmision_data |> 
  filter(entity == 'United States') |> 
  print()

emmision_data |> 
  filter(entity == 'Australia', entity == 'Austria')
view(emmision_data)

emmision_data |> 
  ggplot(aes(per_capital_emission, fill = products))+
  geom_histogram(
    binwidth = 0.02
  ) 
  
emmision_data |> 
  select(entity) |> 
  count(unique(entity))
 
  ggplot(aes(products))+
  geom_col()

length(unique(emmision_data$entity))

view(data_2)

data_2 |> 
  ggplot(aes(products))+
  geom_density()


emmision_data |> 
  str()

data_2 |> 
  ggplot(aes(emission, `as.factor(entity)`, fill = products))+
  geom_col()

head(emmision_data)
emmision_data |> 
  ggplot(aes(entity, products))

head(emmision_data)
emmision_data |> 
  ggplot(aes(per_capital_emission))+
  geom_density(
    col= 'red'
    )
emmision_data |> 
  ggplot(aes(emission))+
  geom_density()

emmision_data |> 
  ggplot(aes(emission, entity, fill = products))+
  geom_col(
    col = 'red'
  )
data_2 |> 
  view()

colnames(emmision_data)
emmision_data |> 
  str()
head(plot_11) #First 6 values of the data
tail(plot_11) #Last 6 values of the data

dim(plot_11) # Dimension of the data

view(plot_11) #View in spreadsheet mode

str(plot_11)
summarise(plot_11)
summary(plot_11)

print(plot_11, n=100)

plot_11 |> 
  arrange(height) |> 
  print(n = 100)


arrange(plot_11, height)

plot_11 |> 
  janitor::clean_names()

names(plot_11)
plot_11 |> 
  car::some()

view(plot_11)
plot_11 |> 
  order_by(Family) |> 
  slice_max(n = 10)

plot_11 |> 
  select(ISSCAAP_Group) |> 
  group_by(ISSCAAP_Group) |> 
  arrange(desc(ISSCAAP_Group)) |> 
  tail(ISSCAAP_Group)

glimpse(plot_11)

tbl_df(plot_11)
tibble::as

rm(list = ls())
