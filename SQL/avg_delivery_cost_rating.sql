select
	round(avg(delivery_cost),2) as average_delivery_cost,
	round(avg(delivery_rating),2) as delivery_rating
from
	supply_chain