create database if not exists hardware_store;
use hardware_store;

create table customers (
    customer_id int primary key,
    name varchar(100) not null
);

create table products (
    product_id int primary key,
    product_name varchar(120) not null,
    price decimal(10,2) not null
);

create table orders (
    order_id int primary key,
    customer_id int not null,
    product_id int not null,
    quantity int not null,
    amount decimal(10,2) not null,
    order_date date not null,
    foreign key (customer_id) references customers(customer_id),
    foreign key (product_id) references products(product_id)
);

create table shipments (
    shipment_id int primary key,
    order_id int not null,
    shipping_date date not null,
    carrier varchar(50) not null,
    tracking_number varchar(100) not null,
    foreign key (order_id) references orders(order_id)
);

create table payments (
    payment_id int primary key,
    order_id int not null,
    payment_date date not null,
    payment_method varchar(50) not null,
    payment_amount decimal(10,2) not null,
    foreign key (order_id) references orders(order_id)
);

insert into customers values
(1,'Alice Johnson'), (2,'Bob Smith'), (3,'Carol Lee'), (4,'David Brown'),
(5,'Emma Wilson'), (6,'Frank Miller'), (7,'Grace Kim'), (8,'Hassan Ali'),
(9,'Isabella Rossi'), (10,'John Carter'), (11,'Lina Gomez'), (12,'Mark Evans'),
(13,'Nina Patel'), (14,'Omar Hassan'), (15,'Paula White'), (16,'Quinn Rogers'),
(17,'Rita Singh'), (18,'Sam Turner'), (19,'Tina Novak'), (20,'Youssef Ibrahim');

-- PRODUCTS 
insert into products values
(1,'Laptop',1200.00), (2,'Mouse',25.00), (3,'Keyboard',75.00),
(4,'Monitor',300.00), (5,'Printer',180.00), (6,'Desk Chair',220.00),
(7,'USB Cable',10.00), (8,'Webcam',95.00), (9,'External Hard Drive',150.00),
(10,'Desk Lamp',45.00), (11,'Tablet',600.00), (12,'Phone Charger',30.00),
(13,'Router',130.00), (14,'Headphones',85.00), (15,'Microphone',140.00);

insert into orders values
(1,1,1,1,1200.00,'2026-01-01'),
(2,2,2,2,50.00,'2026-01-02'),
(3,3,3,1,75.00,'2026-01-03'),
(4,4,4,1,300.00,'2026-01-04'),
(5,5,5,1,180.00,'2026-01-05'),
(6,6,6,1,220.00,'2026-01-06'),
(7,7,7,5,50.00,'2026-01-07'),
(8,8,8,1,95.00,'2026-01-08'),
(9,9,9,1,150.00,'2026-01-09'),
(10,10,10,2,90.00,'2026-01-10'),

(11,11,11,1,600.00,'2026-01-11'),
(12,12,12,3,90.00,'2026-01-12'),
(13,13,13,1,130.00,'2026-01-13'),
(14,14,14,2,170.00,'2026-01-14'),
(15,15,15,1,140.00,'2026-01-15'),
(16,16,1,1,1200.00,'2026-01-16'),
(17,17,2,4,100.00,'2026-01-17'),
(18,18,3,1,75.00,'2026-01-18'),
(19,19,4,1,300.00,'2026-01-19'),
(20,20,5,1,180.00,'2026-01-20'),

(21,1,6,1,220.00,'2026-01-21'),
(22,2,7,10,100.00,'2026-01-22'),
(23,3,8,1,95.00,'2026-01-23'),
(24,4,9,2,300.00,'2026-01-24'),
(25,5,10,1,45.00,'2026-01-25'),
(26,6,1,1,1200.00,'2026-01-26'),
(27,7,2,3,75.00,'2026-01-27'),
(28,8,3,2,150.00,'2026-01-28'),
(29,9,4,1,300.00,'2026-01-29'),
(30,10,5,1,180.00,'2026-01-30'),

