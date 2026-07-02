CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS salespersons;

CREATE TABLE cars (
    car_id_auto INT AUTO_INCREMENT,
    vin VARCHAR(20) NOT NULL UNIQUE,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year INT,
    color VARCHAR(30),
    PRIMARY KEY (car_id_auto)
);

CREATE TABLE customers (
    customer_id_auto INT AUTO_INCREMENT,
    customer_id VARCHAR(20) NOT NULL UNIQUE,
    customer_name VARCHAR(50) NOT NULL,
    phone VARCHAR(30),
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(30),
    state_province VARCHAR(30),
    country VARCHAR(30),
    postal_code VARCHAR(20),
    PRIMARY KEY (customer_id_auto)
);

CREATE TABLE salespersons (
    salesperson_id_auto INT AUTO_INCREMENT,
    staff_id VARCHAR(20) NOT NULL UNIQUE,
    staff_name VARCHAR(50) NOT NULL,
    store VARCHAR(30),
    PRIMARY KEY (salesperson_id_auto)
);

CREATE TABLE invoices (
    invoice_id_auto INT AUTO_INCREMENT,
    invoice_number VARCHAR(20) NOT NULL UNIQUE,
    invoice_date DATE NOT NULL,
    car_id_auto INT NOT NULL,
    customer_id_auto INT NOT NULL,
    salesperson_id_auto INT NOT NULL,
    PRIMARY KEY (invoice_id_auto),
    FOREIGN KEY (car_id_auto) REFERENCES cars(car_id_auto),
    FOREIGN KEY (customer_id_auto) REFERENCES customers(customer_id_auto),
    FOREIGN KEY (salesperson_id_auto) REFERENCES salespersons(salesperson_id_auto)
);