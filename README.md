#**Module 15 Challenge**

# AutosRUs’
## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. 
In this challenge we’re reviewing the production data for insights that can help the manufacturing team to identify which variables in the dataset predict the mpg of MechaCar prototypes and to determine if the manufacturing lots are statistically different from the mean population.

## Results
## Linear Regression to Predict MPG
•	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
As seen in the results below, the p value for the t-tests for vehicle length and ground clearance are very small, telling us that both are statistically significant when it comes to affect the mpg

![MechaCar mpg Summary](https://github.com/TheLittlePrincess/M15_MechaCar_Statistical_Analysis/blob/main/Dev1_StatisticalSum.png)

•	Is the slope of the linear model considered to be zero?
No. Zero would mean that changing the variables on the model would not affect the efficiency (mpg), but as shown above, changing at least the two that are significant would provide a non-random amount of variance.
•	Does this linear model predict mpg of MechaCar prototypes effectively? 
Yes, the p value is telling us that

![MechaCar mpg linear Model](https://github.com/TheLittlePrincess/M15_MechaCar_Statistical_Analysis/blob/main/Dev1_Regression.png)

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
•	Does the current manufacturing data meet this design specification for all manufacturing lots in total?
Yes, as seen below, the variance is lower than 100

![Coil Summary](https://github.com/TheLittlePrincess/M15_MechaCar_Statistical_Analysis/blob/main/Dev2_1.png)

•	On each lot individually? 
Unfortunately when looking at each lot individually, we see that Lot 1 and 2 are within the expected specifications, however, Lot 3 is not, with a Variance way above the required 100 as shown below

![Coil by lot](https://github.com/TheLittlePrincess/M15_MechaCar_Statistical_Analysis/blob/main/Dev2_2.png)

## T-Tests on Suspension Coils
•	When looking at the t-Test for the overall sample, we can tell by both the confidence interval (1500 is within such range) and the p-value (>0.05) that they are not statistically different from the population mean of 1,500 pounds per square inch
  
![Coil t-Test overall](https://github.com/TheLittlePrincess/M15_MechaCar_Statistical_Analysis/blob/main/Dev3_1.png)


•	When looking at the t-Tests performed for each of the three lots, we were able to confirm that Lot 1 and Lot 2 are NOT statistically different from the population mean of 1,500 pounds per square inch. 
•	On the other hand, when looking at the p-value for Lot3 t-Test we have to reject the null hypothesis, and conclude that this population differs from the 1,500 pounds per square inch mean expected
  
![Coil t-Test overall](https://github.com/TheLittlePrincess/M15_MechaCar_Statistical_Analysis/blob/main/Dev3_2.png)



## Study Design: MechaCar vs Competition
To continue helping AutosRUs’ to prepare their the MechaCar to be a competitive alternative when launch, some studies around cost, fuel efficiency, horsepower, maintenance cost and safety rating would be highly recommended. 

•	What metric or metrics are you going to test?
Given that fuel efficiency has always been a big factor when it comes to cars and there is a big environmental trend nowadays generating even more pressure on the subject, I would concentrate our efforts there. 

•	What is the null hypothesis or alternative hypothesis?
MechaCar has better fuel efficient than similar models in the market

•	What statistical test would you use to test the hypothesis? And why?
A two-sample t-Test, because it is designed to determine whether the means of two samples are statistically different, which is what we would be analyzing.

•	What data is needed to run the statistical test?
Samples of city MPG and/or Highway MPG data that is numerical and continuous.
Such data needs to be selected randomly from the population data (there are multiple studies and sources of fuel efficiency online, that includes multiple specifications that would allow us to select the more similar cars to the MechaCar in the market). It is very important that the data is considered to be normally distributed.
Also I would highly recommend to test more than one competitor car, but be mindful of compering them one by one and not only all combined in one sample


![image](https://user-images.githubusercontent.com/75752314/116009948-ca963b80-a5e1-11eb-8bc7-8706a6eae29e.png)

