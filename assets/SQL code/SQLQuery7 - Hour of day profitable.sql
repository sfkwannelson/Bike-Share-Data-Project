/*
	During what hour of the day is most profitable? 
	1. Calculate the average profit
	2. Group by the hour of day
	3. Sort by profit desc 
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
	b.hr as hour
  , sum(b.riders * c.price - c.cogs * b.riders) as total_profit
from	
	bike_share_all b
		left join bike_data.dbo.cost_table c
			on b.yr = c.yr
group by
	b.hr 
order by
	total_profit desc