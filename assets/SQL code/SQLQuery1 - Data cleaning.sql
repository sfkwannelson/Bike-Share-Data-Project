/*
	Data cleaning 
	1. Connect all data sources via union or joins
	2. Select specific columns neccessary for analysis
	3. Assign aliases/ rename columns for consistency
	4. Include revenue and profit calculations
*/

with bike_share_all as (
		select
			*
		from
			bike_data.dbo.bike_share_yr_0

		union 

		select
			*
		from
			bike_data.dbo.bike_share_yr_1
	)

select
	b.dteday as date
  , b.season
  , b.yr as year
  , b.weekday
  , b.hr as hour
  , b.rider_type
  , b.riders
  , c.price
  , c.cogs as cost_of_goods_sold
  , b.riders * c.price as revenue
  , b.riders * c.price - c.cogs * b.riders as profit
from	
	bike_share_all b
		left join bike_data.dbo.cost_table c
			on b.yr = c.yr