# Stock data analysis (Part 1)

This is a project that a **finance job interviewer** asked me to do. He provided four sets of stock information, namely:

- Bid-Ask
- Tick matches
- ATO/ATC
- Financial Statement 10Y

I will explore the datasets to find interesting insights for investment purposes. I've divided the project into two parts. 

**In the first part**, I will analyze the datasets to develop trading ideas using my skills in 
- Data analysis
- Data visualization
- Trading ideas
- Python programming 
 
**In the second part**, I will experiment with different types of stock datasets to evaluate the practicality of the trading ideas from the first part, using my skills in 
- Backtesting
- Machine learning
- System trading
- Python programming

**You can view the second part of the project at [insert link]**, 

### and the full code at [Here](https://github.com/golfung/Investment/blob/main/Stock_data_analysis_part_1/Stock%20data%20for%20test.ipynb). 

### Here is the presentation for the first part.

![Slide1](https://user-images.githubusercontent.com/77894515/232195547-42641491-ca1e-477f-9b2e-e89cc8454926.PNG)
![Slide2](https://user-images.githubusercontent.com/77894515/232195548-303788ed-0088-41cb-9f48-4f64da00855f.PNG)
- Overload data, So I use `DBeaver` on SQL language for data connecting
![Slide3](https://user-images.githubusercontent.com/77894515/232195549-00e50d1e-4210-415d-9787-021b7f0dea88.PNG)
- Select one stock for analysis cause overload dataset
![Slide4](https://user-images.githubusercontent.com/77894515/232195551-385c2ba5-e3aa-4b81-968b-01cd5087cb70.PNG)
- Ignore `Financial Statment 10Y` cause focus on Short term strategy. And add more dataset 
![Slide5](https://user-images.githubusercontent.com/77894515/232195552-03177b62-37ea-4189-868d-2779521c7fd8.PNG)
- Only ATO/ATC dataset that I done for all process.
![Slide6](https://user-images.githubusercontent.com/77894515/232195553-de3ed769-88b8-4fe5-bbd9-07c6a64fb3f9.PNG)
![Slide7](https://user-images.githubusercontent.com/77894515/232195554-b869e29c-d311-4ab0-a614-0d476a311b25.PNG)
- I have 4 strategy for testing
![Slide8](https://user-images.githubusercontent.com/77894515/232195555-72bb2047-8cdd-48b5-9a8b-20edcbd26d8c.PNG)
- Merge ATO/ATC data with Daily trading data
![Slide9](https://user-images.githubusercontent.com/77894515/232195556-baf55ad9-3eb5-4e20-bd16-d87be0f1e49b.PNG)
- Create percent change and ratio column
![Slide10](https://user-images.githubusercontent.com/77894515/232195558-360b3ba3-b42d-4e0e-868a-4c7518f984fe.PNG)
![Slide11](https://user-images.githubusercontent.com/77894515/232195560-f21fdfb1-a073-447a-9d83-e066b4227751.PNG)
- Select parameter for Machine Learning each trading idea
![Slide12](https://user-images.githubusercontent.com/77894515/232195561-11b6814d-6429-4375-8e2f-e660ce9cfe49.PNG)
- Split data, Model fitting, Model evaluation
![Slide13](https://user-images.githubusercontent.com/77894515/232195562-bbb30250-8be0-4d54-8c14-62908b61fd6a.PNG)
- Compare scoring
![Slide14](https://user-images.githubusercontent.com/77894515/232195564-b5fcf769-ed55-4fc8-a58d-506e9115f8e0.PNG)
- Change target method to predict just Up or Down
![Slide15](https://user-images.githubusercontent.com/77894515/232195565-26f24957-8650-491e-b00e-88f54c81c8ce.PNG)
- Compare scoring
![Slide16](https://user-images.githubusercontent.com/77894515/232195510-b95d0759-d90d-4b15-8217-65e5d99bc37e.PNG)
- Testing another trading idea
![Slide17](https://user-images.githubusercontent.com/77894515/232195511-548783ea-e82e-4fa6-be6c-b5de9afdbe7c.PNG)
![Slide18](https://user-images.githubusercontent.com/77894515/232195513-0bb652f7-e5fe-44f4-8fda-7776c50d42dd.PNG)
![Slide19](https://user-images.githubusercontent.com/77894515/232195515-5362b528-72ce-4074-9f32-3f28093c8b62.PNG)
- Compare scoring
![Slide20](https://user-images.githubusercontent.com/77894515/232195517-c91af67e-238b-4774-ba65-dc646ff69c94.PNG)
- Compare scoring
![Slide21](https://user-images.githubusercontent.com/77894515/232195519-d15a1241-dafc-42ee-a7bb-7ff1c2b38805.PNG)
![Slide22](https://user-images.githubusercontent.com/77894515/232195521-6ef9552a-fe2b-4597-8b96-f1ebe709403c.PNG)
![Slide23](https://user-images.githubusercontent.com/77894515/232195524-dc11e9cd-6e2d-401f-8479-61e652ca1317.PNG)
- I found high correlation
![Slide24](https://user-images.githubusercontent.com/77894515/232195528-92da4346-dadb-4de6-99d4-965e9e696dc9.PNG)
- Create linear equation from both parameter
![Slide25](https://user-images.githubusercontent.com/77894515/232195530-41229a66-09da-432a-94d7-6438e6adfd3a.PNG)
- Got the idea to make a profit
![Slide26](https://user-images.githubusercontent.com/77894515/232195532-dbdd680f-ce2c-4b93-a6d4-d8b90bbf6992.PNG)
![Slide27](https://user-images.githubusercontent.com/77894515/232195533-6d44bd2f-e177-4911-91cb-bed12d33f2d6.PNG)
![Slide28](https://user-images.githubusercontent.com/77894515/232195535-553864cd-83c6-4cbc-b4d3-11ada9f87ce8.PNG)
- Trading idea from Tick Matchs dataset
![Slide29](https://user-images.githubusercontent.com/77894515/232195537-a6c7b3d6-240c-4450-92d9-93eba74cd82f.PNG)
![Slide30](https://user-images.githubusercontent.com/77894515/232195538-498182f0-3931-4168-8f45-103757d4c31b.PNG)
- Parameter that I need to use for analysing
![Slide31](https://user-images.githubusercontent.com/77894515/232195539-a8b64dff-1053-4ce2-85fe-4656c9b44bd4.PNG)
![Slide32](https://user-images.githubusercontent.com/77894515/232195540-4d4d33fc-c667-40ef-8c3f-921529b2d65c.PNG)
- Some trading idea from Bid Ask dataset
![Slide33](https://user-images.githubusercontent.com/77894515/232195545-6fcca094-e5ea-45ae-a3b4-3e091a24bc61.PNG)