(31,11,6,1,220.00,'2026-02-01'),
(32,12,7,6,60.00,'2026-02-02'),
(33,13,8,2,190.00,'2026-02-03'),
(34,14,9,1,150.00,'2026-02-04'),
(35,15,10,2,90.00,'2026-02-05'),
(36,16,11,1,600.00,'2026-02-06'),
(37,17,12,4,120.00,'2026-02-07'),
(38,18,13,1,130.00,'2026-02-08'),
(39,19,14,2,170.00,'2026-02-09'),
(40,20,15,1,140.00,'2026-02-10'),

(41,1,1,1,1200.00,'2026-02-11'),
(42,2,2,1,25.00,'2026-02-12'),
(43,3,3,1,75.00,'2026-02-13'),
(44,4,4,1,300.00,'2026-02-14'),
(45,5,5,1,180.00,'2026-02-15'),
(46,6,6,1,220.00,'2026-02-16'),
(47,7,7,3,30.00,'2026-02-17'),
(48,8,8,1,95.00,'2026-02-18'),
(49,9,9,1,150.00,'2026-02-19'),
(50,10,10,2,90.00,'2026-02-20');

insert into shipments values
(1,1,'2026-01-02','DHL','TRK1001'),
(2,2,'2026-01-03','FedEx','TRK1002'),
(3,3,'2026-01-04','UPS','TRK1003'),
(4,4,'2026-01-05','DHL','TRK1004'),
(5,5,'2026-01-06','FedEx','TRK1005'),
(6,6,'2026-01-07','UPS','TRK1006'),
(7,7,'2026-01-08','DHL','TRK1007'),
(8,8,'2026-01-09','FedEx','TRK1008'),
(9,9,'2026-01-10','UPS','TRK1009'),
(10,10,'2026-01-11','DHL','TRK1010'),

(11,11,'2026-01-12','FedEx','TRK1011'),
(12,12,'2026-01-13','UPS','TRK1012'),
(13,13,'2026-01-14','DHL','TRK1013'),
(14,14,'2026-01-15','FedEx','TRK1014'),
(15,15,'2026-01-16','UPS','TRK1015'),
(16,16,'2026-01-17','DHL','TRK1016'),
(17,17,'2026-01-18','FedEx','TRK1017'),
(18,18,'2026-01-19','UPS','TRK1018'),
(19,19,'2026-01-20','DHL','TRK1019'),
(20,20,'2026-01-21','FedEx','TRK1020'),

(21,21,'2026-01-22','UPS','TRK1021'),
(22,22,'2026-01-23','DHL','TRK1022'),
(23,23,'2026-01-24','FedEx','TRK1023'),
(24,24,'2026-01-25','UPS','TRK1024'),
(25,25,'2026-01-26','DHL','TRK1025'),
(26,26,'2026-01-27','FedEx','TRK1026'),
(27,27,'2026-01-28','UPS','TRK1027'),
(28,28,'2026-01-29','DHL','TRK1028'),
(29,29,'2026-01-30','FedEx','TRK1029'),
(30,30,'2026-01-31','UPS','TRK1030'),

(31,31,'2026-02-02','DHL','TRK1031'),
(32,32,'2026-02-03','FedEx','TRK1032'),
(33,33,'2026-02-04','UPS','TRK1033'),
(34,34,'2026-02-05','DHL','TRK1034'),
(35,35,'2026-02-06','FedEx','TRK1035'),
(36,36,'2026-02-07','UPS','TRK1036'),
(37,37,'2026-02-08','DHL','TRK1037'),
(38,38,'2026-02-09','FedEx','TRK1038'),
(39,39,'2026-02-10','UPS','TRK1039'),
(40,40,'2026-02-11','DHL','TRK1040'),

(41,41,'2026-02-12','FedEx','TRK1041'),
(42,42,'2026-02-13','UPS','TRK1042'),
(43,43,'2026-02-14','DHL','TRK1043'),
(44,44,'2026-02-15','FedEx','TRK1044'),
(45,45,'2026-02-16','UPS','TRK1045'),
(46,46,'2026-02-17','DHL','TRK1046'),
(47,47,'2026-02-18','FedEx','TRK1047'),
(48,48,'2026-02-19','UPS','TRK1048'),
(49,49,'2026-02-20','DHL','TRK1049'),
(50,50,'2026-02-21','FedEx','TRK1050');

