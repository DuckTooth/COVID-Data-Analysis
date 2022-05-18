# load packages

library(ggplot2)
library(tidyverse)

# Deaths vs. confirmed deaths in first half

six_month_data <- ggplot(data = covid_data[57:88,])

six_month_data + 
  geom_line(aes(date, death, group = 1, color = "death")) +
  geom_line(aes(date, deathConfirmed, group = 1, color = "deathConfirmed")) +
  scale_x_discrete(guide = guide_axis(n.dodge=3, check.overlap = TRUE))

# Deaths vs. confirmed deaths in 9 months

nine_month_data <- ggplot(data = covid_data[57:332,])

nine_month_data + geom_line(aes(date, death, group = 1, color = "death")) +
  geom_line(aes(date, deathConfirmed, group = 1, color = "deathConfirmed")) +
  scale_x_discrete(guide = guide_axis(n.dodge=3, check.overlap = TRUE))

# Deaths vs. confirmed deaths after one year

twelve_month_data <- ggplot(data = covid_data[57:411,])

twelve_month_data + geom_line(aes(date, death, group = 1, color = "death")) +
  geom_line(aes(date, deathConfirmed, group = 1, color = "deathConfirmed")) +
  scale_x_discrete(guide = guide_axis(n.dodge=3, check.overlap = TRUE))

# Bar graph of death ratio

twelve_month_data + geom_histogram(aes(x = death), fill = "DarkRed", 
                                   color = "Black")

