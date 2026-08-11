select
	region,
	count(delivery_status) as total_deliveries
from
	supply_chain
group by
	region