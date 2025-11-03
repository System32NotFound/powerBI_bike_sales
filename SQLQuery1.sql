
with cte as (
SELECT * FROM bike_share_yr_0
union all
SELECT * FROM bike_share_yr_1)

select 
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
COGS,
riders * price as revenue,
riders * price - COGS as profits
from cte a
left join cost_table b
on a.yr = b.yr