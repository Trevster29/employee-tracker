DROP DATABASE IF EXISTS TMemployeeTr_db;

CREATE DATABASE TMemployeeTr_db;

USE TMemployeeTr_db;

create table department (
    id INT PRIMARY KEY,
    dpt_name VARCHAR(30)
);

create table role (
    id INT PRIMARY KEY,
    title VARCHAR(30),
    Salary DECIMAL(12,4),
    dpt_ID INT
);

create table employee (
    id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT
);