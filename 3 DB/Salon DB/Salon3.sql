USE BeautySalonDB;
GO

UPDATE Services
SET Price = Price * 1.10
WHERE Category = '��������������';

SELECT * FROM Services WHERE Category = '��������������';

UPDATE Appointments
SET Status = 'Completed', TotalPrice = TotalPrice * 1.05
WHERE AppointmentDate < '2023-01-17T00:00:00' AND Status = 'Scheduled';


UPDATE Employees
SET Salary = Salary * 1.15
WHERE Position = '����������';

UPDATE Services
SET Price = Price + 500.00
WHERE Duration > 60;

UPDATE Clients
SET Email = 'new.anna@mail.com'
WHERE FirstName = '����' AND LastName = '�������';

UPDATE Appointments
SET TotalPrice = TotalPrice * 0.9
WHERE Status = 'Cancelled' AND AppointmentDate > '2023-01-16T00:00:00';