## Executive Summary

### Database Administrator Responsibilities
- Explain the major roles of a database administrator.
> The major roles of a database administrator (dba) include most areas around transporting, storing, 
> securing and the maintenance of data.
>> **Manages data integrity** This is a key responsiblilty of a dba to ensure that the data is 
>> always accurate.  
>> **Manages data recovery & back up procedures** Another key responbility of a dba is to ensure that >> a strong back up procedure is in place. That way when the database goes offline for some reason, >> the dba can have the database in a useable state as quickly as possible. 
>> **Monitoring database performance & accessibility** Part of maintaing a database is to ensure that >> the data is being stored and collected as quickly as possible. The follow-up is that the
>> individuals only have access to the data that they need.  


### Log Files
- TODO: Explain the types and purposes of the log files.

### Variables
- TODO: Explain the purpose of and provide an example of status and system variables.

### Privileges

#### A) Explain the following code (copy and paste the code into your readme.md file and comment all sections):  
  
CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word';  
CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word';  

GRANT ALL  

ON guitar.*  

TO guitar_admin@localhost;  

GRANT SELECT, INSERT, UPDATE, DELETE  

ON guitar.*  

TO guitar_user@localhost;  

#### B) What are the privilege levels that can be granted to a user?  

#### C) How would this code change to grant column privileges to the customer first_name, last_name and email_address?   

#### D) Why would you want to do this? 

### Roles

#### A) Create a role to provide update privileges to the categories table (either here in discussion format or in MySQL Workbench)  

#### B) Grant privileges to the role and, assign users to the role (either here in discussion format or in MySQL Workbench)  
 
#### C) Explain why roles would be useful.

### Backing Up a Database

#### A) What is a backup and restore strategy and why are they important?  
  
#### B) What is the difference between a full and incremental backup? 

## Conclusion 