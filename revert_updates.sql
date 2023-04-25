UPDATE SalesPeople
SET Base = Base - 50.00
WHERE FirstName = 'Bob' AND LastName = 'Bentley';

UPDATE Members
SET WorkPhone = NULL
Where LastName = 'Payne' AND FirstName = 'Frank';

UPDATE Titles
SET UPC = '1882344222', Genre = 'alternative'
Where Title = 'Time Flies';