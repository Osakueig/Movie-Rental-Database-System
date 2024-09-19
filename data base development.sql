-- Create Tables in the database

CREATE TABLE category (
	category_id INTEGER,
	name VARCHAR(20) UNIQUE NOT NULL,
	last_update TIMESTAMP NOT NULL
);
CREATE TABLE award (
	award_id INTEGER, 
	actor_id INTEGER,
	first_name Varchar(60),
	last_name varchar(60),
	award TEXT,
	last_update TIMESTAMP
);

CREATE TABLE advisor(
	advisor_id INTEGER,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	is_chairman BIT
);

CREATE TABLE city (
	city_id INTEGER,
	city VARCHAR(30),
	country_id VARCHAR (30),
	last_update TIMESTAMP
);

CREATE TABLE country (
	country_id INTEGER,
	country VARCHAR(100),
	last_update TIMESTAMP 
);

CREATE TABLE customer (
	customer_id INTEGER,
	store_id INTEGER,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	email VARCHAR(150),
	address_id INTEGER,
	active BIT,
	create_date DATETIME,
	last_update TIMESTAMP
);

CREATE TABLE film(
	film_id INTEGER,
	title VARCHAR(60),
	Film_Description TEXT,
	release_year VARCHAR(4),
	language_id INTEGER,
    original_language_id INTEGER,
	rental_duration INTEGER,
	rental_rate FLOAT,
	length INTEGER,
	replacement_cost FLOAT,
	rating VARCHAR(10),
	special_features TEXT,
	last_update TIMESTAMP
);

CREATE TABLE film_actor (
	actor_id INTEGER,
	film_id INTEGER,
	last_update TIMESTAMP 
);

CREATE TABLE film_category (
	film_id INTEGER,
	category_id INTEGER,
	last_update TIMESTAMP
);

CREATE TABLE film_text (
	film_id INTEGER, 
	title VARCHAR(60),
	description TEXT
);

CREATE TABLE inventory (
	inventory_id INTEGER,
	film_id INTEGER,
	store_id INTEGER,
	last_update TIMESTAMP 
);

CREATE TABLE investor (
	investor_id INTEGER,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	company_name VARCHAR(60)
);

CREATE TABLE payment (
	payment_id INTEGER,
	customer_id INTEGER,
	staff_id INTEGER,
	rental_id INTEGER,
	amount FLOAT,
	payment_date DateTIME,
	last_update TIMESTAMP
);

CREATE TABLE rental(
	rental_id INTEGER,
	rental_date DATETIME,
	inventory_id INTEGER,
	customer_id INTEGER,
	return_date VARCHAR(20),
	staff_id INTEGER,
	last_update TIMESTAMP
);

CREATE TABLE  staff(
	staff_id  INTEGER,
	first_name VARCHAR(60),
	last_name VARCHAR(60),
	address_id INTEGER,
	email VARCHAR(150),
	store_id INTEGER,
	active BIT,
	username VARCHAR(60),
	password VARCHAR(60),
	last_update TIMESTAMP
);

CREATE TABLE store (
	store_id INTEGER,
	manager_staff_id INTEGER,
	address_id INTEGER,
	last_update TIMESTAMP
);


CREATE TABLE actor (
	actor_id TEXT,
	first_name Varchar(60),
	last_name varchar(60),
	last_update TIMESTAMP 
);

CREATE TABLE address (
	address_id TEXT,
	address VARCHAR(255),
	address2 VARCHAR(255),
	district VARCHAR(60),
	city_id TEXT,
	postal_code VARCHAR(6),
	phone VARCHAR(12),
	last_update TIMESTAMP
);
-- Populate tables
INSERT INTO category (category_id, name) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Drama'),
(4, 'Horror'),
(5, 'Sci-Fi'),
(6, 'Romance'),
(7, 'Adventure'),
(8, 'Fantasy'),
(9, 'Thriller'),
(10, 'Documentary');

