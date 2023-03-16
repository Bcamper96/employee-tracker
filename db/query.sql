USE employee_db;

-- SQL code to select all employees with roles and departments
SELECT employees.id, employees.first_name, employees.last_name, roles.title, roles.salary, departments.name AS department, CONCAT(manager.first_name, " ", manager.last_name) AS manager 
FROM employees 
LEFT JOIN role ON employees.roles_id = roles.id 
LEFT JOIN department ON roles.departments_id = departments.id 
LEFT JOIN employee manager ON employees.managers_id = manager.id;

-- SQL code to select all roles with their associated departments
SELECT roles.id, roles.title, roles.salary, departments.name AS department
FROM roles 
LEFT JOIN department ON roles.departments_id = departments.id;
