/*
	Null Value Check (PASSED!!!)
	1. Check to see if there are any null values in our datset
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
where
	1=1
	and b.dteday is null
	or b.season is null
	or b.yr is null
	or b.weekday is null
	or b.hr is null
	or b.rider_type is null
	or b.riders is null
	or c.price is null
	or c.cogs is null