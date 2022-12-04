SELECT p.firstName, p.LastName, a.city, a.[state]
FROM Person p
LEFT JOIN Address a
ON p.personID = a.personId