select
	delivery_mode,
	round(avg(delivery_rating),2) as Average_Rating
from
	supply_chain
group by
	delivery_mode