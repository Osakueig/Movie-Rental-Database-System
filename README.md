# Movie-Rental-Database-System
This project is a Movie Rental Database System, designed to manage the various aspects of a movie rental business. The system handles customer information, film inventory, rental transactions, payments, staff management, and more. It serves as a backend database solution, ensuring data integrity and streamlined operations for a rental service, such as a video store or online streaming service.

Key Features:
Customer Management: Store and manage customer details, including name, email, address, and account activity status.
Film Catalog: Maintain a comprehensive catalog of films, including details such as title, description, release year, rating, and categories (e.g., Action, Comedy, Drama).
Inventory Tracking: Track the availability and rental history of films in different store locations.
Rental Transactions: Handle rental information, including rental date, return date, associated inventory, and customer information.
Payment Processing: Record customer payments, including amounts, payment dates, and rental details.
Staff Management: Manage employee information such as name, email, assigned store, and roles, including assigning store managers.
Reporting: Automatically update timestamps for tracking the last update to records.
Database Design:
The database consists of several tables:

Customers: Stores customer information.
Films: Stores movie details such as title, description, and rental information.
Categories: Classifies films into genres such as Action, Comedy, etc.
Inventory: Manages film copies available at different store locations.
Rentals and Payments: Handles rental transactions and records customer payments.
Staff: Stores information about employees working in different store locations.
Stores: Stores details about each rental store.
Actors & Awards: Tracks actors and any associated awards.
Technologies Used:
SQL: For defining and managing the database schema and relationships.
RDBMS: The project can be deployed using any SQL-compatible database such as MySQL, PostgreSQL, or SQL Server.
Installation:
Clone the repository.
Set up the database on your local or remote SQL server.
Execute the provided SQL scripts to create tables and populate sample data.
Use SQL queries to interact with the database for CRUD operations and reporting.
This project is ideal for learning database design, working with relational databases, and managing a real-world business scenario like a movie rental service. 
