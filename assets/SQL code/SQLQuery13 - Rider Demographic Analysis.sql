/*
	Rider Demographic Analysis
	1. Idenitfy the variables/ columns we need to use
	2. Calculate total riders grouped by year and rider type
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

riders as (
		select
			substring(cast(b.dteday as varchar(50)), 1, 4) as year
		  , b.rider_type
		  , b.riders
		from	
			bike_share_all b
				left join bike_data.dbo.cost_table c
					on b.yr = c.yr
	)
		select
			r.year
		  , r.rider_type
		  , sum(r.riders) as total_riders
		from						
			riders r
		group by
			r.year
		  , r.rider_type
