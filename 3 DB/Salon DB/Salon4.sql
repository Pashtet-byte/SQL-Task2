USE BeautySalonDB
GO

DELETE FROM Appointments
WHERE Status = 'Cancelled';

SELECT * FROM Clients 
WHERE FirstName = '�����' AND LastName = '��������';

DELETE FROM Appointments
WHERE ClientID IN (SELECT ClientID FROM Clients WHERE FirstName = '�����' AND LastName = '��������');

BEGIN TRY
    DELETE FROM Employees 
    WHERE FirstName = '����' AND LastName = '�������������';
END TRY
BEGIN CATCH
    PRINT '������ ������� ����������, ��� ��� � ���� ���� ������!';
END CATCH;

DELETE FROM Appointments
WHERE AppointmentDate < '2023-01-01';

UPDATE Employees SET IsActive = 0 WHERE EmployeeID = 4;

SELECT 
    (SELECT COUNT(*) FROM Clients) AS ClientsCount,
    (SELECT COUNT(*) FROM Employees) AS EmployeesCount,
    (SELECT COUNT(*) FROM Services) AS ServicesCount,
    (SELECT COUNT(*) FROM Appointments) AS AppointmentsCount;