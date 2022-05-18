# load packages

library(ggplot2)
library(tidyverse)

# Create baseline data set

test_data1 <- ggplot(covid_data, aes(x = date))

# Plot the daily increase/decrease in positive test results

test_data1 + 
  geom_line(aes(y = positiveIncrease, 
                color = "Positive", group = 1)) +
  geom_line(aes(y = negativeIncrease, 
                color = "Negative", group = 1)) +
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE)) +
  ggtitle("Daily Tests") +
  ylab("")
