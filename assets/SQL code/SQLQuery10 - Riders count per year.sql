/*
	Rider count by years
	1. Query to find riders count for each individual year (2021, 2022)
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
	),

year as (
select
	b.riders
  , substring(cast(b.dteday as varchar(50)), 1, 4) as year
from	
	bike_share_all b
		left join bike_data.dbo.cost_table c
			on b.yr = c.yr
	)

select
	y.year
  , sum(y.riders) as total_riders
from
	year y
group by 
	y.year
