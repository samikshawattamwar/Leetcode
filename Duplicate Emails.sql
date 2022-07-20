SELECT email FROM person
GROUP BY Email 
HAVING COUNT(email) > 1
