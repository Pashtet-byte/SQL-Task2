USE VetClinicDB;
GO

UPDATE Vets
SET Salary = Salary * 1.15
WHERE Specialty = '��������';

SELECT * FROM Vets WHERE Specialty = '��������';

UPDATE Vets
SET Salary = Salary + 5000.00
WHERE DATEDIFF(YEAR, HireDate, GETDATE()) > 3;

UPDATE Owners
SET Email = 'new.ivan@mail.com'
WHERE FirstName = '����' AND LastName = '������';