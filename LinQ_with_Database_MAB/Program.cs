using LinQ_with_Database_MAB;

public class Program
{
    public static void Main()
    {
        var context = new ApplicationDBContext();

        //For example, Display FirstName of all employees.
        var q1 = context.Employee.Select(x => x.FirstName);
        foreach (var employee in q1)
        {
            Console.WriteLine("\n {0}", employee);
        }

        //Display data of all Employees
        var q2 = context.Employee.ToList();

        foreach (var emp in q2)
        {
            Console.WriteLine(emp.AccountNo + ", " + emp.FirstName + ", " + emp.LastName + ", " + emp.Gender + ", " + emp.Age + ", " + emp.Email + ", " + emp.PhoneNo + ", " + emp.Salary + ", " + emp.City + ", " + emp.JoiningDate + ", " + emp.Department);
        }

        Console.WriteLine();

        // Select ActNo, FirstName, and Salary into a new class
        var selectedEmployees = context.Employee
            .Select(e => new { e.AccountNo, e.FirstName, e.Salary })
            .ToList();
        foreach (var emp in selectedEmployees)
        {
            Console.WriteLine(emp.AccountNo + " | " + emp.FirstName + " | " + emp.Salary);
        }

        Console.WriteLine();

        // Display data in format: {Anil} works in {Admin} Department.
        var formattedEmployees = context.Employee
            .Select(e => e.FirstName + " works in " + e.Department + " Department.")
            .ToList();
        foreach (var emp in formattedEmployees)
        {
            Console.WriteLine(emp);
        }

        Console.WriteLine();

        // Select Employee Full Name, Email, and Department as anonymous
        var anonymousEmployees = context.Employee
            .Select(e => new { FullName = e.FirstName + " " + e.LastName, e.Email, e.Department })
            .ToList();
        foreach (var emp in anonymousEmployees)
        {
            Console.WriteLine(emp.FullName + " | " + emp.Email + " | " + emp.Department);
        }

        Console.WriteLine();

        // Display employees with their joining date
        var employeesWithJoiningDate = context.Employee
            .Select(e => e.FirstName + " joined on " + e.JoiningDate)
            .ToList();

        foreach (var emp in employeesWithJoiningDate)
        {
            Console.WriteLine(emp);
        }

        Console.WriteLine();

        // Display employees between age 20 to 30
        var ageFilteredEmployees = context.Employee
            .Where(e => e.Age >= 20 && e.Age <= 30)
            .ToList();

        Console.WriteLine("FirstName | Age");
        foreach (var emp in ageFilteredEmployees)
        {
            Console.WriteLine(emp.FirstName + " | " + emp.Age);
        }

        Console.WriteLine();

        // Display female employees
        var femaleEmployees = context.Employee
            .Where(e => e.Gender == "Female")
            .ToList();

        Console.WriteLine("FirstName | Gender");
        foreach (var emp in femaleEmployees)
        {
            Console.WriteLine(emp.FirstName + " | " + emp.Gender);
        }

        Console.WriteLine();

        // Display employees with salary more than 35000
        var highSalaryEmployees = context.Employee
            .Where(e => e.Salary > 35000)
            .ToList();

        Console.WriteLine("FirstName | Salary");
        foreach (var emp in highSalaryEmployees)
        {
            Console.WriteLine(emp.FirstName + " | " + emp.Salary);
        }

        Console.WriteLine();

        // Display employees whose account no is less than 110
        var accountFilteredEmployees = context.Employee
            .Where(e => e.AccountNo < 110)
            .ToList();

        Console.WriteLine("FirstName | AccountNo");
        foreach (var emp in accountFilteredEmployees)
        {
            Console.WriteLine(emp.FirstName + " | " + emp.AccountNo);
        }

        Console.WriteLine();

        // Display employees who belong to either Rajkot or Morbi city
        var cityFilteredEmployees = context.Employee
            .Where(e => e.City == "Rajkot" || e.City == "Morbi")
            .ToList();

        Console.WriteLine("FirstName | City");
        foreach (var emp in cityFilteredEmployees)
        {
            Console.WriteLine(emp.FirstName + " | " + emp.City);
        }

        Console.WriteLine();

        // Display employees whose salary is greater than 20000
        var lowSalaryEmployees = context.Employee
            .Where(e => e.Salary > 20000)
            .ToList();

        Console.WriteLine("FirstName | Salary");
        foreach (var emp in lowSalaryEmployees)
        {
            Console.WriteLine(emp.FirstName + " | " + emp.Salary);
        }

        Console.WriteLine();

        // Display employees whose salary is between 30000 and 60000
        var midSalaryEmployees = context.Employee
            .Where(e => e.Salary >= 10000 && e.Salary <= 60000)
            .ToList();

        Console.WriteLine("FirstName | Salary");
        foreach (var emp in midSalaryEmployees)
        {
            Console.WriteLine(emp.FirstName + " | " + emp.Salary);
        }

        Console.WriteLine();

        // Display AccountNo, FirstName, and Salary of employees from Morbi, Ahmedabad, Surat with AccountNo > 120
        var citySpecificEmployees = context.Employee
            .Where(e => (e.City == "Morbi" || e.City == "Ahmedabad" || e.City == "Surat") && e.AccountNo <= 120)
            .Select(e => new { e.AccountNo, e.FirstName, e.Salary })
            .ToList();

        Console.WriteLine("A/CNo | FirstName | Salary");
        foreach (var emp in citySpecificEmployees)
        {
            Console.WriteLine(emp.AccountNo + " | " + emp.FirstName + " | " + emp.Salary);
        }
    }
}