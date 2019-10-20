## Executive Summary
### Normalizing Data
While create the normalized table, there was a few things that I kept in mind. 
For 1NF, I looked at all of the data and made notes on where the data should belong. The student data was unique, and then I broke the data out to advisors and classes. 
While working on 2NF, I created foreign keys connect the tables with related. This will remove the need for redundant data by creating table for each type of instance data (students, courses, available majors, advisors) 
Finally, to have 3NF I created a table to takes both the classID and the studentID. Because a student is able to be in more than one course at a time, I created a table to handle that one-to-many relationship. 

### Database Views
The View that I created for the northwinds database is important because it can give an individual a quick summary of an order. Being able to look at one place to see the order, when the order was shipped, what was in the order is important for a company. It lessens the number of place where an individual needs to look and can help produce quicker and more accurate information. 
For the View that was created in studentdata.  I created a student profile that will quickly show some of the information for the student overall. It was intentional to leave the class information off as this can be used as a summary page on a web page. This thought of this View is meant to be expanded upon too to include other columns, such as the students GPA.  


## Summary 
This lab was important because we learned about normalizing instance data, which is important for a database and how data is handled within the code of a program. Being able to remove the redundancy of information allows me to develop quicker, introduce less bugs, and have a much more organized information flow. 
Then we moved into database Views, which are widely used and give the customer an easy way to view their data. From the developer standpoint, this allows me to point to one location to retrieve data instead of pulling the data from each table. Then hope that I pulled the same data that other developers are pulling to. 

