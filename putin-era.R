# How to make timeline in R & RStudio
# Putin as President or Prime-Minister
# Author: ILYA BYKOV https://prof-bykov.blogspot.com/
# Based on https://cran.r-project.org/web/packages/vistime/vignettes/gg_vistime-vignette.html 

# Install R packages if necessary 
install.packages("vistime", dependencies = TRUE) # vistime is a package for pretty timelines
install.packages("tidyverse", dependencies = TRUE) # packages like ggplot2, dplyr, stringr, etc.

# Load R packages 
library("vistime")
library("tidyverse")

# Check working directory
getwd()

# Get data
putin_era <- read.csv("C:/Users/user/Documents/putin-era.csv", header = TRUE)
# Based on https://en.wikipedia.org/wiki/List_of_presidents_of_Russia 
# Based on https://en.wikipedia.org/wiki/List_of_heads_of_government_of_Russia  

# Check world data if necessary 
view(putin_era)

# Simple timeline
gg_vistime(putin_era)

# Final timeline
gg_vistime(putin_era, optimize_y = FALSE, linewidth = NULL, title = "Putin's Era", show_labels = FALSE, background_lines = NULL)
