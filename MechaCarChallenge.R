
################# Deliverable 1: Linear Regression to Predict MPG #########################

# Use the library() function to load the dplyr package
library(dplyr)
library(tidyverse)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mpg_data <- read.csv(file='/Users/lucypepe/Desktop/MechaCar_Statistica_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns),
#and add the dataframe you created in Step 4 as the data parameter.
MechaCar_lm <- lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mpg_data)
MechaCar_lm

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
MechaCar_summary <- summary(MechaCar_lm)
MechaCar_summary 
