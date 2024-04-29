/* Assignment 5 Relational and Logical Operators. */
-- 1) Write a query that will give you all orders for more than Rs. 1,000.
select AMT from ORDERS where AMT > 1000;

-- 2) Write a query that will give you the names and cities of all salespeople in London with a commission above .10.
 select Sname,City from SALESPEOPLE WHERE CITY='London'and COMM > 0.10;

-- 3) Write a query on the Customers table whose output will exclude all customers with a rating <= 100, unless they are located in Rome.
 select * from Customers where rating > 100 or city = 'Rome';

-- 4) What will be the output from the following query?
Select * from Orders
where (amt < 1000 OR NOT (odate = ‘1990-10-03’ AND cnum > 2003));

-- Replace the back Quotes with straigth single quotes.
/*
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)
*/

-- 5) What will be the output of the following query?
Select * from Orders
where NOT ((odate = '1990-10-03' OR snum >1006) AND amt >= 1500);

/*
-+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)
*/

-- 6) What is a simpler way to write this query?
Select snum, sname, city, comm From Salespeople where (comm > .12 OR comm <.14);

Select * From Salespeople where comm between 0.12 and 0.14;

/*
+------+--------+----------+------+
| snum | sname  | city     | comm |
+------+--------+----------+------+
| 1002 | Serres | San Jose | 0.13 |
| 1003 | Motika | London   | 0.13 |
+------+--------+----------+------+
2 rows in set (0.00 sec)
*/