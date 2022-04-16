# MechaCar_Statistica_Analysis

## Overview/Purpose:
AutosRUs want to move their decision making process into the 21st century. The data analytics team is in charged of performing retrospective analysis of historical data, analytical verification and validation of current automotive specfications and study design of future product testing.

The AutosRUs executive team recognizes that the most succesful automovile launches utilize data analytics in every decision making process;therefore, we must ensure that this analysis contains statistical backbone, a quantitative metric, and clear interpretation of the results in order to keep upper management happy and make good decisions.

We will use R programing language to do this analysis and provide the following:
1. Summary statistics for different variables
2. Visualization for diffrent datasets
3. Interpretation of the statistical test results

Finally, we will use our critical thinking skills to propose our own study design, hypothesis, and analysis workflow in order to make AutosRUs manufacturing process better.

## Deliverable 1: Linear Regression to Predict MPG
The linear model that predicts the mpg of MechaCar prototypes using several variables is the following:

mpg_data =  (6.267)vehicle_length + (1.245e-03)vehicle_weight + (6.877e-02)spoiler_angle + (3.546)ground_clearance + (-3.411)AWD - 104.0

![linear_regression.png](https://github.com/LucyPill/MechaCar_Statistica_Analysis/blob/main/Images/linear_regression.png)


### Let's take a look at the summary statistics: 

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* The two variables that provided a non-random amount of variance to the mpg were the vehicle_length and the ground_clearance. These two variables as well as the slope are very significant in this model as we can see their p-values are very small.

2. Is the slope of the linear model considered to be zero? Why or why not?
* The slope (m) is not considered to be zero beacuse there is a significant relationship between some of independent variables (vehicle_length and the ground_clearance) the dependent variable.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
* Yes, it does. This regression model efectively predict the mpg of MechaCar prototypes as it is indicated by the r-squared value of 0.7149. A r-squared of 1 would predict the model with a very high degree of certanty.

![lm_summary_stats.png](https://github.com/LucyPill/MechaCar_Statistica_Analysis/blob/main/Images/lm_summary_stats.png)

## Deliverable 2: Summary Statistic on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

1. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
* Looking at the total_summary for all manufacturing lots, we can see that the variance is 62.29 and therefore does not excced 100 psi.

![total_summary_del2.png](https://github.com/LucyPill/MechaCar_Statistica_Analysis/blob/main/Images/total_summary_del2.png)

### Now, let's take a look at the individual lots:
As shown in the lot_summary, we can see that lots 1 & 2 meet the design specifications with 0.98 and 7.47 respectively, whereas lot 3 has a variance of 170.28 exceeding the design especification by 1.7X

![lot_summary_del2.png](https://github.com/LucyPill/MechaCar_Statistica_Analysis/blob/main/Images/lot_summary_del2.png)

## Deliverable 3: T-Tests on Suspension Coils

### All three lots:
* When looking at the combined stats for all the three lots, we can see that the p-value is 0.06028 and therefore we accept the null hypothesis and that means that there is no statistical difference between the psi of all lots and the population mean of 1500 psi.

![three_lots_del3.png](https://github.com/LucyPill/MechaCar_Statistica_Analysis/blob/main/Images/three_lots_del3.png)

### Lot#1:
* A p-value of 1 tells us that the null hypothesis is true which means that there is no statistical differende between the psi of lot#1 and the population mean of 1500 psi.

![t-test_lot1_del3.png](https://github.com/LucyPill/MechaCar_Statistica_Analysis/blob/main/Images/t-tes_lot1_del3.png)

### Lot#2:
* A p-value of 0.6072 tells us that the null hypothesis is true which means that there is no statistical differende between the psi of lot#2 and the population mean of 1500 psi.

![t-test_lot2_del3.png](https://github.com/LucyPill/MechaCar_Statistica_Analysis/blob/main/Images/t-test_lot2_del3.png)

### Lot#3:
* A p-value of 0.04168 reject the null hypothesis/there is a statistical difference between the psi of lot3 mean of 1496.14 and the population mean 1500 psi.

![t-test_lot3_del3.png](https://github.com/LucyPill/MechaCar_Statistica_Analysis/blob/main/Images/t-test_lot3_del3.png)

## Deliverable 4: MechaCar vs Competition - Study Design (fuel efficiency)
Gas prices again reached a new peak, and in California the gallon of gas ranges between $5.479 and $6.524 depending on the county and this is according to AAA. Nowadays, thinking about fuel efficiency is a common topic and that is why I decided do an analysis on the fuel effeciency of city and Highway.

### Metrics to test:
* City and Highway fuel efficiency

### Null Hypothesis:
* Cars in the same vehicle category have the same fuel efficiency

### Alternative Hyposthesis: 
* Cars in the same vehicle category do not have the same fuel efficency

### Statistical Test:
* In this case, a one-way-ANOVA is a good statistical test because we are using a single factor and that is the fuel efficiency, and we are investigating its variation between MechaCar prototype and that of the competition

### Data Needed for Analysis:
* The data needed for this analysis is fuel efficiency data from a large sample pupulation. Having a large sample population when doing analysis is very important beacuse it is difficult to stablish is there is a significant difference in a small sample population. 
