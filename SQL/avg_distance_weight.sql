select
	round(avg(distance_km),2) as Average_Distance,
	round(avg(package_weight_kg),2) as Average_Weight
from
	supply_chain
