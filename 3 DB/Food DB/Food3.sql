USE FoodDeliveryDB;
GO

UPDATE Restaurants
SET Rating = Rating + 0.1
WHERE Cuisine = '�����������';

SELECT * FROM Restaurants WHERE Cuisine = '�����������';

UPDATE Orders
SET Status = 'Delivered', TotalAmount = TotalAmount * 1.05
WHERE OrderDate < '2023-01-16T00:00:00' AND Status = 'InDelivery';

UPDATE Couriers
SET Salary = Salary * 1.10
WHERE VehicleType = '����������';

UPDATE Restaurants
SET Rating = 5.0
WHERE Name = '������OFF';

UPDATE Customers
SET Email = 'new.anna@mail.com'
WHERE FirstName = '����' AND LastName = '��������';

UPDATE Orders
SET DeliveryFee = DeliveryFee * 0.8
WHERE TotalAmount > 2000;