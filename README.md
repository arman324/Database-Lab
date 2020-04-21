# Database Lab
## [Lab-01:](https://github.com/arman324/Database-Lab/blob/master/Lab-01/Lab-01.sql)
First of all, I created a database and then created and filled tables. After that I answered 3 questions:
1. For a student who has a student number 123, show the details of the department where he or she is studying.
>> * You can see my answer on [line number 156](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L156).
2. Write a 'select' that adds a score to each student's grade in each lesson. 
  + You can see my answer on [line number 162](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L162).
3. Write a query to display students who have not taken the DB course. 
  * You can see my answer on [line number 166](https://github.com/arman324/Database-Lab/blob/a7c80a16dfd71a1a9ea29d14bc128c0388694f21/Lab-01/Lab-01.sql#L166).

## [Lab-02:](https://github.com/arman324/Database-Lab/blob/master/Lab-02/Lab-02.sql)
In this lab, I used the AdventureWorks2012 database and answered 5 questions:
1. For the AdventureWorks2012, write a query that returns the general information of the orders being processed, which are between 100000 and 500000, and the place of order is from France or one of the countries in the North American region.
  * You can see my answer on [line number 14](https://github.com/arman324/Database-Lab/blob/4fb6523d561bcf430c16cff0f34cbf43b8bdcc4e/Lab-02/Lab-02.sql#L14).
2. For the AdventureWorks2012, write a query that shows the sales order identification number, customer identification number, order amount(TotalDue), order date, and the name of the region where the order was registered, for each order.
  * You can see my answer on [line number 22](https://github.com/arman324/Database-Lab/blob/4fb6523d561bcf430c16cff0f34cbf43b8bdcc4e/Lab-02/Lab-02.sql#L22).
3. For the AdventureWorks2012, write a query that shows which area had the most orders for each product.
  * You can see my answer on [line number 29](https://github.com/arman324/Database-Lab/blob/4fb6523d561bcf430c16cff0f34cbf43b8bdcc4e/Lab-02/Lab-02.sql#L29).
4. For the AdventureWorks2012, create a table called NAmerica_Sales, which is in accordance with question number 1. Add a column to this table and add a constraint to have only Low, High, or Mid values. Then update this column for each tuple to 'High' when the order cost(TotalDue) is higher than the average total cost (The cost of all orders) on the North American region. Update the column to 'Mid' if the order cost(TotalDue) is equal to the average total cost on the North American region. Finally, update the column to 'Low' when the order cost(TotalDue) is lower than the average total cost on the North American region.
  * You can see my answer on [line number 48](https://github.com/arman324/Database-Lab/blob/4fb6523d561bcf430c16cff0f34cbf43b8bdcc4e/Lab-02/Lab-02.sql#L48).
5. increase all employee salaries for each hour of work by 20%, 15%, 10% or 5%. Then give them a level in accordance with their salaries.
  * You can see my answer on [line number 81](https://github.com/arman324/Database-Lab/blob/4fb6523d561bcf430c16cff0f34cbf43b8bdcc4e/Lab-02/Lab-02.sql#L81).


## Requirements
* [SQL Server 2019](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
* [SQL Management Tools for SQL server](https://www.guru99.com/top-20-sql-management-tools.html)
* [AdventureWorks2012](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks2012)

## Support
Reach out to me at riasiarman@yahoo.com
