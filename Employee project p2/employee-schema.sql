--Employee practice sql
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    department_id INT,
    hire_date DATE
);

INSERT INTO departments (department_name)
VALUES
('HR'),
('Finance'),
('IT'),
('Marketing');

INSERT INTO employees 
(first_name, last_name, age, salary, department_id, hire_date)
VALUES
('John', 'Doe', 28, 3500, 1, '2024-01-10'),
('Sarah', 'Smith', 32, 5200, 2, '2023-06-15'),
('Ali', 'Khan', 25, 4100, 3, '2024-03-01'),
('Emily', 'Brown', 29, 4800, 4, '2022-11-20'),
('Michael', 'Lee', 35, 6100, 2, '2021-09-05'),
('Fatima', 'Ahmed', 27, 3900, 3, '2024-02-12'),
('Daniel', 'Wilson', 31, 4500, 1, '2023-08-18'),
('Sophia', 'Taylor', 26, 4300, 4, '2024-04-22');

select * from employees
