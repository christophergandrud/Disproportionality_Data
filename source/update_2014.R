# ---------------------------------------------------------------------------- #
# Update with 2014 Gallagher data
# http://www.tcd.ie/Political_Science/staff/michael_gallagher/ElSystems/Docts/ElectionIndices.pdf
# Christopher Gandrud
# 18 March 2015
# MIT License
# ---------------------------------------------------------------------------- #

# Set working directory. Change as needed.
setwd('/git_repositories/Disproportionality_Data/')

# Load required packages
library(dplyr)
library(stringr)
if (!('rio' %in% installed.packages()[, 1]))
    devtools::install_github('leeper/rio', ref = 'fread')
library(rio)
library(countrycode)


# Load raw updated data. Hand entered from original PDF
new <- import('source/raw_data/dis_2014.csv') %>% filter(year > 2011)

# Load older version 
old <- import('Disproportionality.csv')
old$iso2c <- countrycode(old$country, origin = 'country.name', 
                         destination = 'iso2c')

# Clean up columns
for (i in names(new)) new[, i] <- str_trim(new[, i])
for (i in 3:5) new[, i] <- as.numeric(new[, i])

# Select just distroportionality
new <- new %>% select(disproportionality)