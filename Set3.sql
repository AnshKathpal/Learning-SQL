-- Create a Rides table / collection with the fields defined above.

CREATE TABLE Rides (
    id INT PRIMARY KEY,
    driver_id INT,
    passenger_id INT,
    start_location VARCHAR(255),
    end_location VARCHAR(255),
    distance DECIMAL(5,2),
    ride_time DECIMAL(5,2),
    fare DECIMAL(6,2)
);

-- Insert five rows / documents into the Rides table / collection with data of your choice.

INSERT INTO Rides (id, driver_id, passenger_id, start_location, end_location, distance, ride_time, fare)
VALUES
    (1, 101, 201, '123 Main Street', '456 Elm Street', 8.75, 25.50, 35.75),
    (2, 102, 202, '789 Oak Avenue', '987 Maple Avenue', 12.25, 30.75, 42.50),
    (3, 103, 203, '321 Pine Road', '555 Cedar Road', 5.50, 15.25, 20.00),
    (4, 104, 204, '222 Birch Lane', '777 Spruce Lane', 7.80, 20.50, 28.75),
    (5, 105, 205, '666 Willow Drive', '888 Walnut Drive', 10.10, 28.00, 38.25);


-- Write a query to fetch all rides, ordered by fare in descending order.

SELECT *
FROM Rides
ORDER BY fare DESC;

-- Write a query to calculate the total distance and total fare for all rides.

SELECT 
    SUM(distance) AS total_distance,
    SUM(fare) AS total_fare
FROM Rides;

-- Write a query to calculate the average ride_time of all rides.

SELECT AVG(ride_time) AS average_ride_time
FROM Rides;

-- Write a query to fetch all rides whose start_location or end_location contains 'Downtown'.

SELECT *
FROM Rides
WHERE start_location LIKE '%Downtown%' OR end_location LIKE '%Downtown%';

--  Write a query to count the number of rides for a given driver_id.

SELECT COUNT(*) AS ride_count
FROM Rides
WHERE driver_id = your_driver_id_here;

-- Write a query to update the fare of the ride with id 4.

UPDATE Rides
SET fare = new_fare_value
WHERE id = 4;

-- Write a query to calculate the total fare for each driver_id.

SELECT driver_id, SUM(fare) AS total_fare
FROM Rides
GROUP BY driver_id;

-- Write a query to delete the ride with id 2.

DELETE FROM Rides
WHERE id = 2;
