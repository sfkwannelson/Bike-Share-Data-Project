/*
	Seasonal Revenue Analysis
	1. Create a case statement to declare specific id's to season
	2. Calculate revenue for all seasons
	3. Pull the sum of the revenue, grouped by both season and year
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

seasons as (
		select
			case when b.season = 1 then 'spring'
				 when b.season = 2 then 'summer'
				 when b.season = 3 then 'fall'
				 else 'winter'
				 end
				as season
		  , substring(cast(b.dteday as varchar(50)), 1, 4) as year
		  , b.riders * c.price as revenue

		from	
			bike_share_all b
				left join bike_data.dbo.cost_table c
					on b.yr = c.yr
	)

select
	s.season
  , s.year
  , round(sum(s.revenue), -4) as total_revenue
from
	seasons s
group by
	s.year
  , s.season
order by 
	s.year
  , s.season 

