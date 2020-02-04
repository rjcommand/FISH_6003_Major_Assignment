# FISH 6003: Major Assignment Data Setup

# Rylan Command
# Created: Jan 15, 2020
# Last edited: Jan 15, 2020

library(tidyverse)

source("./R/6003Functions.R")

# Load the data files
# It is not tidied, aside from it being saved as a CSV

gracilis <- read.csv("./data/DatasetS1.csv") 
penicillatus <- read.csv("./data/DatasetS2.csv")

############################################################
## Join P. gracilis and P. penicillatus datasets together ##
############################################################

# Join the P. gracilis and P. penicillatus datasets together
lobster <- rbind(gracilis, penicillatus)

# Create a vector of species names
species <- c(rep("gracilis", 3186), rep("penicillatus", 5086))

# Add a column for species
lobster <- lobster %>% 
  mutate(SPECIES = species)
# Good to go!

# DESCRIBE THE VARIABLES

# What does the dataset contain?

# HOME_PORT           Port of origin for fishers
# MONTH               Month of fishing
# YEAR                Years considered for this study
# SST                 Sea surface temperature (˚C)
# FISHING_SCHEDULE    Fishing done at night or during day
# DATA_SOURCE         Observers onboard or landings
# MACROZONE           Macrozone on a given island
# ILAND               Islands where the fishery was carried out
# REGION              3 Fishing regions in the Galapagos
# DISTANCE            Distance from the fishing site to the nearest fishing port
# LAT                 Coordinates of latitude
# LON                 Coordinates of longitude
# DIVERS              The minimum sampling unit; used to conduct fishing activity
# DIVING HOURS        Number of hours divers fished for lobster
# CPUE                Observed values of a CPUE (relative abundance, kg-tail / (diver x hour))
# SPECIES             Name of species of spiny lobster captured during fishing

#####################
# Clean the data    #
#####################

lobster_untidy <- lobster  # If ever need to go back to original dataset we can


# Did it load correctly?
# - Look for extra columns or rows
head(lobster_untidy)  # Looks good
tail(lobster_untidy)  # Looks good
str(lobster_untidy)  # Looka good


# Are data types what they should be?
# - Look for numbers that are factors, etc.
sapply(lobster_untidy, class)


# Are there impossible values (numbers) 
# - Check each numerical value one by one
sapply(lobster_untidy[, sapply(lobster_untidy, is.numeric)], range)  # There are some issues here
# 1) NA values for SST, DISTANCE, LAT, and LON


# Let's look at SST first
lobster_untidy %>% 
  filter(is.na(SST))  # There are 3 observations where SST is NA - I'll leave these, they won't be included in any analysis using SST


# Now let's look at DISTANCE
lobster_untidy %>% 
  filter(is.na(DISTANCE))  # There are 64 observations with NA for DISTANCE
# Missing values for DISTANCE may be important later, as these observations will be excluded from analysis


# Now let's look at LAT and LON
lobster_untidy %>% 
  filter(is.na(LAT) | is.na(LON))  # All rows that have NA for one have it for both
# Missing values for LAT and LON are not critical for the analysis


# Now let's look at the "No" column
plot(lobster_untidy$No)
range(lobster_untidy$No)
length(lobster_untidy$No)
View(unique(lobster_untidy$No))
View(lobster_untidy)
# It looks like either:
# 1) there was a numbering error in the raw data, or 
# 2) some data were dropped, or 
# 3) some data were simply not recorded
# This shouldn't matter for the analysis, so I'll leave it for now


# Are there incorrect factor levels? (factors?)
# - Check levels of all factors one by one
sapply(grac_untidy[, sapply(grac_untidy, is.factor)], levels)  # One issue

sapply(lobster_untidy[, sapply(lobster_untidy, is.factor)], levels)  # One issue

# Re-code 'ñ' character in MACROZONE and ILAND variables
lobster_untidy <- lobster_untidy %>% 
  mutate(MACROZONE = recode(MACROZONE,
                            "Espa\x96ola" = "Española"),
         ILAND = recode(ILAND,
                        "Espa\x96ola" = "Española"))

# Check it out
levels(lobster_untidy$MACROZONE)
levels(lobster_untidy$ILAND)
# Looks good

# In all cases, make appropriate decision as you go through. 

# Data verification complete. Move on to exploration
