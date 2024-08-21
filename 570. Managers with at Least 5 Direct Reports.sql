SELECT e1.name AS name FROM employee e1 
JOIN employee e2
ON e1.id = e2.managerID
GROUP BY e1.id
HAVING COUNT(e1.name)>= 5;
