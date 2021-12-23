CREATE DATABASE Market

USE Market
CREATE TABLE Products(
	Id int,
	[Name] nvarchar(20),
	Price int
)

ALTER TABLE Products
ADD Brand nvarchar(20)

INSERT INTO Products
VALUES('1', 'Milk', 3, 'Milk'),
('2', 'Salfet', 6, 'Selpak'),
('3', 'Bread', 1, 'Alman Baker'),
('4', 'Ayran', 2.50, 'Atena'),
('5', 'Kofe', 10, 'Jacobs'),
('6', 'Çay', 5, 'Champion'),
('7', 'Çips', 2.50, 'Lays'),
('8', 'Yumurta', 2, 'Organic'),
('9', 'Better', 10, 'Golden'),
('10', 'Enerji içkisi', 1, 'Hell'),
('11', 'Chocolate', 2, 'Nestle'),
('12', 'Sakkız', 2, 'Dirol'),
('13', 'Kolbasa', 12, 'Sab'),
('14', 'Mayonez', 5, 'Bizim süfrə'),
('15', 'Qreçka', 4, 'Bismark')

SELECT Name, Brand, Price from Products where Price>10

SELECT Brand, LEN(Brand) as BrandLength from Products where LEN(Brand)>5

SELECT (Name + ' ' + Brand) as ProductInfo from Products