/*
	Revenue and profit validation check (PASSED!!!)
	1. Use a calculator to see if the calculations are accurate for 5-10 rows
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
	b.riders
  , c.price
  , c.cogs as cost_of_goods_sold
  , b.riders * c.price as revenue
  , b.riders * c.price - c.cogs * b.riders as profit
from	
	bike_share_all b
		left join bike_data.dbo.cost_table c
			on b.yr = c.yr