insert into payments values
(1,1,'2026-01-01','Card',1200.00),
(2,2,'2026-01-02','Cash',50.00),
(3,3,'2026-01-03','Card',75.00),
(4,4,'2026-01-04','Card',300.00),
(5,5,'2026-01-05','Cash',180.00),
(6,6,'2026-01-06','Card',220.00),
(7,7,'2026-01-07','Cash',50.00),
(8,8,'2026-01-08','Card',95.00),
(9,9,'2026-01-09','Card',150.00),
(10,10,'2026-01-10','Cash',90.00),

(11,11,'2026-01-11','Card',600.00),
(12,12,'2026-01-12','Card',90.00),
(13,13,'2026-01-13','Cash',130.00),
(14,14,'2026-01-14','Card',170.00),
(15,15,'2026-01-15','Card',140.00),
(16,16,'2026-01-16','Cash',1200.00),
(17,17,'2026-01-17','Card',100.00),
(18,18,'2026-01-18','Cash',75.00),
(19,19,'2026-01-19','Card',300.00),
(20,20,'2026-01-20','Cash',180.00),

(21,21,'2026-01-21','Card',220.00),
(22,22,'2026-01-22','Cash',100.00),
(23,23,'2026-01-23','Card',95.00),
(24,24,'2026-01-24','Card',300.00),
(25,25,'2026-01-25','Cash',45.00),
(26,26,'2026-01-26','Card',1200.00),
(27,27,'2026-01-27','Cash',75.00),
(28,28,'2026-01-28','Card',150.00),
(29,29,'2026-01-29','Card',300.00),
(30,30,'2026-01-30','Cash',180.00),

(31,31,'2026-02-01','Card',220.00),
(32,32,'2026-02-02','Cash',60.00),
(33,33,'2026-02-03','Card',190.00),
(34,34,'2026-02-04','Card',150.00),
(35,35,'2026-02-05','Cash',90.00),
(36,36,'2026-02-06','Card',600.00),
(37,37,'2026-02-07','Cash',120.00),
(38,38,'2026-02-08','Card',130.00),
(39,39,'2026-02-09','Card',170.00),
(40,40,'2026-02-10','Cash',140.00),

(41,41,'2026-02-11','Card',1200.00),
(42,42,'2026-02-12','Cash',25.00),
(43,43,'2026-02-13','Card',75.00),
(44,44,'2026-02-14','Card',300.00),
(45,45,'2026-02-15','Cash',180.00),
(46,46,'2026-02-16','Card',220.00),
(47,47,'2026-02-17','Cash',30.00),
(48,48,'2026-02-18','Card',95.00),
(49,49,'2026-02-19','Card',150.00),
(50,50,'2026-02-20','Cash',90.00);
-------------------------------------------------------------------




-- 1
SELECT c.name, SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name;

-- 2
SELECT c.name, COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(o.order_id) >= 3;

-- 3
SELECT c.name, ROUND(AVG(o.amount), 2) AS average_amount
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name;

-- 4
SELECT p.product_name, SUM(o.amount) AS total_revenue
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- 5
SELECT p.product_name, SUM(o.quantity) AS total_quantity_sold
FROM products p
JOIN orders o ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- 6
SELECT order_date, COUNT(*) AS order_count
FROM orders
GROUP BY order_date
ORDER BY order_date;

-- 7
SELECT order_date, SUM(amount) AS daily_sales
FROM orders
GROUP BY order_date
ORDER BY order_date;

-- 8
SELECT payment_method, SUM(payment_amount) AS total_collected
FROM payments
GROUP BY payment_method;

-- 9
SELECT payment_date, SUM(payment_amount) AS total_payment_amount
FROM payments
GROUP BY payment_date
ORDER BY payment_date;

-- 10
SELECT carrier,
       COUNT(*) AS shipment_count,
       MIN(shipping_date) AS first_shipping_date,
       MAX(shipping_date) AS last_shipping_date
FROM shipments
GROUP BY carrier;