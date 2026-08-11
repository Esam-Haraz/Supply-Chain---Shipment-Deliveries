select
	weather_condition,
	count(delivery_status) as total_deliveries,
	round(count(case when delayed='yes' then 1 end) * 100.0 / count(delivery_status),2) as delayed_percentage
from
	supply_chain
group by
	weather_condition