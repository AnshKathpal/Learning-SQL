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
GROUP BY 1;

-- Write a query to find driver_id that have completed more than 5 rides.

SELECT 3, COUNT(*) AS ride_count
FROM Rides
GROUP BY 3
HAVING COUNT(*) > 5;
