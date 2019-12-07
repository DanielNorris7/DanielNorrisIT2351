### Executive summary  

Guitar Shop Design 

### Look at the data and describe the database.  Include anything that stands out about products, customers, orders etc. 

### Explain why there is an addresses table and how it is used. 
> The address table is used hold the address data for the customers. However, the database was designed to have the address on a seperate table from the customers, so that a customer can have more than one address. The most common example would be a shipping and billing address. Instead of having duplicate columns in the customers table, a seperate address table can be used to create a one-to-many relationship. 

### Conclusion
