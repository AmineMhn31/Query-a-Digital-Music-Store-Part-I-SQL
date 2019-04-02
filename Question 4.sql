SELECT C.Firstname,C.Lastname,I.Total
FROM Customer AS C
JOIN Invoice AS I
ON C.CustomerId =I.CustomerId
ORDER BY I.total DESC
LIMIT 10
