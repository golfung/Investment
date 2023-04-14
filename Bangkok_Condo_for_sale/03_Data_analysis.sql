-- Data analysis Condos advertised for sale on the web Living Insider.com--

-- Here is my older brother's condo for sale
-- Condo name : Chateau in Town Ratchada 10
-- Address : Ratchadapisek, Huaikwang, Suttisan, Bangkok, Thailand
-- Type : 1 Bedroom, 1 Bathroom 
-- Level 8
-- size : 35 sq.m.


-- What is median price of my older brother's room spec
SELECT
	zone,
    level_condo,
    num_bed,
    num_bath,
    round(median(price_sqm)) as med_price_sqm,
    round(median(price_sqm))*35 as med_price 
FROM data_cleaning 
WHERE num_bed = "1 Bedrooms" AND 
		num_bath = "1 Bedrooms" AND
        level_condo = 'Level 5-10' 		

-- What is the price my brother wants to sell 10%, 20% and 30% below the median price?
SELECT
	round(median(price_sqm))*35 as med_price,
    round(median(price_sqm))*35*0.9 as below_TenPer,
    round(median(price_sqm))*35*0.8 as below_TwentyPer,
    round(median(price_sqm))*35*0.7 as below_ThirtyPer
FROM data_cleaning 
WHERE num_bed = "1 Bedrooms" AND 
		num_bath = "1 Bedrooms" AND
        level_condo = 'Level 5-10'	

-- What the median price per sq.m. each level?
SELECT
	level_condo,
    round(median(price_sqm)) as med_price_sqm
FROM data_cleaning
GROUP by level_condo
ORDER by med_price_sqm DESC


-- Now there are plans to buy a condo nearby
-- Subways, especially Metropolitan Rapid Transit or MRT, with a distance of less than 0.3 km
-- And near the Living Mall, not more than 1.0 km.
-- What condominium are you suggest?

with intered_condo as (
SELECT
  	sale_head,
	condo_name,
  	price_baht,
  	price_sqm,
  	level_condo,
    lo_name1,
    dist1_km,
    lo_name2,
    dist2_km,
  	list_link
from data_cleaning
WHERE lo_name1 LIKE '%MRT%' AND
		dist1_km <= 0.3 AND
        lo_type2 = 'living_mall' AND
        dist2_km <= 1 
  )
--GROUP BY condo_name
--ORDER BY dist1_km , dist2_km

-- Sounds great. Now I have a budget of not more than 5 million baht to investing and
-- Want a good view, therefore want to buy a condo on the 11th floor and above
-- Please give me some advice on which one is the cheapest price per sq m. of each floor of the condo
-- And how many percent cheaper than the median price?
SELECT
	sale_head,
    condo_name,
    price_baht,
    price_sqm,
	level_condo,
    round(median(price_sqm)) as med_price_sqm,
    min(price_sqm) as cheapest_sqm,
    round(((round(median(price_sqm))-min(price_sqm)) 
    / round(median(price_sqm)))*100 ,2) as percent_cheapest,
    list_link
from intered_condo
WHERE price_baht <= 5000000 and
		level_condo ='Level 11' or
        level_condo ='Level 11-20' or
        level_condo ='Level 12' or
        level_condo ='Level 13' or
        level_condo ='Level 14' or
        level_condo ='Level 15' or
        level_condo ='Level 16' or
        level_condo ='Level 17' or
        level_condo ='Level 19' or
        level_condo ='Level 21-50' or 
		level_condo ='Level 22' OR
        level_condo ='Level 28' OR
        level_condo ='Level 30' OR
        level_condo ='Level 38'      
        
GROUP by level_condo
order by percent_cheapest DESC
