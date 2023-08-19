# Build a Salon Appointment Scheduler

This code snippet is a PostgreSQL database dump in SQL format. It contains a series of statements that, when executed in a PostgreSQL database, will create the database structure and load sample data into the created tables. Here's an explanation of the main parts of the code:

Initial Configuration and Database Creation:

Various initial configurations are set for the database.
An existing database named "salon" is dropped if it already exists.
A new database named "salon" is created using template0 with UTF-8 encoding and locale settings.
Table Creation:

Three tables are created in the public schema: "appointments," "customers," and "services."
Each table has specific columns that describe different aspects, such as appointments, customers, and services.
Sequence Creation:

Sequences are created to generate automatic values for primary key columns in the tables.
Each sequence has specified initial, increment, and cache values.
Assignment of Sequences to Primary Key Columns:

The newly created sequences are assigned to corresponding primary key columns in the tables.
Insertion of Sample Data:

Example records are inserted into the "appointments," "customers," and "services" tables using INSERT INTO statements.
Adjustment of Sequence Values:

Current values for the previously created sequences are set to match the values of the last inserted records.
Definition of Constraints and Foreign Keys:

Constraints and foreign keys are defined to maintain data integrity and relationships between the tables.
For example, a primary key is set for the "appointments," "customers," and "services" tables, and foreign keys are created in the "appointments" table that reference the "customers" and "services" tables.
In summary, this code creates a database named "salon" with three tables: "appointments," "customers," and "services." It then loads sample data into these tables and establishes constraints and relationships between them. This code could be used to recreate the database structure and sample data in a PostgreSQL installation.

# Screenshot

### See code above
![Captura4](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/5c5a055f-564d-4592-a635-3a40c4dee548)
![Captura5](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/6622a1cd-7c60-47ec-ba9f-be7ffa3e75ad)
![Captura6](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/ab229e89-b88b-4bd1-bc4c-ac0eb8dbf3e0)
![Captura7](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/73ab57e3-86a1-4e59-a0dc-8e9b7699d047)
![Captura8](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/f0fe42ef-00d3-40a9-955b-d006e1c2353d)

## Appointments Table
![Captura9](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/eec150ef-9954-4433-ab54-473336d3e0bd)
![Captura10](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/96d311d1-7e8d-4412-8c69-e68f8938a595)

## Customers Table
![Captura11](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/740de07f-8324-4a10-9a14-56e413d3e0c6)
![Captura12](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/a5173443-4e11-45fc-86f7-514c31c658ba)

## Customers Services
![Captura13](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/68a2e9f9-031c-4ac9-b368-4f49462cc509)
![Captura14](https://github.com/AndresF-SanchezG/postgres-challenge3/assets/113924667/6a72a3f2-0264-417a-b595-1c694d920fde)

# Author

- Autor - [@AndresF-SanchezG](https://github.com/AndresF-SanchezG)
- School - [Freecodecamp](https://www.freecodecamp.org/)
- Curse - [Build a Salon Appointment Scheduler](https://www.freecodecamp.org/learn/relational-database/build-a-salon-appointment-scheduler-project/build-a-salon-appointment-scheduler)



