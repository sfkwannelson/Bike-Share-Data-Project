/*
	Revenue and Profit Analysis
	1. Query to find riders count for each individual year (2021, 2022)
	2. Delcare variables
	2. Calculate net revenue = price * riders
	3. Calculate net profit = net revenue - cogs
	4. Calculate change in revenue = Nr - Or/ Or
	5. Calculate change in profit = Np - Op/ Op
*/

declare @2021price money = 3.99; -- price in 2021
declare @2022price money = 4.99; -- price in 2022
declare @2021COGS money = 1.24; -- cogs in 2021
declare @2022COGS money = 1.56; -- cogs in 2022
declare @2021riders int = 1243103; -- rider count in 2021
declare @2022riders int = 2049576; -- rider count in 2022


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
	@2021price * @2021riders as net_revenue_2021
  , @2022price * @2022riders as net_revenue_2022
  , (@2021price * @2021riders) - (@2021COGS * @2021riders) as net_profit_2021
  , (@2022price * @2022riders) - (@2022COGS * @2022riders) as net_profit_2022
  , ((@2022price * @2022riders) - (@2021price * @2021riders))/ (@2021price * @2021riders)  as perc_change_in_rev
  , (((@2022price * @2022riders) - (@2022COGS * @2022riders)) - ((@2021price * @2021riders) - (@2021COGS * @2021riders)))/ ((@2021price * @2021riders) - (@2021COGS * @2021riders)) as per_change_in_prof
from	
	bike_share_all b
		left join bike_data.dbo.cost_table c
			on b.yr = c.yr
