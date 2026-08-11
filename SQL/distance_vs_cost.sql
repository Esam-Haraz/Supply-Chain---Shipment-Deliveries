select
	CASE 
    	when distance_km >= 0 and distance_km <= 50 then '0-50 KM'
    	when distance_km > 50 and distance_km <= 100 then '51-100 KM'
    	when distance_km > 100 and distance_km <= 150 then '101-150 KM'
    	when distance_km > 150 and distance_km <= 200 then '151-200 KM'
    	when distance_km > 200 then '200+ KM'
	end as distance_range,
	count(*) as total_deliveries,
	round(avg(delivery_cost),2) as Average_Cost
from
	supply_chain
group by distance_range
order by Average_cost desc