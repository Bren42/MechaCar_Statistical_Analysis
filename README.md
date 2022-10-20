# MechaCar_Statistical_Analysis

The purpose of this analysis was to determine any insights that could be found regarding the production of the MechaCar prototype.

## Linear Regression to Predict MPG

We need to look at what items within our data might be impacting, or have impacts on the MPG of the car. 
To do this we looked at six different variables in our data:

1. Vehicle Weight
2. Spoiler Angle
3. Ground Clearance
4. AWD
5. Vehicle Length
6. MPG

![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/mecha_LM.png)
![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/mecha_lm_summary.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Based on the linear regression summary in the second image we can see that both ground clearance and vehicle length have impacts that are provided a non random variance and show that they a decided impact on the overall MPG of the vehicle. 

2. Is the slope of the linear model considered to be zero? Why or why not?

The slope of this linear model is not considered zero, as is seen in our data the P-value of our model is 5.35e -11, which when run against a null hypothesis is far smaller then the .05 needed to confirm a null hypothesis, thus the slope would not be zero.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-squared value in this model shows as that it is a 0.7149, which means that as a predictor of MPG this data set has a probability to predict in over 71% percent of the time. This by any measure is a decent predictor of MPG and is very effective as a measure. Obviously there are other factors that could bring this higher but at this time based on the variables in this data it is the best predictor we have.

## Summary Statistics on Suspension Coils

Another area that we looked into was the suspension coils of the prototype cars. The design parameters state that we cannot have a variance higher than 100 PSI for the suspension coils. So the first thing we needed to do was to summarize all data coils. 

![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/suspension_all_summary.png)

As we can see in the data the mean, as well as the median PSI are nearly identical, and the variance is listing as only 62 PSI, this would indicate that we are well within our design specifications. However since there are so many data points it would be of benefit to look at the manufacture lots and determine if they show us anything. 

![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/suspension_lot_summary.png)

In this scenario we opted to group the suspension coils by their manufacturing lots and then run a summary of each. This shows us the advantage of digging a little deeper into the data. As we can see lots 1 and 2 have very little variance at all and fit within specifications. However when looking over lot 3 we see that it almost twice the recommended variance of 100 PSI with a 170 PSI variance. This confirms the need to analyze the data in more specific groupings and why that can help us uncover issues that might be otherwise hidden within a larger grouping.


## T-Tests on Suspension Coils

Lot 1 T-Test:
![This is an Image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/Lot_1_ttest.png)


Lot 2 T-Test:
![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/Lot_2_ttest.png)


Lot 3 T-Test:
![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/Lot_3_ttest.png)






