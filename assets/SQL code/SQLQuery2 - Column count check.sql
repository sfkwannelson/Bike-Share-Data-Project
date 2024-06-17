/*
	Column count check (PASSED!!!)
	1. Ensure that there are 11 unqiue columns being used
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

bike_data_column_count as (
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
	)

select
	count(*) as column_count
from
	information_schema.columns
where
	1=1
	and table_name = 'bike_data_column_count'


