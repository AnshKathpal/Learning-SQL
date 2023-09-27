-- Problem: Create a Customers table / collection with the following fields: id (unique identifier), name, email, address, and phone_number.

CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(255),
    phone_number VARCHAR(50)
);

--  Insert five rows / documents into the Customers table / collection with data of your choice.

INSERT INTO Customers(id,name,email,address,phone_number)
VALUES (1,"Ansh","anshkathpal17@gmail.com","New Delhi",8448837130),
(2,"Ansh Kathpal","ansh@gmail.com","Haryana",12345),
(3,"Anshhh","anshkathpalgmail.com","Punjab",84488),
(4,"Anshuu","kathpal17@gmail.com","New Delhi",837130),
(5,"Anshhh Kathpallll","ansh_masai@gmail.com","New Delhi",8448830)

-- Write a query to fetch all data from the Customers table / collection.


SELECT * FROM Customers;

-- Write a query to select only the name and email fields for all customers.

SELECT name,email FROM Customers;

-- Write a query to fetch the customer with the id of 3.

SELECT * FROM Customers WHERE id is 3


-- Write a query to fetch all customers whose name starts with 'A'.


SELECT * FROM Customers WHERE name LIKE "A%"

-- Write a query to fetch all customers, ordered by name in descending order.

SELECT * FROM Customers ORDER BY name DESC

--  Write a query to update the address of the customer with id 4.

UPDATE Customers SET address = "Haryana" where id is 4

-- Write a query to fetch the top 3 customers when ordered by id in ascending 

SELECT * FROM Customers ORDER by id ASC LIMIT 3

-- Write a query to delete the customer with id 2.

DELETE FROM Customers WHERE id is 2

-- Write a query to count the number of customers.

SELECT COUNT (*) FROM Customers

-- Write a query to fetch all customers except the first two when ordered by id in ascending order.

SELECT *
FROM customers
WHERE id NOT IN (
    SELECT id
    FROM customers
    ORDER BY id ASC
    LIMIT 2
);

-- - Write a query to fetch all customers whose **`id`** is greater than 2 and **`name`** starts with 'B'.

SELECT * FROM Customers WHERE id > 2 and name LIKE "A%"

-- - Write a query to fetch all customers whose **`id`** is less than 3 or **`name`** ends with 's'.

SELECT * FROM Customers WHERE id < 2 OR name LIKE "%s"


-- Write a query to fetch all customers where the phone_number field is not set or is null.

SELECT * FROM Customers WHERE phone_number ISNULL

