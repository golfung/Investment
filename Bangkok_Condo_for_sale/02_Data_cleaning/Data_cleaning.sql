-- Preparing data --
-- Delete 'NA' row --
DELETE FROM full_list WHERE near_lo_type1 = 'NA' ;

-- Change Charecter to number on column 'price','floor_size', 'distance'--
with change_to_num as (
select 
  	sale_head,
  	created,
  	level_condo,
  	num_bed,
  	num_bath,
  	condo_name,
  	zone,
  	near_lo_type1 as lo_type1,
    near_lo_name1 as lo_name1,
    near_lo_type2 as lo_type2,
    near_lo_name2 as lo_name2,
    near_lo_type3 as lo_type3,
    near_lo_name3 as lo_name3,
    near_lo_type4 as lo_type4,
    near_lo_name4 as lo_name4,
    near_lo_type5 as lo_type5,
  	near_lo_name5 as lo_name5,
    near_lo_type6 as lo_type6,
    near_lo_name6 as lo_name6,
    owner,
    list_link,  
	CAST(REPLACE(REPLACE(price,'฿',''),',','') as real) as price_Baht,
    CAST(REPLACE(floor_size,' Sq.m.','') as real) as size_sqm,
  	CAST(REPLACE(near_lo_dist1,' Km.','') as real) as dist1_km,
    CAST(REPLACE(near_lo_dist2,' Km.','') as real) as dist2_km,
    CAST(REPLACE(near_lo_dist3,' Km.','') as real) as dist3_km,
    CAST(REPLACE(near_lo_dist4,' Km.','') as real) as dist4_km,
    CAST(REPLACE(near_lo_dist5,' Km.','') as real) as dist5_km,
    CAST(REPLACE(near_lo_dist6,' Km.','') as real) as dist6_km,
  	cast(longitude as real) as longitude,
  	cast(latitude as real) as latitude
    
from full_list 
)

-- Select column for new data cleaned--
SELECT  
	sale_head,
	price_Baht,
    size_sqm,
	round(price_Baht/size_sqm) as price_sqm,
  	created,
    level_condo,
  	num_bed,
  	num_bath,
  	condo_name,
  	zone,
    lo_type1,
    lo_name1,
    dist1_km,
    lo_type2,
    lo_name2,
    dist2_km,
    lo_type3,
    lo_name3,
    dist3_km,
    lo_type4,
    lo_name4,
    dist4_km,
   	lo_type5,
    lo_name5,
    dist5_km,
    lo_type6,
    lo_name6,
    dist6_km,
    owner,
    longitude,
    latitude,
    list_link    
from change_to_num 

	
