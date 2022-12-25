SELECT name as Customers
FROM Customers
WHERE id IN (SELECT id FROM Customers EXCEPT SELECT customerId from Orders)