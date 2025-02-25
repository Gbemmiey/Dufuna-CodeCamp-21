CREATE DATABASE transport_company;
-- Create Database for the transportation company

show DATABASES;
-- To show the list of all Databases

-- Use the Database
USE transport_company;


-- Table for details of registered passengers
CREATE TABLE passengers(
    id INT NOT NULL AUTO_INCREMENT,
    full_name VARCHAR(250) NOT NULL,
    sex VARCHAR(20) NOT NULL,
    age VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- Table for passengers' record
CREATE TABLE passengers_details(
    id INT NOT NULL AUTO_INCREMENT,
    passenger_id INT NOT NULL,
    passenger_class ENUM('1', '2', '3') NOT NULL, 
    passenger_ticket_number VARCHAR(50) NOT NULL;
    trip_fare DECIMAL(10,2) NOT NULL,
    assigned_cabin VARCHAR(50) NOT NULL,
    parent_children_no INT NOT NULL,
    siblings_spouse_no INT NOT NULL,
    point_of_embarkation VARCHAR(250) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (passenger_id) REFERENCES passengers (id)
);

-- Table for event of accidents
CREATE TABLE accident_cases (
    id INT NOT NULL AUTO_INCREMENT,
    passengers_id INT NOT NULL,
    passenger_survived BOOLEAN NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (passengers_id) REFERENCES passengers (id)
);

show table status;

-- End of Tables
