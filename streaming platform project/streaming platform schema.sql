CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    country VARCHAR(50),
    subscription_type VARCHAR(50)
);

CREATE TABLE shows (
    show_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    release_year INT
);

CREATE TABLE watch_history (
    watch_id SERIAL PRIMARY KEY,
    user_id INT,
    show_id INT,
    watch_hours DECIMAL(5,2),
    watch_date DATE
);


INSERT INTO users (full_name, country, subscription_type)
VALUES
('Ali Khan', 'Oman', 'Premium'),
('Sarah Smith', 'UAE', 'Basic'),
('John Doe', 'Oman', 'Premium'),
('Emily Brown', 'Qatar', 'Basic'),
('Fatima Ahmed', 'Oman', 'Premium'),
('Daniel Wilson', 'UAE', 'Standard');

INSERT INTO shows (title, genre, release_year)
VALUES
('Dark City', 'Sci-Fi', 2022),
('Money Trail', 'Crime', 2021),
('Galaxy Wars', 'Sci-Fi', 2023),
('Office Days', 'Comedy', 2020),
('The Detective', 'Crime', 2024),
('Laugh Out Loud', 'Comedy', 2021);

INSERT INTO watch_history
(user_id, show_id, watch_hours, watch_date)
VALUES
(1, 1, 5.5, '2025-01-02'),
(2, 2, 2.0, '2025-01-03'),
(3, 3, 7.0, '2025-01-04'),
(1, 2, 3.5, '2025-01-05'),
(4, 4, 1.5, '2025-01-06'),
(5, 5, 6.0, '2025-01-07'),
(6, 1, 2.5, '2025-01-08'),
(2, 6, 4.0, '2025-01-09'),
(3, 5, 5.0, '2025-01-10'),
(5, 3, 8.0, '2025-01-11');

















