create table Vendors(
vendor_id INTEGER primary key,
vendor_name VARCHAR(50),
vendor_email VARCHAR(50),
vendor_phone VARCHAR(50)
);
create table Products(
product_id INTEGER,
product_name VARCHAR(50),
product_price DECIMAL(10,2),
vendor_id INTEGER FOREIGN KEY REFERENCES Vendors(vendor_id)
);

INSERT INTO Vendors (vendor_id, vendor_name, vendor_email, vendor_phone)
VALUES
(1100, 'Ali', 'ali@gmail.com','91111112'),
(1110, 'Mohammed', 'Mohammed@gmai.com', '91111113'),
(1111, 'Ali', 'ali@gmail.com', '91111114'),
(1112, 'Mohammed', 'mohammed@gmai.com', '91111115'),
(1200, 'Ali', 'ali@gmail.com', '91111116'),
(1201, 'Mohammed', 'mohammed@gmai.com', '91111117'),
(1202, 'Ibrahim', 'ibrahim@gmail.com', '91111118'),
(1203, 'Bader', 'bader@gmail.com', '91111119'),
(1204, 'Awadh', 'awadh@gmail.com', '91113333'),
(1205, 'Mohsin', 'mohsin@gmail.com', '91111555'),
(1206, 'Said', 'said@gmail.com', '91411222');
INSERT INTO Products (product_id, product_name, product_price, vendor_id)
VALUES
(111, 'Iphone 14', 500.00, 1100),
(112, 'Iphone 13', 350.00, 1100),
(113, 'Iphone 12', 300.00, 1111),
(114, 'Iphone 11', 250.00, 1111),
(115, 'Ipad 10', 350.00, 1200),
(116, 'Ipad 9', 300.00, 1201),
(117, 'Galaxy S23', 500.00, 1202),
(118, 'Galaxy S22', 400.00, 1202),
(119, 'Galaxy S21', 350.00, 1110),
(120, 'Galaxy S20', 300.00, 1112),
(121, 'Galaxy S19', 250.00, 1112),
(122, 'Galaxy S18', 200.00, 1203),
(123, 'Galaxy Note23', 400.00, 1204),
(124, 'Galaxy Note22', 350.00, 1204),
(125, 'Galaxy Note21', 300.00, 1204),
(126, 'Nokia 10', 250.00, 1205),
(127, 'Nokia 9', 200.00, 1205),
(128, 'Nokia 8',  150.00, 1205),
(129, 'Sony 10', 300.00, 1206),
(130, 'Sony 9', 200.00, 1206);









