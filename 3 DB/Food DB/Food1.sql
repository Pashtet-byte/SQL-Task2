USE FoodDeliveryDB;
GO

INSERT INTO Restaurants (Name, Cuisine, Address, Phone, Rating)
VALUES
    ('����� �����', '�����������', '��. ������, 15', '+7(495)111-11-11', 4.5),
    ('���� ���', '��������', '��. ����, 23', '+7(495)222-22-22', 4.7),
    ('������ ����', '������������', '��. ������, 45', '+7(495)333-33-33', 4.3),
    ('������OFF', '����������', '��. ��������, 12', '+7(495)444-44-44', 4.8),
    ('�����������', '��������������', '��. �������, 8', '+7(495)555-55-55', 4.6);

INSERT INTO Couriers (FirstName, LastName, Phone, VehicleType, HireDate, Salary)
VALUES
    ('�������', '��������', '+7(999)111-22-33', '���������', '2022-01-15', 40000.00),
    ('�������', '���������', '+7(999)222-33-44', '��������', '2022-03-10', 45000.00),
    ('������', '��������', '+7(999)333-44-55', '����������', '2021-11-05', 50000.00),
    ('����', '��������', '+7(999)444-55-66', '���������', '2023-01-08', 38000.00);

INSERT INTO Customers (FirstName, LastName, Phone, Address, Email)
VALUES
    ('����', '��������', '+7(999)555-66-77', '��. �����������, 1-23', 'anna@mail.com'),
    ('������', '�������', '+7(999)666-77-88', '��. ����������, 45-12', 'mikhail@mail.com'),
    ('���������', '�������', '+7(999)777-88-99', '��. ��������, 3-67', NULL),
    ('���������', '������', '+7(999)888-99-00', '��. �������, 22-15', 'alex@mail.com'),
    ('�����', '��������', '+7(999)999-00-11', '��. ����, 78-34', 'olga@mail.com');

INSERT INTO Orders (CustomerID, RestaurantID, CourierID, OrderDate, DeliveryAddress, TotalAmount, Status)
VALUES
    (1, 1, 1, '2023-01-15T18:30:00', N'��. �����������, 1-23', 1200.00, 'Delivered'),
    (2, 2, 2, '2023-01-15T19:45:00', N'��. ����������, 45-12', 2500.00, 'InDelivery'),
    (3, 3, 3, '2023-01-16T12:15:00', N'��. ��������, 3-67', 800.00, 'Ready'),
    (4, 4, 4, '2023-01-16T20:00:00', N'��. �������, 22-15', 1800.00, 'Processing'),
    (5, 5, 1, '2023-01-17T13:30:00', N'��. ����, 78-34', 1500.00, 'Cooking');

SELECT 'Restaurants' AS TableName, COUNT(*) AS Count FROM Restaurants
UNION ALL
SELECT 'Couriers', COUNT(*) FROM Couriers
UNION ALL
SELECT 'Customers', COUNT(*) FROM Customers
UNION ALL
SELECT 'Orders', COUNT(*) FROM Orders;