## Task 5

The goal of this task is to create our first Cloud SQL instance.

Steps:

1. Find Cloud SQL in the GCP Console
2. Click CREATE INSTANCE and choose PostgresSQL for the database engine, add instance ID, password, database version and Sandbox as configuration to start.
3. In the Connections section set Public IP enabled.
4. Choose ADD NETWORK under the Authorised Networks sectin. Paste your ip in the ipv4 in the Network followed by /32 and hit SAVE at the end.
5. Go to your instance, under the General you will find the Public IP Address, copy it.
6. Install DBeaver and Create connection with  
host - that is the Public IP copied in the previous step
Database - database name from step 2
Port - 5432 - this is the port that is used for connecting to Postgres database
Username - postgres - default name of the user created on the instance.
Password - the password from step 2.
7. Test the connection
8. Create schema in the database
9. Right click on the schema, go to SQL Editor and enter the New SQL script.
10. Create table with five columns - id, last name, first name, email, city and age. After it, refresh the schema.

```sh
CREATE TABLE students (

    id int,

    lastName varchar(255),

    firstName varchar(255),

    email varchar(255),

    city varchar(255),

    age int, 

);
```

11. Right click on the table and choose Generate SQL and the INSERT. Fill the table with 5 students using this SQL code schema

```sh
INSERT INTO dareit.students

(id, lastname, firstname, email, city, age)

VALUES(0, 'Last name', 'First name', 'users email', 'users city', 'users age');
```

12. Prepare a query that will answer the question what is average age of the students in the class. 

This query is: 

```sh
SQL statement to count the age was: 
SELECT AVG(age) from dareit.students;
```

13. Extract to txt data from the students table and commit it to your repo. 

```sh
The average age of the students in the class is:
27.1666666666666667
```
