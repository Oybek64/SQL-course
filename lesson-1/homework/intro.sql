1. DATA is information - raw facts, figures, or details that can be collected, stored, processed, and analyzed.
   DATABASE is an organized collection of data that can be easily accessed, managed, and updated.
   RELATIONAL DATABASE is a type of database that stores and organizes data into tables, which are structured collection of raws and columns.
   TABLE is a database objecct that stores data in rows and columns, similar to a spreadsheet.

2. Five key features of SQL Server:
   1.Data Storage and Management
     SQL Server provides reliable, scalable, and secure storage for structured data, supporting tables, views, stored procedures, and triggers to manage and manipulate data efficiently.
   2.Advanced Security Features
     It offers features like Transparent Data Encryption (TDE), Always Encrypted, Row-Level Security (RLS), and authentication methods (Windows and SQL Server Authentication) to protect sensitive data.
   3.High Availability and Disaster Recovery (HADR)
     SQL Server includes solutions such as Always On Availability Groups, Database Mirroring, and Log Shipping to ensure data availability and business continuity in case of failures.
   4.Business Intelligence (BI) Tools
     Built-in BI features such as SQL Server Integration Services (SSIS), SQL Server Reporting Services (SSRS), and SQL Server Analysis Services (SSAS) allow for data integration, reporting, and analytics.
   5.Scalability and Performance Optimization
     SQL Server supports indexing, in-memory OLTP, query optimization, partitioning, and compression techniques to handle large volumes of data and ensure fast query execution and scalability.

 3. Windows Authentication (Integrated Security)
     Uses the Windows user account of the person or application connecting to SQL Server.
     No need to enter a username or password in the connection string.
     Best for corporate environments (uses Active Directory).
    
    SQL Server Authentication
     Requires a separate SQL Server login and password.
     Credentials are managed by SQL Server itself, not Windows.
     Useful for non-Windows clients or cross-platform access.

  4. CREATE DATABASE SchoolDB

  5. CREATE TABLE STUDENTS (STUDENTID INT PRIMARY KEY, NAME VARCHAR(50), AGE INT);

  6. SQL Server	A relational database management system (RDBMS) developed by Microsoft.	It stores, manages, and secures data; runs queries and handles transactions on large datasets.
     SSMS (SQL Server Management Studio A graphical user interface (GUI) tool used to interact with SQL Server. It allows developers and DBAs to write SQL queries, manage databases, configure security, etc.
     SQL (Structured Query Language) is language used to query and manipulate relational databases (like SQL Server, Oracle, MySQL, etc.). It is used to create, read, update, and delete data (via SELECT, INSERT, UPDATE, DELETE, etc.).
  
  7. DQL (Data Query Language)
     Purpose: Retrieve (query) data from the database.
     Main Command:
     SELECT

     DML (Data Manipulation Language)
     Purpose: Modify data inside tables (not the structure).
     Main Commands:
     INSERT, UPDATE, DELETE, MERGE

     DDL (Data Definition Language)
     Purpose: Define or change the structure of database objects like tables, schemas, or indexes.
     Main Commands:
     CREATE, ALTER, DROP, TRUNCATE, RENAME

     DCL (Data Control Language)
     Purpose: Control permissions and access to data.
     Main Commands:
     GRANT, REVOKE
 
     TCL (Transaction Control Language)
     Purpose: Manage transactions in the database to ensure data integrity.
     Main Commands:
     COMMIT, ROLLBACK, SAVEPOINT


    8. INSERT INTO STUDENTS (STUDENTID, NAME, AGE) 
       VALUES    (1,'JOHN', 18),
                 (2,'NICK', 19),
		             (3,'TOM', 20);

    9. Downloaded the .bak file
       Placed it in SQL Server's backup folder
       Used SSMS Restore Wizard OR T-SQL to restore the database
       Confirmed successful restore via Object Explorer or query
    
