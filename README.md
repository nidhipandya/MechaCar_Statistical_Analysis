# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R, we’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. 

The below image is a summary of multiple linear regression:

![img_1](https://github.com/nidhipandya/MechaCar_Statistical_Analysis/blob/main/images/img_1.PNG)
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    * The vehicle length, and vehicle ground clearance are likely to provide non-random amounts of variance to the model. It means the vehicle length and vehicle ground clearance have a significant impact on MPG on the MechaCar prototype. 

      As shown image below: If we remove less impactful variables(vehicle weight, spoiler angle, and AWD) from our lm caculation, Multiple r-squesred value is changed **from 0.71 to 0.67**, not a big change.
      ![img_2](https://github.com/nidhipandya/MechaCar_Statistical_Analysis/blob/main/images/img_2.PNG)
      
* Is the slope of the linear model considered to be zero? Why or why not?
    * Here, p-Value: 5.35e-11, which is much smaller than 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, so that the slope of this linear model is not zero.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    * Here, r-squared value: 0.7149, it means that approximately 71% of all mpg predictions will be determined by this model and 71% number is good enough to predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

As per above information, we can say that the **variance of the suspension coils cannot exceed 100 pounds per square inch (PSI).**

#### A. The suspension coil’s PSI across all manufacturing lots:
![img_3](https://github.com/nidhipandya/MechaCar_Statistical_Analysis/blob/main/images/img_3.PNG)

As per the above result, the variance of the suspension coils is 62.29 PSI across all manugacturing units, which is within the 100 PSI variance requirement.

#### B. The suspension coil’s PSI for each manufacturing lot:
![img_4](https://github.com/nidhipandya/MechaCar_Statistical_Analysis/blob/main/images/img_4.PNG)

As per the above result, Lot1 and Lot2 have the variance of the suspension coils are 0.97 and 7.46 PSI respectively, which is within 100 PSI variance requirement BUT Lot3 has the variance of the coils is 170.28 PSI, which is higher than 100.
      
## T-Tests on Suspension Coils
* summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

Performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

![img_5](https://github.com/nidhipandya/MechaCar_Statistical_Analysis/blob/main/images/img_5.PNG)

As per above image, t-test ran across all the Manufacturing lots and got p-valaue: 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis. That is to say, the mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

![img_6](https://github.com/nidhipandya/MechaCar_Statistical_Analysis/blob/main/images/img_6.PNG)

As per above image, t-test ran on each Manufacturing lot and concluded:
  1. Lot 1 sample has the p-Value: 1, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis. 
  2. Lot 2 has the p-Value: 0.61; again which is higher than 0.05, we can not reject the null hypothesis.
  3. Lot 3 has the p-Value: 0.04, which is lower than the common significance level of 0.05. All indicating to reject the null hypothesis.

## Study Design: MechaCar vs Competition

Here we compared the MechaCar to the competition and looked at their relative fuel efficiencies using statistical analysis. Of particular interest to start would be analysis into cost to provide consumers with supplemental information that further compares MechCar to competitors in this aspect.

* What metric or metrics are you going to test?
    * The metrics of mpg(highway vs. city), user rating, safety rating, and frequency of maintenance. 
    
* What is the null hypothesis or alternative hypothesis?
    * Null Hypotheses (Ho): MechaCars have no difference in cost in comparision to competitors
    * Alternate Hypothesis (Ha): MechaCars have a difference in cost in comparsion to competitors.

* What statistical test would you use to test the hypothesis? And why?
    * I would like to use an ANOVA test, which is used to compare the means of a continuous numerical variable across a number of groups. 

* What data is needed to run the statistical test?
    * If we can collect the fuel economy in mpg of various competitor brands to compare against MechaCar, then we can get more clear statistical result.
