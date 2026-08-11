select
	delivery_partner, vehicle_type,
	count(delivery_status) as Total_Deliveries,
	round(count(case when delayed='yes' then 1 end) * 100.0 / count(delivery_status),2) as delayed_percentage
from
	supply_chain
group by
	delivery_partner, vehicle_type
order by
	delayed_percentage desc
limit 10