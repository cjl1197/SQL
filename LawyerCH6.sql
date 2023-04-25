/* Lawyer, Craig Assignment 6 */

/* Change Database */

use Books;

/* Inserts */

INSERT INTO Customers (Customernum, LastName, FirstName, Address, City, State, Zip, Referred)
VALUES (1021, 'Smith', 'Eric', '321 Homework LN', 'Somewhere', 'SC', '99887', 1017);

INSERT INTO Orders (Ordernum, Customernum, OrderDate, ShipDate, ShipStreet, ShipCity, ShipState, ShipZip)
VALUES (1022, 1021, '2022-10-04', '2022-10-06', '321 Homework LN', 'Somewhere', 'SC', '99887');

INSERT INTO Author (AuthorID, Lname, Fname)
VALUES ('H321', 'HARIBO', 'Bradley');

INSERT INTO Publisher (PubID, Name, Contact, Phone)
VALUES (6, 'Aiken Tech', 'Instructor', '123-456-7890');

INSERT INTO Books (ISBN, Title, PubDate, PubID, Cost, Retail, Category)
VALUES ('4957176461', 'CPT 242 DATABASES', '2022-08-22', 6, 67.99, 99.98, 'COMPUTER');

INSERT INTO BookAuthor (ISBN, AuthorID)
VALUES ('4957176461' , 'H321');

INSERT INTO OrderItems (Ordernum, Itemnum, ISBN, Quantity)
VALUES (1022, 1, '4957176461', 1);

/* Deletes */

DELETE FROM OrderItems
WHERE Ordernum = 1022;

DELETE FROM BookAuthor
WHERE AuthorID = 'H321';

DELETE FROM Books
WHERE PubID = 6;

DELETE FROM Orders
WHERE Customernum = 1021;

DELETE FROM Publisher
WHERE PubID = 6;

DELETE FROM Author
WHERE AuthorID = 'H321';

DELETE FROM Customers
WHERE Customernum = 1021;

/* Database Change */

use Lyric

/* 1 */

UPDATE SalesPeople
SET Base = 200.00
WHERE SalesID = 3;

/* 2 */

UPDATE SalesPeople
SET Base = Base + 50.00
WHERE FirstName = 'Bob' AND LastName = 'Bentley';

/* 3 */

UPDATE Members
SET WorkPhone = HomePhone
Where LastName = 'Payne' AND FirstName = 'Frank';

/* 4 */

UPDATE Titles
SET UPC = '1828344222', Genre = 'pop'
WHERE Title = 'Time Flies';

/* 5 */
-- look more into this one
UPDATE Members
SET SalesID = 4
WHERE Region = 'VA' AND SalesID = 3;

/* Change Database */

use crashcourse

/* 6 */

UPDATE Customers
SET cust_name = UPPER(cust_name);

/* 7 */

UPDATE Vendors
SET vend_city = 'Aiken', vend_state = 'SC'
WHERE ISNULL(vend_city) OR ISNULL(vend_state);


/* 8 */

UPDATE Products
SET prod_price = (prod_price * .15) + prod_price;