## Executive Summary

### Database Administrator Responsibilities
- Explain the major roles of a database administrator.
> The major roles of a database administrator (dba) include most areas around transporting, storing, securing and the maintenance of data.

>> - **Manages data integrity** This is a key responsiblilty of a dba to ensure that the data is always accurate.

>> - **Manages data recovery & back up procedures** Another key responbility of a dba is to ensure that a strong back up procedure is in place. That way when the database goes offline for some reason, the dba can have the database in a useable state as quickly as possible. 

>> - **Monitoring database performance & accessibility** Part of maintaing a database is to ensure that the data is being stored and collected as quickly as possible. The follow-up is that the individuals only have access to the data that they need.  


### Log Files
- Explain the types and purposes of the log files.
> **Error Log:** Writes information to a log file about issues encourted during the starting, running or stopping of mysql.

> **General query log:** Logs client connections and statements received from the client.

> **Binary log:** Logs sql statements that modifies data. This is also used for replication.

> **Relay log:** Logs changed made from a replication master server.

> **Slow query log:** Logs queries that take longer than a pre-dertmined time to execute.

### Variables
- Explain the purpose of and provide an example of status and system variables.
> **Status Variables:** Variables that provide information about it's operation. An example of a Status Varible would be the number of failed attempts to connect to the sql server.

> **System Variables:** Variables that that are built in. System variables may also be installed by server plugins or components. An example of a System Variable could be a plugin that would implement an audit log plicy.

### Privileges

#### A) Explain the following code (copy and paste the code into your readme.md file and comment all sections):  
  
CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word';  
CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word';  
> - The above two statements are creating two users (guitar_admin & guitar_user) with a password of pa55word. 

GRANT ALL  

ON guitar.*  

TO guitar_admin@localhost;  
> - This next statement is granting all (Create, Drop, Delete, Insert, Select, Update) rights to the guitar_admin user for any table using the guitar schema.

GRANT SELECT, INSERT, UPDATE, DELETE  

ON guitar.*  

TO guitar_user@localhost;  
> - This statement is granting the guitar_user rights to only Select, Insert, Update and Delete for tables in the guitar schema. 

#### B) What are the privilege levels that can be granted to a user? 
> MySql offers three different types of privilege levels. 
> 1. Administrative privileges enable users to manage operation of the MySQL server. These privileges are global because they are not specific to a particular database.
> 2. Database privileges apply to a database and to all objects within it. These privileges can be granted for specific databases, or globally so that they apply to all databases.
> 3. Privileges for database objects such as tables, indexes, views, and stored routines can be granted for specific objects within a database, for all objects of a given type within a database (for example, all tables in a database), or globally for all objects of a given type in all databases.

#### C) How would this code change to grant column privileges to the customer first_name, last_name and email_address?  
```
GRANT SELECT(first_name, last_name and email_address), 
      INSERT(first_name, last_name and email_address), 
      UPDATE(first_name, last_name and email_address), 
      DELETE(first_name, last_name and email_address)
ON customers
TO guitar@localhost;
```

#### D) Why would you want to do this?
> An example of why someone would want to assign specific rights to a table, could be to prevent users from having access to sensative information. 
>> Example: You're working on developing a new HR web app. You may want your indvidual contributors to see some basic information about a co-worker (email, direct manager, position, etc.), but not data on performance or salary. However, you would probably want a managers group that has access to view and update that data, but not delete; for HR purposes. Being able to control the interaction on a column level can be very crucial to handling sensative company information and insuring data integrity.

### Roles

#### A) Create a role to provide update privileges to the categories table (either here in discussion format or in MySQL Workbench)  
```
CREATE USER 'GeorgeWashington'@'localhost' IDENTIFIED BY '@pp|3Tre3';

GRANT UPDATE
ON categories
TO GeorgeWashington@localhost;
```
> The first statment creates a new user named GeorgeWashingoton with a strong password.
> The second statment gives GeorgeWashing right to update or modify the categories table.

#### B) Grant privileges to the role and, assign users to the role (either here in discussion format or in MySQL Workbench)  
```
CREATE ROLE dnorrisNorthWind_president;

GRANT dnorrisNorthWind_president
TO 'GeorgeWashington';
```
> The first statment create a new role for the president in the north winds database. 
> Next we assign GeorgeWashington to the presidents role within the north winds database.
 
#### C) Explain why roles would be useful.
> Looking back at my HR application example in the previous question. Creating a role and assigning users to the role would be a much more effective way to assign rights. 
>> Continuing on from my example: It would be more effiecent to create a role, assign privilages to that role, then assign any necessary users to that role. This also helps with security and consistancy. If the dba were to set the rights for each users, because of simple human nature, a user would be given more rights then needed at somepoint. However, having a role that a user is just assigned to streamlines the process.

### Backing Up a Database

#### A) What is a backup and restore strategy and why are they important?  
> Having a strong backup strategy is one of the most important parts of the of a DBA job. With a backup and restore strategy is put in place to ensure that a companies data is not lost. This includes more security threats, such as ransomware. If the database is compromised (ransomware, data corruption, server crashes); a DBA should be able to restore a backup quickly to minimize the disruption to the business.  
 
#### B) What is the difference between a full and incremental backup? 
> **Full Backup:** Like it sounds, a full backup of the database is an exact copy of the database that is made. This can be schedule to ensure that if the main database fails, an exact copy can be stood up. After the intial full backup has been made, a **differential backup** is used to backup the data since the last full backup was performed.
> **Incremental Backup:** An incremental backup only includes the changes since the previous backup. This strategy first makes a differential backup, then the following backup only include changes from the last incremental backup. 

## Conclusion 
> In conclusion, a Database Administrator has a considerable amount of responsiblity, that should never be taken lightly. DBA's are in charge of a company's data and is responsible for ensuring that the right information is always accessible. Not only does this include a strategic backup plan, but also monitoring logs and performance metrics. 
