library(tidyverse)
life_expec <- read.csv("life_expec.csv")
colnames(life_expec)
life_expec %>%
  filter(Year == 2000)

life_expec <- life_expec %>%
  filter(Race == "All Races", Sex == "Both Sexes")

## breaking down a plot into layers is important because it is how the ggplot2 package understands and builds a plot

## pipe the data into a ggplot
life_expec %>%
  ggplot()

## build the axes
life_expec %>%
  ggplot(aes(x = Year, y = Avg_Life_Expec))

## add shape to the graph. geom_line() creates a line graph and geon_point() creates a scatter plot, and so on
life_expec %>%
  ggplot(aes(x = Year, y = Avg_Life_Expec)) +
  geom_line()

## note that the + sign permits the addition of further layers

## adding a title and axis labels
life_expec %>% # data layer
  ggplot(aes(x = Year, y = Avg_Life_Expec)) + # axes layer
  geom_line() + # geom layer
  labs( # annotations layer
    title = "United States Life Expectancy: 100 Years of Change",
    y = "Average Life Expectancy (Years)"
  )

