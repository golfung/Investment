# Bangkok Condo for sale

![Buying-a-Condo-in-Bangkok-The-Ultimate-Guide-1080x675](https://user-images.githubusercontent.com/77894515/226301295-c33190ec-3cbd-4820-bc70-775f59bcaacc.jpg)


### Tool : R, SQL, Tableau     
### Skill : Web scraping, Data analysis, Dashboard

## Problem Statement

Welcome to My Make Money the Series

My brother has a condo in one room. Announced for sale for more than two years but still can’t sell. My brother is the supporter of the family. The bank installment expenses quite affected my brother’s finances. One of the tenets of selling real estate is the price. Therefore, I would like to use data analysis to help solve the problem of suitable selling prices.

And this is the information of my brother’s condo that is announced for sale.

- Condo name : Chateau in town ratchada 10
- Area : Ratchadapisek, Huaikwang, Suttisan
- Level : 8
- Size : 35 sq.m.
- Type : 1 Bedroom, 1 Bathroom
- Sale price : 2,900,000 THB

## Preparation and Exploration of Data

I brought the source of condo listings from the www.livinginsider.com which is a real estate sales website that is ranked among the top five in Thailand by selecting

- Sale or Rent : Sale
- Area : Ratchadapisek, Huaikwang, Suttisan
- Listing created : 1-30 November’22

So I use `R programming` to web scrape all the important data and export to ‘.csv’ file.

You can see full R coding on here : https://github.com/golfung/Bangkok_Condo_for_sale/blob/9435e45f049f07019e4d12685821357e65b7b447/web_scraping.R

![image-2](https://user-images.githubusercontent.com/77894515/226307913-235ab91d-574a-43a4-88c1-859cc4d1049a.png)

Ready for next process!!.

## Clean and convert the dataset

For cleaning and converting the dataset process. I use `SQL` programming to do that.

Here is SQL code : https://github.com/golfung/Bangkok_Condo_for_sale/blob/e11033d44507765d99c995a28a5abdae9d5d9e5f/02_Data_cleaning/Data_cleaning.sql

![image-5](https://user-images.githubusercontent.com/77894515/226312622-6e8286d7-b5ac-4d7e-83ae-caa9c5291c8d.png)

## Learn concept of selling condominium

Basic concept in selling condos we will consider

- Location
- Selling price per square meter (price/sq.m.)
- Furniture

In this analysis, we will mainly consider the selling price per sq.m. because it is compared to the same location. But part of the decoration, We omitted it because data cannot be classified by web scraping. Must be distinguished by looking at the pictures and reading the text on each item for sale.

The comparison between expensive and cheap. We will not directly compare the selling price. We will compare using the selling price per sq.m. which we use the median of the selling price per sq.m. as a reference price or we can call it is a Market price.

## Data Analysis

In this section, I still use the `SQL` program to analyze.

You can see on coding here : https://github.com/golfung/Bangkok_Condo_for_sale/blob/01b827768b64c5100f105d0cad80f4c8afe5e155/03_Data_analysis.sql

This is my question to find opportunities from data.

### Question 1 : How much is the market price of a condo that my brother sells that looks similar?

![q1](https://user-images.githubusercontent.com/77894515/226314289-958f1e9c-93b9-47c1-8bd4-b9a897e8939b.png)

Answer : The market price is 3,130,330 THB.

### Question 2 : What price my brother wants to sell 10%, 20% and 30% lower than the market price?

![q2](https://user-images.githubusercontent.com/77894515/226314413-7bd8402a-5555-43f7-96df-f4a9b8edf2b3.png)

Answer : If my brother want to sale

- 10% lower than market price is 2,817,297 THB.
- 20% lower than market price is 2,504,264 THB.
- 30% lower than market price is 2,191,231 THB.

This is the key point. My brother sold his condo for 2.9 million baht, just 7.3% below market price. I can advise him to lower the price 10%, 20% or 30% below the market price for fast sold. If he don’t want to reduce the price, he must decorate the room to be the most beautiful.

### Question 3 : What is Top 10 of the market price per sq.m. each condo level?

![q3](https://user-images.githubusercontent.com/77894515/226314644-0c9017f7-396f-43c4-bada-47619bf1e3ce.png)

Answer : The highest market price per sq.m. is ‘Level 38’ with 176,166 THB per sq.m. Moreover, you can see higher level, higher market price per sq.m.

### Question 4 : Please suggest me, what condo name with nearby subways. Especially Metropolitan Rapid Transit or MRT, with a distance of less than 0.3 km and near the Living Mall, not more than 1.0 km.

![q4](https://user-images.githubusercontent.com/77894515/226314758-3da08c41-744d-49a0-8372-0ea9c5dadf7e.png)

Answer : The nearest MRT subways and living mall is ‘Ideo Ratchada – Huaykwang’ and ‘Rhythm Ratchada – Huaikwang’ condominium.

### Question 5: Can you give me some advice which one is the cheapest price per sq.m. of each floor of the condo and how many percent cheaper than the market price?

![q5](https://user-images.githubusercontent.com/77894515/226314901-795174a8-7420-4f73-9e39-951c6234a88d.png)

Answer: The cheapest price per square meter. It comes from the condominium ‘The Niche Ratchada’ which is almost 50% cheaper than the market price. This one on the 13th floor sells for 2.85 million baht, meaning that if you have a budget of 5 million baht, you can buy this room at a price 50% lower than the market price. That if you resell at a price lower than 30%, you still have a profit of 1.14 million baht.

## Conclusion

One of the main factors of condo sales is the price. We can see from the data that

- The market price of my brother’s condo room is 3,130,330 THB, which is information that helps to decide sale price again for my brother, for example, if he want to sell faster, maybe consider a 10%, 20% or 30% reduction from initial price
- We also allows us to found the opportunity to buy condos for investment by purchasing a room at a price much lower than the market price in order to be able to have more profit margins.
But there is a consideration that some sale listing does not separate condo level. It is a combination of condo level, such as level 5-10, which may not really reflect the market price of that level. Another thing is that the decorated room affects the sale price as well which information is collected not separated.

The way that can be developed further is collect more data because of this data collect only for condos that are sold in the Ratchadapisek, Huaikwang, Suttisan area and during the announcement of the sale in November’2022 only. Because all web data scraping takes a very long time.

## Dashborad

This is my dashboard from the Tableau program. It’s useful in helping us find items for sale that we’re interested in. You can find ‘Market price/sq.m.’, ‘Condo location’ and sale items URL with the lowest price/sq.m.

Click here : https://public.tableau.com/app/profile/nattapat.lertpiriyametha/viz/BangkokCondoforsale/Dashboard1

![Dashboard Condo for sale](https://user-images.githubusercontent.com/77894515/226315248-5ee14cef-dbb0-42c7-a5da-f1a6b48adfd1.png)