INSERT INTO award (award_id, actor_id, first_name, last_name, award) VALUES
(1, 1, 'John', 'Doe', 'Best Actor'),
(2, 2, 'Jane', 'Smith', 'Best Actress'),
(3, 3, 'Tom', 'Hanks', 'Best Supporting Actor'),
(4, 4, 'Meryl', 'Streep', 'Lifetime Achievement'),
(5, 5, 'Leonardo', 'DiCaprio', 'Best Actor'),
(6, 6, 'Brad', 'Pitt', 'Best Supporting Actor'),
(7, 7, 'Emma', 'Stone', 'Best Actress'),
(8, 8, 'Will', 'Smith', 'Best Actor'),
(9, 9, 'Denzel', 'Washington', 'Best Actor'),
(10, 10, 'Viola', 'Davis', 'Best Supporting Actress');

INSERT INTO advisor (advisor_id, first_name, last_name, is_chairman) VALUES
(1, 'Michael', 'Johnson', 1),
(2, 'Sarah', 'Lee', 0),
(3, 'David', 'Brown', 1),
(4, 'Emily', 'Davis', 0),
(5, 'James', 'Wilson', 0),
(6, 'Laura', 'Martinez', 1),
(7, 'Daniel', 'Garcia', 0),
(8, 'Sophia', 'Anderson', 1),
(9, 'Matthew', 'Thomas', 0),
(10, 'Emma', 'Taylor', 0);

INSERT INTO city (city_id, city, country_id) VALUES
(1, 'New York', 'USA'),
(2, 'Los Angeles', 'USA'),
(3, 'Chicago', 'USA'),
(4, 'Miami', 'USA'),
(5, 'Houston', 'USA'),
(6, 'Dallas', 'USA'),
(7, 'San Francisco', 'USA'),
(8, 'London', 'UK'),
(9, 'Paris', 'France'),
(10, 'Berlin', 'Germany');

INSERT INTO country (country_id, country) VALUES
(1, 'USA'),
(2, 'UK'),
(3, 'France'),
(4, 'Germany'),
(5, 'Canada'),
(6, 'Australia'),
(7, 'Japan'),
(8, 'China'),
(9, 'Mexico'),
(10, 'Brazil');

INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, active, create_date) VALUES
(1, 1, 'Alice', 'Cooper', 'alice@example.com', 1, 1, '2024-01-01 00:00:00'),
(2, 1, 'Bob', 'Dylan', 'bob@example.com', 2, 1, '2024-01-01 00:00:00'),
(3, 1, 'Charlie', 'Puth', 'charlie@example.com', 3, 1, '2024-01-01 00:00:00'),
(4, 1, 'David', 'Guetta', 'david@example.com', 4, 1, '2024-01-01 00:00:00'),
(5, 1, 'Emma', 'Stone', 'emma@example.com', 5, 1, '2024-01-01 00:00:00'),
(6, 1, 'Frank', 'Ocean', 'frank@example.com', 6, 1, '2024-01-01 00:00:00'),
(7, 1, 'Grace', 'Jones', 'grace@example.com', 7, 1, '2024-01-01 00:00:00'),
(8, 1, 'Henry', 'Cavill', 'henry@example.com', 8, 1, '2024-01-01 00:00:00'),
(9, 1, 'Ivy', 'Wang', 'ivy@example.com', 9, 1, '2024-01-01 00:00:00'),
(10, 1, 'Jack', 'Sparrow', 'jack@example.com', 10, 1, '2024-01-01 00:00:00');


