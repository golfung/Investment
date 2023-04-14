# VKOSPI Volatility Prediction
 
This is a project about try to predict the Korea's representative implied volatility index (VKOSPI) by Machine learning method in Python programming.

This project refer to https://www.kaggle.com/datasets/ninetyninenewton/vkospi

## Context
The implied volatility of the Korean market is represented by the index called VKOSPI. An underlying asset of VKOSPI is KOSPI200, which is widely known as a Korean blue-chip index. VKOSPI is calculated based on KOSPI200 options. To put it simple, KOSPI200 and VKOSPI is analogous to S&P500 and VIX in the US.

## Options
Options are financial instruments that are derivatives based on the value of underlying securities such as stocks. An options contract offers the buyer the opportunity to buy or sell—depending on the type of contract they hold—the underlying asset. Unlike futures, the holder is not required to buy or sell the asset if they choose not to.

- Call options allow the holder to buy the asset at a stated price within a specific timeframe.
- Put options allow the holder to sell the asset at a stated price within a specific timeframe.
Each option contract will have a specific expiration date by which the holder must exercise their option.

## Volatility
In finance, volatility (symbol σ) is the degree of variation of a trading price series over time, usually measured by the standard deviation of logarithmic returns. Historic volatility measures a time series of past market prices. Implied volatility looks forward in time, being derived from the market price of a market-traded derivative (in particular, an option).

## Why am I interested in this project?
Options, It's my favorite investment. Because not only predicting the direction can also design a variety of investment strategies.

From https://www.investopedia.com/terms/v/volatility.asp

- Volatility represents how large an asset's prices swing around the mean price—it is a statistical measure of its dispersion of returns.
- There are several ways to measure volatility, including beta coefficients, option pricing models, and standard deviations of returns.
- Volatile assets are often considered riskier than less volatile assets because the price is expected to be less predictable.
- Volatility is an important variable for calculating options prices.
So if we can predict "volatility" then we can better predict option prices.

## Method
- 1. Import libraries
- 2. Explore data
- 3. Split data
- 4. Model fitting
- 5. Model evaluation

## Result

![__results___11_0](https://user-images.githubusercontent.com/77894515/231987282-b0aafc4c-d1e9-4c79-beac-d848fe523b03.png)

When we looked at the correlation, we found that VKOSPI was the most negatively correlated with KOSPI200 (-0.51). However, there was not much effect on VKOSPI.

Here is evaluation score.
- RMSE from Linear model : 4.0111
R-squared from Linear model : 0.3616

- RMSE from Logistic model : 4.0111
R-squared from Logistic model : 0.3616

- RMSE from Ridge model : 4.0111
R-squared from Ridge model : 0.3616

- RMSE from Lasso model : 4.0061
R-squared from Lasso model : 0.3632

- RMSE from ElasticNet model : 3.9996
R-squared from ElasticNet model : 0.3653

So, Based on machine learning, **the ElasticNet model yields a maximum R-squared of 0.3653**, but it is still less accurate in predicting VKOSPI.

Next step. Each parameters may not be related. By looking at correlation and the R-squared effect. I think it's more interesting to measure it in terms of **rate of change**.

## Keep Improving
Now I will try to calulate **rate of change** of `VKOSPI`, `KOSPI200` and `Open_interest`

![__results___29_0](https://user-images.githubusercontent.com/77894515/231988514-cf136c28-0260-4638-96ed-73cd74f01414.png)

- RMSE from Linear model2 : 4.9962
R-squared from Linear model2 : 0.2041

- RMSE from Logistic model2 : 4.9962
R-squared from Logistic model2 : 0.2041

- RMSE from Ridge model2 : 4.9962
R-squared from Ridge model2 : 0.2041

- RMSE from Lasso model2 : 4.998
R-squared from Lasso model2 : 0.2035

- RMSE from ElasticNet model2 : 4.9986
R-squared from ElasticNet model2 : 0.2033

## Finally

Even though we turn to forecasts based on the **rate of change**, the R-square value is even lower (0.2041), i.e. we cannot predict VKOPSI this time.

Recommendation We may need to increase the amount of training data and add new parameters that may be relevant.

My money making project this time haven't found a chance yet. I'm still trying to find other opportunities. Stay tuned.

See full code : [Click Here]
