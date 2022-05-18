# load packages

library(ggplot2)
library(tidyverse)

# Concatenate the data and create a graph

twelve_month_data2 <- ggplot(covid_data[57:332,], aes(x = date, y = value))

twelve_month_data2 + 
  geom_line(aes(y = hospitalized, group = 1, color = "hospitalized"), size = 1) +
  geom_line(aes(y = recovered, group = 1, color = "recovered"), size = 1) +
  geom_line(aes(y = death, color = "death"), group = 1, size = 1) +
  scale_x_discrete(guide = guide_axis(n.dodge=3, check.overlap = TRUE)) +
  theme(axis.title.y = element_blank())

# Create a bar graph of the cumulative recovery data

Cumu_data <- ggplot(covid_data[411,])

Cumu_data + 
  geom_col(aes(x = "death", y = death), fill = "darkred") +
  geom_col(aes(x = "hospitalized", y = hospitalized), fill = "darkblue") +
  geom_col(aes(x = "recovered", y = recovered), fill = "darkgreen") +
  theme(axis.title.y = element_blank()) +
  theme(axis.title.x = element_blank()) +
  ggtitle("COVID-19 Recovery") +
  ylab("Value")