INSERT INTO film (film_id, title, Film_Description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features) VALUES
(1, 'Inception', 'A thief steals corporate secrets through dream-sharing.', '2010', 1, 1, 7, 3.99, 148, 19.99, 'PG-13', 'Behind the Scenes'),
(2, 'Titanic', 'A love story set during the ill-fated voyage.', '1997', 1, 1, 5, 2.99, 195, 17.99, 'PG-13', 'Deleted Scenes'),
(3, 'The Godfather', 'The aging patriarch of an organized crime dynasty.', '1972', 1, 1, 7, 3.99, 175, 19.99, 'R', 'Commentary'),
(4, 'The Dark Knight', 'Batman battles the Joker in Gotham City.', '2008', 1, 1, 7, 3.99, 152, 19.99, 'PG-13', 'Making Of'),
(5, 'Avatar', 'A marine on an alien planet.', '2009', 1, 1, 7, 3.99, 162, 19.99, 'PG-13', 'Special Effects'),
(6, 'The Matrix', 'A computer hacker learns about the true nature of reality.', '1999', 1, 1, 7, 3.99, 136, 19.99, 'R', 'Behind the Scenes'),
(7, 'Forrest Gump', 'The life story of Forrest Gump.', '1994', 1, 1, 7, 3.99, 142, 19.99, 'PG-13', 'Deleted Scenes'),
(8, 'The Lion King', 'A young lion prince flees his kingdom.', '1994', 1, 1, 7, 3.99, 88, 19.99, 'G', 'Sing-Along'),
(9, 'Jurassic Park', 'Dinosaurs run amok in a theme park.', '1993', 1, 1, 7, 3.99, 127, 19.99, 'PG-13', 'Making Of'),
(10, 'Gladiator', 'A Roman general seeks revenge.', '2000', 1, 1, 7, 3.99, 155, 19.99, 'R', 'Commentary');

INSERT INTO film_actor (actor_id, film_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Insert into film_category (excluding last_update)
INSERT INTO film_category (film_id, category_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO film_text (film_id, title, description) VALUES
(1, 'Inception', 'A thief steals corporate secrets through dream-sharing.'),
(2, 'Titanic', 'A love story set during the ill-fated voyage.'),
(3, 'The Godfather', 'The aging patriarch of an organized crime dynasty.'),
(4, 'The Dark Knight', 'Batman battles the Joker in Gotham City.'),
(5, 'Avatar', 'A marine on an alien planet.'),
(6, 'The Matrix', 'A computer hacker learns about the true nature of reality.'),
(7, 'Forrest Gump', 'The life story of Forrest Gump.'),
(8, 'The Lion King', 'A young lion prince flees his kingdom.'),
(9, 'Jurassic Park', 'Dinosaurs run amok in a theme park.'),
(10, 'Gladiator', 'A Roman general seeks revenge.');


INSERT INTO investor (investor_id, first_name, last_name, company_name) VALUES
(1, 'Alice', 'Johnson', 'Tech Ventures'),
(2, 'Bob', 'Smith', 'Global Investments'),
(3, 'Charlie', 'Brown', 'Innovative Funds'),
(4, 'David', 'Williams', 'Future Tech'),
(5, 'Emma', 'Jones', 'Creative Capital'),
(6, 'Frank', 'Miller', 'Strategic Partners'),
(7, 'Grace', 'Taylor', 'Growth Fund'),
(8, 'Henry', 'Anderson', 'Fintech Angels'),
(9, 'Ivy', 'Moore', 'VC Partners'),
(10, 'Jack', 'Wilson', 'Pioneer Capital');

INSERT INTO payment (payment_id, customer_id, staff_id, rental_id, amount, payment_date) VALUES
(1, 1, 1, 1, 19.99, '2024-01-01 10:00:00'),
(2, 2, 2, 2, 15.99, '2024-01-02 11:00:00'),
(3, 3, 1, 3, 9.99, '2024-01-03 12:00:00'),
(4, 4, 2, 4, 12.99, '2024-01-04 13:00:00'),
(5, 5, 1, 5, 7.99, '2024-01-05 14:00:00'),
(6, 6, 2, 6, 8.99, '2024-01-06 15:00:00'),
(7, 7, 1, 7, 14.99, '2024-01-07 16:00:00'),
(8, 8, 2, 8, 5.99, '2024-01-08 17:00:00'),
(9, 9, 1, 9, 11.99, '2024-01-09 18:00:00'),
(10, 10, 2, 10, 6.99, '2024-01-10 19:00:00');

INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id) VALUES
(1, '2024-01-01 10:00:00', 1, 1, '2024-01-05', 1),
(2, '2024-01-02 11:00:00', 2, 2, '2024-01-06', 2),
(3, '2024-01-03 12:00:00', 3, 3, '2024-01-07', 1),
(4, '2024-01-04 13:00:00', 4, 4, '2024-01-08', 2),
(5, '2024-01-05 14:00:00', 5, 5, '2024-01-09', 1),
(6, '2024-01-06 15:00:00', 6, 6, '2024-01-10', 2),
(7, '2024-01-07 16:00:00', 7, 7, '2024-01-11', 1),
(8, '2024-01-08 17:00:00', 8, 8, '2024-01-12', 2),
(9, '2024-01-09 18:00:00', 9, 9, '2024-01-13', 1),
(10, '2024-01-10 19:00:00', 10, 10, '2024-01-14', 2);

INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password) VALUES
(1, 'John', 'Doe', 1, 'john.doe@example.com', 1, 1, 'jdoe', 'password123'),
(2, 'Jane', 'Smith', 2, 'jane.smith@example.com', 1, 1, 'jsmith', 'password123'),
(3, 'Michael', 'Johnson', 3, 'michael.johnson@example.com', 2, 1, 'mjohnson', 'password123'),
(4, 'Emily', 'Davis', 4, 'emily.davis@example.com', 2, 1, 'edavis', 'password123'),
(5, 'David', 'Brown', 5, 'david.brown@example.com', 1, 1, 'dbrown', 'password123'),
(6, 'Laura', 'Wilson', 6, 'laura.wilson@example.com', 2, 1, 'lwilson', 'password123'),
(7, 'James', 'Lee', 7, 'james.lee@example.com', 1, 1, 'jlee', 'password123'),
(8, 'Sophia', 'Moore', 8, 'sophia.moore@example.com', 1, 1, 'smoore', 'password123'),
(9, 'Daniel', 'Taylor', 9, 'daniel.taylor@example.com', 2, 1, 'dtaylor', 'password123'),
(10, 'Olivia', 'Martinez', 10, 'olivia.martinez@example.com', 2, 1, 'omartinez', 'password123');

