CREATE DATABASE salesdb;
USE salesdb;
CREATE TABLE online_sales(
	order_id INT,
    order_date DATE,
    amount INT,
    product_id VARCHAR(10)
    );
INSERT INTO online_sales VALUES
(101,'2024-01-05',1200,'P03'),
(102,'2024-01-15',800,'P01'),
(103,'2024-02-02',1500,'P02'),
(104,'2024-02-16',650,'P01'),
(105,'2024-02-22',900,'P04'),
(106,'2024-03-01',2000,'P03'),
(107,'2024-03-11',750,'P02'),
(108,'2024-03-25',1300,'P01'),
(109,'2024-04-05',950,'P04'),
(110,'2024-04-17',2500,'P03'),
(111,'2024-05-03',1700,'P02'),
(112,'2024-05-13',900,'P04'),
(113,'2024-05-24',1100,'P01'),
(114,'2024-06-06',2200,'P03'),
(115,'2024-06-14',700,'P02'),
(116,'2024-07-08',1800,'P04'),
(117,'2024-07-21',1200,'P01'),
(118,'2024-07-29',900,'P02'),
(119,'2024-08-12',2600,'P03'),
(120,'2024-08-26',1450,'P04');

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY year, month;


SELECT 
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY month
ORDER BY total_revenue DESC
LIMIT 3;




    