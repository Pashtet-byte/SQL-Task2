USE FoodDeliveryDB
GO

DELETE FROM Orders
WHERE Status = 'Cancelled';

SELECT * FROM Customers 
WHERE FirstName = '�����' AND LastName = '��������';

DELETE FROM Orders
WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE FirstName = '�����' AND LastName = '��������');

BEGIN TRY
    DELETE FROM Couriers 
    WHERE FirstName = '����' AND LastName = '��������';
END TRY
BEGIN CATCH
    PRINT '������ ������� �������, ��� ��� � ���� ���� �������� ������!';
END CATCH;

DELETE FROM Orders
WHERE OrderDate < '2023-01-01';

UPDATE Couriers SET IsActive = 0 WHERE CourierID = 4;

SELECT 
    (SELECT COUNT(*) FROM Restaurants) AS RestaurantsCount,
    (SELECT COUNT(*) FROM Couriers) AS CouriersCount,
    (SELECT COUNT(*) FROM Customers) AS CustomersCount,
    (SELECT COUNT(*) FROM Orders) AS OrdersCount;