INSERT INTO store (store_id, manager_staff_id, address_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

INSERT INTO actor (actor_id, first_name, last_name) VALUES
('A01', 'Leonardo', 'DiCaprio'),
('A02', 'Robert', 'De Niro'),
('A03', 'Meryl', 'Streep'),
('A04', 'Tom', 'Hanks'),
('A05', 'Scarlett', 'Johansson'),
('A06', 'Denzel', 'Washington'),
('A07', 'Johnny', 'Depp'),
('A08', 'Emma', 'Stone'),
('A09', 'Brad', 'Pitt'),
('A10', 'Viola', 'Davis');

INSERT INTO address (address_id, address, address2, district, city_id, postal_code, phone) VALUES
('AD01', '123 Main St', 'Apt 1', 'Downtown', '1', '10001', '555-1234'),
('AD02', '456 Elm St', 'Apt 2', 'Uptown', '2', '90001', '555-2345'),
('AD03', '789 Oak St', 'Suite 3', 'Midtown', '3', '60601', '555-3456'),
('AD04', '101 Maple St', 'Suite 4', 'Eastside', '4', '33101', '555-4567'),
('AD05', '202 Pine St', 'Apt 5', 'Westside', '5', '77001', '555-5678'),
('AD06', '303 Cedar St', 'Apt 6', 'Southside', '6', '75201', '555-6789'),
('AD07', '404 Birch St', 'Suite 7', 'Northside', '7', '94101', '555-7890'),
('AD08', '505 Walnut St', 'Apt 8', 'Downtown', '8', '10002', '555-8901'),
('AD09', '606 Ash St', 'Suite 9', 'Uptown', '9', '75001', '555-9012'),
('AD10', '707 Palm St', 'Apt 10', 'Midtown', '10', '90210', '555-0123');

