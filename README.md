# Database Lab
## [Lab-01:](https://github.com/arman324/Database-Lab/blob/master/Lab-01/Lab-01.sql)
First of all, I created a database and then created and filled tables. After that I answered 3 questions:
1. For a student who has a student number 123, show the details of the department where he or she is studying.
> * You can see my answer on [line number 156](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L156).
2. Write a 'select' that adds a score to each student's grade in each lesson. 
> * You can see my answer on [line number 162](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L162).
3. Write a query to display students who have not taken the DB course. 
> * You can see my answer on [line number 166](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L166).

## [Lab-02:](https://github.com/arman324/Database-Lab/blob/master/Lab-02/Lab-02.sql)
In this lab, I used the AdventureWorks2012 database and answered 5 questions:
1. For the AdventureWorks2012, write a query that returns the general information of the orders being processed, which are between 100000 and 500000, and the place of order is from France or one of the countries in the North American region.
> * You can see my answer on [line number 14](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L14).
2. For the AdventureWorks2012, write a query that shows the sales order identification number, customer identification number, order amount(TotalDue), order date, and the name of the region where the order was registered, for each order.
> * You can see my answer on [line number 22](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L22).
3. For the AdventureWorks2012, write a query that shows which area had the most orders for each product.
> * You can see my answer on [line number 29](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L29).
> * You can see the answer (version 2) on [line number 47](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L47).
4. For the AdventureWorks2012, create a table called NAmerica_Sales, which is in accordance with question number 1. Add a column to this table and add a constraint to have only Low, High, or Mid values. Then update this column for each tuple to 'High' when the order cost(TotalDue) is higher than the average total cost (The cost of all orders) on the North American region. Update the column to 'Mid' if the order cost(TotalDue) is equal to the average total cost on the North American region. Finally, update the column to 'Low' when the order cost(TotalDue) is lower than the average total cost on the North American region.
> * You can see my answer on [line number 72](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L72).
5. increase all employee salaries for each hour of work by 20%, 15%, 10% or 5%. Then give them a level in accordance with their salaries.
> * You can see my answer on [line number 105](https://github.com/arman324/Database-Lab/blob/79122345c205ca105993a01eddf7c2c871e25995/Lab-02/Lab-02.sql#L105).
## [Lab-03:](https://github.com/arman324/Database-Lab/tree/master/Lab-03)
In this lab, I worked with "User" and "Login" in the SQL Server.
* SQL "Login" is for Authentication:
    * Authentication can decide if we have permission to access the **SERVER** or not.
    * A "Login" grants the principal entry into the **SERVER**.
* SQL server "User" is for Authorization:
    * Authorization decides what are different operations we can do in a **DATABASE**.
    * A "User" grants a login entry into a single **DATABASE**.

I answered these questions:

1. First, create a "Login" in the SQL Server.
> * You can see my answer on [line number 1](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L1) in the __sa_admin.sql__ file.
2. Create a role that has the ability to manage the database.
> * You can see my answer on [line number 5](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L5) in the __sa_admin.sql__ file.
3. Connect the role to the "Login" created in the first question.
> * You can see my answer on [line number 14](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L14) in the __sa_admin.sql__ file.
4. With the "login" created in Question 1, log in to the SQL server and then create a table in the AdventureWorks2012 database, Insert data in this table, and select data from it.
> * You can see my answer on [line number 17](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L17) in the __sa_admin.sql__ file and [line number 1](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/myLogin.sql#L1) in the __myLogin.sql__ file.
5. In the AdventureWorks2012 database, create a role called it role2 that has no access to the tables but can only manage permissions.
> * You can see my answer on [line number 26](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L26) in the __sa_admin.sql__ file.
6. Grant DataReader permission to role 2.
> * You can see my answer on [line number 36](https://github.com/arman324/Database-Lab/blob/be38dd3c3d35cedcd63ae81aad2d6ddac8f7476f/Lab-03/sa_admin.sql#L36) in the __sa_admin.sql__ file.

## [Lab-04:](https://github.com/arman324/Database-Lab/blob/master/Lab-04/Lab-04.sql)
In this lab, I used the AdventureWorks2012 database and answered 2 questions:
1. For the AdventureWorks2012, write a query that has the number of orders and the total value of the orders for each Territory along with its Territory area. Show the total number and value of orders for all Territories in one area and at the end of the report for all areas.
* The output should be the same as the following image:

<img width="482" alt="Screen Shot 2020-05-05 at 3 50 43 PM" src="https://user-images.githubusercontent.com/35253872/81061075-f314b980-8ee8-11ea-9c06-a3b8fcbee860.png">

> * You can see my answer on [line number 1](https://github.com/arman324/Database-Lab/blob/34ecba260affc6e1e982ee44158d78b2056c5af5/Lab-04/Lab-04.sql#L1).
> * You can see the answer (version 2) on [line number 32](https://github.com/arman324/Database-Lab/blob/34ecba260affc6e1e982ee44158d78b2056c5af5/Lab-04/Lab-04.sql#L32).

2. For the AdventureWorks2012, write a query that shows the number of orders and the total value of orders for each subcategory of goods along with its category. Show the number and value of orders for all subcategories in one category and at the end of the report for all categories.
* The output should be the same as the following image:

<img width="482" alt="Screen Shot 2020-05-05 at 4 03 37 PM" src="https://user-images.githubusercontent.com/35253872/81061693-0c6a3580-8eea-11ea-987e-ea8440e0b417.png">

> * You can see my answer on [line number 71](https://github.com/arman324/Database-Lab/blob/34ecba260affc6e1e982ee44158d78b2056c5af5/Lab-04/Lab-04.sql#L71).
> * You can see the answer (version 2) on [line number 121](https://github.com/arman324/Database-Lab/blob/34ecba260affc6e1e982ee44158d78b2056c5af5/Lab-04/Lab-04.sql#L121).

## [Lab-05:](https://github.com/arman324/Database-Lab/blob/master/Lab-05/Lab-05.sql)
In this lab, I used the AdventureWorks2012 database and answered 5 questions:
1. For the AdventureWorks2012, write a query that shows all the products' names along with the number of sales of each item (Order Qty) in each region as a separate column for each product.
> * You can see my answer on [line number 1](https://github.com/arman324/Database-Lab/blob/2552c730c2e7239b9fb184dccb333939a160eca9/Lab-05/Lab-05.sql#L1).
2. For the AdventureWorks2012, modify the following code, to have the output as shown below:
    ```sql
    select Person.BusinessEntityID, PersonType, Gender
    from Person.Person 
        join HumanResources.Employee
         on (Person.BusinessEntityID = Employee.BusinessEntityID)
    ```

<img width="189" alt="Screen Shot 2020-05-18 at 7 33 39 PM" src="https://user-images.githubusercontent.com/35253872/82228975-130f9880-993f-11ea-9f31-2e2816ad7124.png">

> * You can see my answer on [line number 21](https://github.com/arman324/Database-Lab/blob/2552c730c2e7239b9fb184dccb333939a160eca9/Lab-05/Lab-05.sql#L21).
3. For the AdventureWorks2012, write a query that returns all the products’ names which names are less than 11 characters long and which the 2 left character of name to the end is 'e'. (Like Freewheel)
> * You can see my answer on [line number 37](https://github.com/arman324/Database-Lab/blob/2552c730c2e7239b9fb184dccb333939a160eca9/Lab-05/Lab-05.sql#L37).
4. For the AdventureWorks2012, write a function that gives an 11 character word as input, and if the form of the input is the same as YYYY/MM/DD (Like 2019/09/17) from, it returns 'September 17 2019' otherwise it returns 'Wrong format input'
> * You can see my answer on [line number 44](https://github.com/arman324/Database-Lab/blob/2552c730c2e7239b9fb184dccb333939a160eca9/Lab-05/Lab-05.sql#L44).
5. For the AdventureWorks2012, write a function that gives three inputs for the year, month, and the products’ names, and returns territories that have sold the product at least once on the desired date.
> * You can see my answer on [line number 110](https://github.com/arman324/Database-Lab/blob/2552c730c2e7239b9fb184dccb333939a160eca9/Lab-05/Lab-05.sql#L110).

## [Lab-06:](https://github.com/arman324/Database-Lab/tree/master/Lab-06)
## [Lab-07:](https://github.com/arman324/Database-Lab/tree/master/Lab-07)
## [Lab-08:](https://github.com/arman324/Database-Lab/tree/master/Lab-08)
In this lab, I used the AdventureWorks2012 database and answered 2 questions:
1. For the AdventureWorks2012, write a query that shows __exclusive locks__ are not compatible with the __shared locks__.
> * First, you need to run the [first script](https://github.com/arman324/Database-Lab/blob/master/Lab-08/Question-01%20/question1_firstScript.sql) (exclusive lock), after that need to run the [second script](https://github.com/arman324/Database-Lab/blob/master/Lab-08/Question-01%20/question1_secondScript.sql) (shared lock). As you notice that the second script doesn't run therefore these two scripts are not compatible.
2. part 1:  For the AdventureWorks2012, design a scenario for showing the __Dirty Read__ problem.
> * First, you need to run the [first script](https://github.com/arman324/Database-Lab/blob/master/Lab-08/Question-02/Part-01/question2_part1_firstScript.sql), after that need to run the [second script](https://github.com/arman324/Database-Lab/blob/master/Lab-08/Question-02/Part-01/question2_part1_secondScript.sql).
2. part 2:  For the AdventureWorks2012, design a scenario for showing the __Non Repeatable Read__ problem.
> * First, you need to run the [first script](https://github.com/arman324/Database-Lab/blob/master/Lab-08/Question-02/Part-02/question2_part2_firstScript.sql), after that need to run the [second script](https://github.com/arman324/Database-Lab/blob/master/Lab-08/Question-02/Part-02/question2_part2_secondScript.sql). 
## Requirements
* [SQL Server 2019](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
* [SQL Management Tools for SQL server](https://www.guru99.com/top-20-sql-management-tools.html)
* [AdventureWorks2012](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks2012)

## Support
Reach out to me at riasiarman@yahoo.com
