
-- Create a Restaurants table / collection with the fields defined above.
CREATE TABLE Restaurants (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    cuisine_type VARCHAR(100),
    location VARCHAR(255),
    average_rating DECIMAL(3,2),
    delivery_available BOOLEAN
);

-- Insert five rows / documents into the Restaurants table / collection with data of your choice.
INSERT INTO Restaurants (id,name,cuisine_type,location,average_rating,delivery_available)
VALUES (1,"Pasta","FastFood","Pitampura",3.00,True),
(2,"Burger","FastFood","Rohini",4.00,True),
(3,"Pizza","FastFood","NSP",3.00,False),
(4,"Momos","Snacks","Paschim Vihar",5.00,True),
(5,"Coke","Beverages","Rohini",3.00,True)

-- Write a query to fetch all restaurants, ordered by average_rating in descending order.
SELECT * FROM Restaurants ORDER By average_rating DESC

-- Write a query to fetch all restaurants that offer delivery_available and have an average_rating of more than 4.
SELECT * FROM Restaurants WHERE delivery_available is True AND average_rating > 4

-- Write a query to fetch all restaurants where the cuisine_type field is not set or is null.
SELECT * FROM Restaurants WHERE cuisine_type ISNULL

-- Write a query to count the number of restaurants that have delivery_available.
SELECT COUNT(*) FROM Restaurants WHERE delivery_available IS True

--  Write a query to fetch all restaurants whose location contains 'New York'.
SELECT * FROM Restaurants WHERE location LIKE "%New York%"

-- Write a query to calculate the average average_rating of all restaurants.
SELECT AVG(average_rating) FROM Restaurants

-- Write a query to fetch the top 5 restaurants when ordered by average_rating in descending order.
SELECT *
FROM restaurants
ORDER BY average_rating DESC
LIMIT 5;

-- Write a query to delete the restaurant with id 3.
DELETE FROM Restaurants where id is 3
