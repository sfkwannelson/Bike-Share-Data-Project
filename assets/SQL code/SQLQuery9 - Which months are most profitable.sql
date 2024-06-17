/*
	Which months out of the year are most profitable? 
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

month as (
select
	format(b.dteday, 'MM') as month
  , b.riders * c.price - c.cogs * b.riders as profit
from	
	bike_share_all b
		left join bike_data.dbo.cost_table c
			on b.yr = c.yr
	)

select
	m.month
  , sum(m.profit) as total_profit
from
	month m
group by
	m.month
order by
	total_profit desc