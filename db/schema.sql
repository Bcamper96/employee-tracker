CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  departments_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (departments_id) REFERENCES departments(id)
);

CREATE TABLE employees (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  managers_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (roles_id) REFERENCES roles(id),
  FOREIGN KEY (managers_id) REFERENCES employees(id)
);
