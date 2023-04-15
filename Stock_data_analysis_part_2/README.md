# Stock data analysis (Part 2)

This is a project that a **finance job interviewer** asked me to do. 

I will explore the datasets to find interesting insights for investment purposes. I've divided the project into two parts. 

**In the first part**, I will analyze the datasets to develop trading ideas

Please click [Here](https://github.com/golfung/Investment/tree/main/Stock_data_analysis_part_1) if you want to see Part 1

### Part 2

**Now is the second part** I will experiment with different types of stock datasets to evaluate the practicality of the trading ideas from the first part.

First of all, I will choose prediction model to predict my target [See Code](https://github.com/golfung/Investment/blob/main/Stock_data_analysis_part_2/Stock%20data%20ver2.ipynb)

Next, Here are Thailand stock dataset for backtesting
- SET50 [See Code](https://github.com/golfung/Investment/blob/main/Stock_data_analysis_part_2/Stock%20data%20SET50.ipynb)
- SET100 [See Code](https://github.com/golfung/Investment/blob/main/Stock_data_analysis_part_2/Stock%20data%20SET100.ipynb)
- sSET [See Code](https://github.com/golfung/Investment/blob/main/Stock_data_analysis_part_2/Stock%20data%20sSET.ipynb)
- mai [See Code](https://github.com/golfung/Investment/blob/main/Stock_data_analysis_part_2/Stock%20data%20mai.ipynb)

### Recommend
- Forward test
- Add slippage

### Here is the presentation for the second part.

![Slide1](https://user-images.githubusercontent.com/77894515/232231512-1c340881-fcad-4cbc-a1e1-f019d4880bce.PNG)
![Slide2](https://user-images.githubusercontent.com/77894515/232231522-dbf7e997-6cdb-4338-848a-6e84f2a7db4d.PNG)
- First part the percentage change of today's closing price from today's morning opening price are correlate with the percentage change of afternoon opening price from today's morning opening price.
![Slide3](https://user-images.githubusercontent.com/77894515/232231526-cc25e072-d129-421a-917c-ed18f4e5e397.PNG)
- Add more Stock data to choose prediction model. Here is my strategy **"Buy Afternoon opening price (ATO2), Sell today closing price (ATC)"** 
![Slide4](https://user-images.githubusercontent.com/77894515/232231532-1367b391-21ab-46ce-9369-093f6e90c754.PNG)
- Select Linear regression model
![Slide5](https://user-images.githubusercontent.com/77894515/232231536-0489f849-d831-4a74-8435-7dce7a246050.PNG)
- Feature importance of Linear model
![Slide6](https://user-images.githubusercontent.com/77894515/232231539-b0e10a21-8961-4b00-a268-976e3ca02284.PNG)
- Try to test to select the number of initial variables that give the highest R-squared value.
![Slide7](https://user-images.githubusercontent.com/77894515/232231543-0b92f8c7-f7c5-42aa-8e92-755ea7a258c7.PNG)
- Conclusion of Target and Parameter for strategy backtesting
![Slide8](https://user-images.githubusercontent.com/77894515/232231547-d3171043-cfdf-4351-8474-fb7714759938.PNG)
![Slide9](https://user-images.githubusercontent.com/77894515/232231550-c6f1de80-8f45-43db-b70b-b465deac29fb.PNG)
- Step 1 for backtesting
![Slide10](https://user-images.githubusercontent.com/77894515/232231553-0cba0e0d-a817-4605-886e-97667bfb5227.PNG)
- Step 2 for backtesting
![Slide11](https://user-images.githubusercontent.com/77894515/232231556-c76970e0-0632-4e58-9324-c3c5f1076b90.PNG)
- Step 3 for backtesting
![Slide12](https://user-images.githubusercontent.com/77894515/232231561-2d031f57-7ba4-4d79-8e8e-9557f901fdce.PNG)
- Result : no trade in SET50 dataset
![Slide13](https://user-images.githubusercontent.com/77894515/232231565-50600a8d-877b-431d-a27a-1cb93d4bcf62.PNG)
- Next dataset : SET100
![Slide14](https://user-images.githubusercontent.com/77894515/232231570-52bc931b-6821-44d1-90de-7cbaa9584a50.PNG)
- SET100 result : Get profit
![Slide15](https://user-images.githubusercontent.com/77894515/232231574-9f71cbfc-cf29-48ac-b533-efbe4bfcaca1.PNG)
![Slide16](https://user-images.githubusercontent.com/77894515/232231577-97b7142e-3f4b-4fef-bbf0-47fc3dcb4feb.PNG)
![Slide17](https://user-images.githubusercontent.com/77894515/232231580-f2d2dd09-da52-4418-9066-3938752e5a1a.PNG)
- Next dataset : sSET
![Slide18](https://user-images.githubusercontent.com/77894515/232231584-fc84413d-81b0-41b4-8a72-7c182e096cb5.PNG)
- sSET result : Get loss
![Slide19](https://user-images.githubusercontent.com/77894515/232231589-ddcbcb9d-5ff1-4db3-beb8-74fcbb439c69.PNG)
![Slide20](https://user-images.githubusercontent.com/77894515/232231592-5ed52832-3c4f-4da3-8a88-98ec2cd71013.PNG)
![Slide21](https://user-images.githubusercontent.com/77894515/232231596-b85c99a5-1585-49c1-87d6-c53bba8d2ff8.PNG)
- Next dataset : mai and add more select condition
![Slide22](https://user-images.githubusercontent.com/77894515/232231600-a969c5a4-bac9-465b-8b84-33e9ccd7a9e3.PNG)
- mai result : Get highest profit
![Slide23](https://user-images.githubusercontent.com/77894515/232231603-8686b5c8-0ad3-41cf-bea3-07eef707037d.PNG)
![Slide24](https://user-images.githubusercontent.com/77894515/232231607-811fba15-cccd-4e0c-b72a-2f271c7ea9b2.PNG)
![Slide25](https://user-images.githubusercontent.com/77894515/232231611-3129bf30-858f-4a01-9414-456d916c4946.PNG)
![Slide26](https://user-images.githubusercontent.com/77894515/232231614-b4957a03-1d5d-43ef-b405-b14e00bce490.PNG)
