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

To further review what we saw with the suspension coils in our prior summaries we decided to perform a T-Test

All Manufacturing Lots T-Test:

![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/Suspension_1sample_ttest.png)

As we can see this T-Test has a mean of 1498 and a P-Value of .06028, this follows along with our prior analysis and confirms that this does not disprove the null hypothesis.



Lot 1 T-Test:


![This is an Image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/Lot_1_ttest.png)

Lot 1 when run in a T-Test also shows a strong indicator that this lot is producing parts within the design specifications overall. The mean is 1500 and the P-Value shows a solid 1.

Lot 2 T-Test:


![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/Lot_2_ttest.png)

Lot 2 also shows a fairly solid P-Value of .6072 which still does not disprove the null hypothesis.

Lot 3 T-Test:


![This is an image](https://github.com/Bren42/MechaCar_Statistical_Analysis/blob/main/images/Lot_3_ttest.png)

In the case of lot 3 you see a mean that is 1496, however our P-value falls short at .04168. This again confirms that there are issues somewhere within the manufacturing process for this lot, this data shows us that Lot 3 would be were we need to focus attention.


## Study Design: MechaCar vs. Competition

We need to determine competitive vectors to analyze to give our vehicle a competitive advantage prior to going to market, this may change the form factor or components of the vehicle in an effort to reduce costs, or add features. We also need to look beyond just the vehicle and see if any parts of our go to market strategy could impact sales of the vehicle. What does the consumer want? from prices to features, the buying experience to the post sales experience what are the end to end factors that go into succesfully increasing our vehicle sales. 

Here are some metrics that should be tested in order to achieve our outcomes.

1. Vehicle Safety features: What safety features are required, versus what features are wanted? how much would this impact the price of the vehicle. 
2. Vehicle price: As is always the case selling price will be a factor, we need to understand who our core demographic for this vehicle will be and determine their financial median purchasing history.
3. Features: As cars modernize more and more clients in some markets are requesting modern feature sets, such as integrated smart displays, infotainment centers, heated seats, etc. We need to look into what the costs per feature will be to the price of the vehicle and what features are a "must have". 

We would need to collect data in these fields:
1. Per market median household incomes, and historical median purchase price of vehicles. We would also need to see how many vehicles per household. This would allow us to get a better understanding of our pricing strategy. We could use a linear regression model to determine the mean and median and see how much deviation may be acceptable. 
2. Feature set per vehicle sold data would be neccessary as well, with costing information so that we could determine how much to add the determined "must have" features and we could determine if they could be added into the price of the vehicle or absorbed from the margin.











