# Query-a-Digital-Music-Store-Part-I-

# INTRODUCTION :
In this lab, you will query the Chinook Database. The Chinook Database holds information about a music store. For this lab, you will be answering 4 queries to help the Chinook team understand the media in their store, their customers and employees, and their invoice information. To assist you in the queries ahead, the schema for the Chinook Database is provided below. You can see the columns that link tables together via the arrows.
# Chinook Database
![alt text](https://github.com/mamineofficial/Query-a-Digital-Music-Store-Part-I-/blob/master/chinook%20DATBASE.png)

# Task
For this lab, you will help the Chinook team understand the media in their store, their customers and employees, and their invoice information.

# Key Takeaways
-Write queries to extract data from multiple tables in a database
-Use SQL to make data informed decisions
# INSTRUCTIONS :

In order to help the team at Chinook music store, you need to answer the following 4 queries

# Q1 
The Chinook database contains all invoices from the beginning of 2009 till the end of 2013. The employees at Chinook store are interested in seeing all invoices that happened in 2013 only. Using the Invoice table, write a query that returns all the info of the invoices in 2013.
```sql
SELECT invoice.*
FROM invoice
where invoice.invoicedate between '2013-01-01' and '2014-01-01';
```

# Q2 
The Chinook team decided to run a marketing campaign in Brazil, Canada, india, and Sweden. They will start with the country that has the least customers. Using the customer table, write a query that returns the first name, last name, and country for all customers from the 4 countries.
```sql
SELECT firstName,lastName,country
FROM customer
WHERE country IN("Brazil","Canada","India","Sweden");
```

# Q3
Using the Track and Album tables, write a query that returns all the songs that start with the letter 'A' and the composer field is not empty. Your query should return the name of the song, the name of the composer, and the title of the album.
```sql
SELECT Track.name, Track.Composer, Album.Title 
FROM Track
JOIN Album
ON Track.AlbumId = Album.AlbumId
WHERE Track.name LIKE 'A%' AND Track.Composer NOT LIKE '';
```
# Q4 
The Chinook team would like to throw a promotional Music Festival for their top 10 customers who have spent the most in a single invoice. Write a query that returns the first name, last name, and invoice total for the top 10 invoices ordered by invoice total descending.
```sql
SELECT C.Firstname,C.Lastname,I.Total
FROM Customer AS C
JOIN Invoice AS I
ON C.CustomerId =I.CustomerId
ORDER BY I.total DESC
LIMIT 10
```
