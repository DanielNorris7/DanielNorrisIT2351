### Executive summary  
This readme file will be used to answer the question posed for the final project.

Guitar Shop Design 

### Look at the data and describe the database.  Include anything that stands out about products, customers, orders etc. 
> The guitar shop database holds customer information, products and orders. One of the main things that I've noticed about this database is the use of the one-to-many relationships to effecticly manage data. 

### Explain why there is an addresses table and how it is used. 
> The address table is used hold the address data for the customers. However, the database was designed to have the address on a seperate table from the customers, so that a customer can have more than one address. The most common example would be a shipping and billing address. Instead of having duplicate columns in the customers table, a seperate address table can be used to create a one-to-many relationship. 

### Database Administration
> As a DBA, three things I would change about this database would be:
> 1. I would add a new column to the customers table named 'recieve_emails', so we can track if they would like to recieve marketing emails on an opt-in basis. 
> 2. I would create a Stored Procedure that takes in an Order ID. Then I would display the customers information (Concated name, email, concated address, phone number), thier order ship total (ship amount + tax) the products ordered, qunatity and any discounts. That way someone can easily look up an order with just an order id. 
> 3. I would update the credit card number column to use either MD5 or AES encryption. That way when someone tried to pull information from that column, it would be encrypted by default. Then add a decryption call for specific roles or stored function that would need to see the plain text value. 

### MySQL/SQL Certification
> If I were to seek a MYSQL certification, I would obtain the Modern Big Data Analysis with SQL Specialization certification. This certification dives into topics for cloud usage, data analysis and cluster storage. These topics are important for organzations attempting to use modern software architecture. Depending on the organization, having the ability to exam large data sets and use statitcs to make recommendation can be critical to the business. 

### Conclusion
For DBAs, technical consultant, technical support staff, software developers; having knowledge of database is critical to be sucessful. Once an individual knows how to efficently use a database, the quality of work they can produce will increase. They will be able to provide customers with more stable data storage and help support the technical backbone of any modern organization.  
