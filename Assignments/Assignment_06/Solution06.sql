/* Assignment 6
Using Special Operators in Conditions. 
1) Write two different queries that would produce all orders taken on October 3rd or 4th, 1990. */

SELECT *
FROM Orders
WHERE Odate = '1990-10-03' OR Odate = '1990-10-04';

SELECT *
FROM Orders
WHERE Odate BETWEEN '1990-10-03' AND '1990-10-04';

-- 2) Write a query that selects all of the customers serviced by Peel or Motika.
-- (Hint: the snum field relates the two tables to one another).

Select Cname from Customers,Salespeople where Sname= 'Peel' and 'Motika';

-- 3) Write a query that will produce all the customers whose names begin with a letter from ‘A’ to ‘G’.

SELECT * FROM Customers WHERE Cname >= 'A' AND Cname <= 'G';

-- 4) Write a query that selects all customers whose names begin with the letter ‘C’.

Select * from customers where Cname like 'C%';

/*
+------+----------+----------+--------+------+
| cnum | cname    | city     | rating | snum |
+------+----------+----------+--------+------+
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+

*/

-- 5) Write a query that selects all orders except those with zeroes or NULLs in the amt field.

Select * from ORDERS where Amt != 0 and Amt is not NULL;