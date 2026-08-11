select
	COUNT(*) as total_deliveries,
	round(COUNT(CASE WHEN delayed = 'yes' THEN 1 END) * 100.0 / COUNT(*),2) as delayed_percentage
from
	supply_chain