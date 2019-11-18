
## Executive Summary
This lab goes over creating stored procedures to quickly execute queries and triggers to assist in validating data when the table is modified. 

## Conclusion
After completing this lab, I see how stored procedures could be useful. Espically when they are written with IN parameters, so a query can be executed similair to how a method is executed in Java. However, what I struggle to understand is there usefulness in a real world usecase. Typically, when data is being modified, it will be done from a line of business application. An end user, or most System Admins, won't have access to the database. 

For Triggers, they are very useful too. However, I also struggle to see how the data validation wouldn't be handled by the line of business application, or business rules configured in the application. One really use case I can see for a trigger would be to ensure that if a DBA or other admin modifies a table, the values entered would be properly normalized. 
