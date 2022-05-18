# load packages

library(ggplot2)
library(tidyverse)

# Cumulative Ventilation vs. Cumulative Data for one year

vent_data1 <- ggplot(covid_data[132:411,], aes(x = date))

vent_data1 + 
  geom_line(aes(y = onVentilatorCurrently, group = 1, 
                color = "Currently Ventilated")) +
  geom_line(aes(y = deathIncrease, group = 1, color = "Deaths")) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  theme(axis.title.y = element_blank()) +
  ggtitle("Deaths vs. Ventilated For Daily Basis")
