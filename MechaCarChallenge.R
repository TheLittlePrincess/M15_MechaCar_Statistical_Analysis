# Deliverable 1
# Use library() function to load the dplyr package
library(dplyr)
# Imported and read csv into a df
car_data <- read.csv('Datasets/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
# Write  linear regression model to be performed on all six variables (add the df from above)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data = car_data)
# Create the statistical summary of the linear regression model with the intended p-values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data = car_data))
# Deliverable 2
# Imported and read csv into a table
coil_data <- read.csv('Datasets/Suspension_Coil.csv',check.names = F, stringsAsFactors = F)
# Create a total_summary (mean, median, variance, and st.deviation) df of the PSI for all lots
total_summary <- coil_data %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
# Create a lot_summary (mean, median, variance, and st.deviation) df for EACH lot - use group_by() and summarize()
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
#Deliverable 3
# Use t.test() to determine if the PSI for all lots is statistically != from the mean of 1,500 pounds
t.test(coil_data$PSI, mu=1500)
# Use t.test() AND subset() to determine if the PSI for EACH lot is statistically != from the mean of 1,500 pounds
#Lot 1
t.test(subset(coil_data, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)
#Lot 2
t.test(subset(coil_data, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
#Lot 3
t.test(subset(coil_data, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)
