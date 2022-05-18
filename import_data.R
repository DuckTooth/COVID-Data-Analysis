# import packages

library(tidyverse)

#> import data
#> Important: All data used originated from the Covid Tracking Project, which
#> has ended on March 7, 2021.
#> Their data can be found here: https://covidtracking.com/

covid_data <- read.csv("massachusetts-history.csv") 

# Flip dataset

covid_data <- covid_data[rev(rownames(covid_data)),]

# Reorder row numbers since they are backwards

rownames(covid_data) <- 1:411

# Remove all empty/necessary columns

covid_data <- subset(covid_data, select = -c(state))

empty_columns <- sapply(covid_data, function(x) all(is.na(x) | x == ""))

covid_data <- covid_data[, !empty_columns]


