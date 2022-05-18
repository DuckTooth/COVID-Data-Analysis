# load packages

library(ggplot2)
library(tidyverse)

# create baseline for graphing data of first month

one_month_data <- ggplot(data = covid_data[57:88,])

one_month_data + 
  geom_point(aes(x = date, y = death), position = position_dodge2(w = 0.75)) +
  geom_line(aes(date, death, group = 1)) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("1 Month Covid Rise") +
  theme(plot.title = element_text(hjust = 0.5))

# Covid rise in first quarter

three_month_data <- ggplot(data = covid_data[57:149,])

three_month_data +
  geom_line(aes(date, death, group = 1)) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("3 Month Covid Rise") +
  theme(plot.title = element_text(hjust = 0.5))

# Covid rise in first half

six_month_data <- ggplot(data = covid_data[57:241,])

six_month_data + 
  geom_line(aes(date, death, group = 1)) +
  scale_x_discrete(guide = guide_axis(n.dodge=3, check.overlap = TRUE)) +
  ggtitle("6 Month Covid Rise") +
  theme(plot.title = element_text(hjust = 0.5))

# Covid rise after 9 months

nine_month_data <- ggplot(data = covid_data[57:332,])

nine_month_data +
  geom_line(aes(date, death, group = 1)) +
  scale_x_discrete(guide = guide_axis(n.dodge=3, check.overlap = TRUE)) +
  ggtitle("9 Month Covid Rise") +
  theme(plot.title = element_text(hjust = 0.5))

#> Covid rise in first year (graph ends 2021-03-07, 11 days before start of
#> Covid deaths)

twelve_month_data <- ggplot(data = covid_data[57:411,])

twelve_month_data +
  geom_line(aes(date, death, group = 1)) +
  scale_x_discrete(guide = guide_axis(n.dodge=3, check.overlap = TRUE)) +
  ggtitle("12 Month Covid Rise") +
  theme(plot.title = element_text(hjust = 0.5))
