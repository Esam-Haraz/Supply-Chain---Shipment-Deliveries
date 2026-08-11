select
	delivery_status,
	count(delivery_status) as total_deliveries
from
	supply_chain
group by
	delivery_status