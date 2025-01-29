# LinQ_with_Database_MAB 📊💻

## Description 📜
This project demonstrates how to use LINQ queries with a SQL Server database using Entity Framework in C#. The project includes various queries like projections, filtering, aggregation, and sorting on an Employee table.

## Features 🌟
- **LINQ Queries**: Perform filtering, sorting, and projection on employee data.
- **SQL Database Integration**: Uses Entity Framework to interact with a local SQL Server database.
- **CRUD Operations**: Demonstrates how to perform common CRUD operations using LINQ.
- **Comprehensive Examples**: Includes various examples like:
  - Displaying data of all employees.
  - Filtering employees by age, gender, city, and salary.
  - Sorting employees by their names and joining date.
  - Aggregating salary data.

## Technologies Used 🛠️
- **C#**: For writing LINQ queries and interacting with the database.
- **Entity Framework**: To map the database entities.
- **SQL Server**: Used to store and query the employee data.
- **Visual Studio**: IDE used for project development.

## Database Schema 📂
The `Employee` table includes the following fields:
- `AccountNo` (int) - Unique identifier for the account.
- `FirstName` (varchar) - Employee's first name.
- `LastName` (varchar) - Employee's last name.
- `Gender` (varchar) - Employee's gender.
- `Age` (int) - Employee's age.
- `Email` (varchar) - Employee's email address.
- `PhoneNo` (varchar) - Employee's phone number.
- `Salary` (decimal) - Employee's salary.
- `City` (varchar) - City where the employee is located.
- `JoiningDate` (datetime) - Employee's joining date.
- `Department` (varchar) - Department the employee works in.
- `EmployeeId` (int) - Unique employee ID.

## Setup 🛠️
1. Clone the repository:
   ```bash
   git clone https://github.com/BhadraMohit09/LinQ_with_Database_MAB.git
