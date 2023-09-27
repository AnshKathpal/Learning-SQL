-- Write a query to find the ride with the highest and lowest fare.

SELECT *
FROM Rides
ORDER BY fare DESC
LIMIT 1;

SELECT *
FROM Rides
ORDER BY fare ASC
LIMIT 1;

-- - Write a query to find the average **`fare`** and **`distance`** for each **`driver_id`**.

SELECT driver_id, AVG(fare) AS average_fare, AVG(distance) AS average_distance
FROM Rides
GROUP BY driver_id;

-- Write a query to find driver_id that have completed more than 5 rides.

SELECT driver_id, COUNT(*) AS ride_count
FROM Rides
GROUP BY driver_id
HAVING COUNT(*) > 5;

-- Assuming there is another collection/table called Drivers with driver_id and name fields, write a query to find the name of the driver with the highest fare.

SELECT d.name AS driver_name, MAX(r.fare) AS highest_fare
FROM Rides r
JOIN Drivers d ON r.driver_id = d.driver_id
WHERE r.fare = (SELECT MAX(fare) FROM Rides);

-- - Write a query to find the top 3 drivers who have earned the most from fares. Return the drivers' ids and total earnings.