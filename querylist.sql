-- Compare rail employment to total train miles and rail employee hours worked.
SELECT r.indexid, r.date, r.total_train_miles, r.employee_hours_worked, e.rail
FROM passenger_rail AS r
LEFT JOIN transportation_employment AS e
	ON r.date=e.date
ORDER BY r.date DESC

-- Compare transit/ground passenger transportation employment to HVMT All Systems
SELECT h.indexid, h.date, h.hvmt_all_systems, e.transit_and_ground_passenger_transportation
FROM highway_vehicle_miles_traveled AS h
LEFT JOIN transportation_employment AS e
	ON h.date=e.date
ORDER BY h.date DESC

-- Compare air employment to Airline Traffic Total
SELECT ar.indexid, ar.date, ar.total , e.air
FROM airline_traffic AS ar
LEFT JOIN transportation_employment AS e
	ON ar.date=e.date
ORDER BY ar.date DESC

-- Compare personal spending on transportation service to highway vehicle miles traveled
SELECT ps.indexid, ps.date, ps.transportation_services, h.hvmt_all_systems
FROM personal_spending_on_transportation AS ps
INNER JOIN transportation_employment AS e
	ON ps.date=e.date
LEFT JOIN highway_vehicle_miles_traveled AS h
	ON e.date=h.date;

-- Compare personal spending on transportation service to passenger rail miles traveled, 
-- highway vehicle miles traveled, and airline traffic total
SELECT r.indexid, r.date, r.total_train_miles, h.hvmt_all_systems, ar.total, ps.transportation_services
FROM passenger_rail AS r
INNER JOIN transportation_employment AS e
	ON r.date=e.date
LEFT JOIN highway_vehicle_miles_traveled AS h
	ON e.date=h.date
LEFT JOIN airline_traffic AS ar
	ON e.date=ar.date
LEFT JOIN personal_spending_on_transportation AS ps
	ON e.date=ps.date
