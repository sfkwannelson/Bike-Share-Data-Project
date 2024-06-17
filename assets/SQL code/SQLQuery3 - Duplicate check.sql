/*
	Duplicate Check (PASSED!!!)
	1. We used union to remove all duplicates (if there were any)
*/



select
	a.row_count_1 + b.row_count_2 as total_row_count
from	
	(select
		count(*) row_count_1
	from
		bike_data.dbo.bike_share_yr_0) a,
	(select
		count(*) row_count_2
	from
		bike_data.dbo.bike_share_yr_1) b


select
	count(*) as total_row_count_dup_removed
from
	(  select
			*
		from
			bike_data.dbo.bike_share_yr_0

	union 

		select
			*
		from
			bike_data.dbo.bike_share_yr_1
		) a



