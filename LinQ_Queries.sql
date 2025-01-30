CREATE TABLE [dbo].[Employee](
	[AccountNo] [int] NOT NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Age] [int] NULL,
	[Email] [varchar](100) NULL,
	[PhoneNo] [varchar](100) NULL,
	[Salary] [decimal](10, 2) NULL,
	[City] [varchar](100) NULL,
	[JoiningDate] [datetime] NULL,
	[Department] [varchar](100) NULL,
	[EmployeeId] [int] NULL,
 CONSTRAINT [PK_Employee_1] PRIMARY KEY CLUSTERED 
(
	[AccountNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

INSERT INTO [dbo].[Employee] ([AccountNo], [FirstName], [LastName], [Gender], [Age], [Email], [PhoneNo], [Salary], [City], [JoiningDate], [Department], [EmployeeId])  
VALUES  
(101, 'Anil', 'Sharma', 'Male', 28, 'anil.sharma@email.com', '9876543210', 45000.00, 'Ahmedabad', '2019-07-20', 'Admin', 1),  
(102, 'Priya', 'Patel', 'Female', 25, 'priya.patel@email.com', '9876543211', 32000.00, 'Rajkot', '2018-08-10', 'Sales', 2),  
(103, 'Raj', 'Mehta', 'Male', 35, 'raj.mehta@email.com', '9876543212', 55000.00, 'Surat', '2020-01-15', 'IT', 3),  
(104, 'Neha', 'Desai', 'Female', 29, 'neha.desai@email.com', '9876543213', 40000.00, 'Morbi', '2017-12-05', 'Admin', 4),  
(105, 'Karan', 'Joshi', 'Male', 40, 'karan.joshi@email.com', '9876543214', 60000.00, 'Baroda', '2016-09-20', 'Distribution', 5),  
(106, 'Pooja', 'Trivedi', 'Female', 30, 'pooja.trivedi@email.com', '9876543215', 38000.00, 'Gandhinagar', '2018-03-15', 'IT', 6),  
(107, 'Vikas', 'Pandey', 'Male', 23, 'vikas.pandey@email.com', '9876543216', 25000.00, 'Ahmedabad', '2021-06-10', 'Customer Relationship', 7),  
(108, 'Sneha', 'Kapoor', 'Female', 27, 'sneha.kapoor@email.com', '9876543217', 48000.00, 'Rajkot', '2015-11-30', 'Sales', 8),  
(109, 'Amit', 'Kumar', 'Male', 31, 'amit.kumar@email.com', '9876543218', 52000.00, 'Surat', '2019-02-14', 'IT', 9),  
(110, 'Divya', 'Rana', 'Female', 24, 'divya.rana@email.com', '9876543219', 29000.00, 'Morbi', '2022-07-25', 'Admin', 10),  
(111, 'Rohit', 'Verma', 'Male', 26, 'rohit.verma@email.com', '9876543220', 35000.00, 'Baroda', '2020-08-12', 'Distribution', 11),  
(112, 'Kavita', 'Singh', 'Female', 37, 'kavita.singh@email.com', '9876543221', 57000.00, 'Ahmedabad', '2018-12-01', 'Customer Relationship', 12),  
(113, 'Suresh', 'Yadav', 'Male', 45, 'suresh.yadav@email.com', '9876543222', 62000.00, 'Rajkot', '2014-05-18', 'Admin', 13),  
(114, 'Meena', 'Gupta', 'Female', 32, 'meena.gupta@email.com', '9876543223', 49000.00, 'Gandhinagar', '2019-09-10', 'IT', 14),  
(115, 'Harish', 'Thakur', 'Male', 33, 'harish.thakur@email.com', '9876543224', 51000.00, 'Ahmedabad', '2017-06-28', 'Distribution', 15),  
(116, 'Swati', 'Agarwal', 'Female', 31, 'swati.agarwal@email.com', '9876543225', 46000.00, 'Surat', '2021-02-05', 'Customer Relationship', 16),  
(117, 'Ramesh', 'Patil', 'Male', 28, 'ramesh.patil@email.com', '9876543226', 41000.00, 'Rajkot', '2016-07-20', 'Sales', 17),  
(118, 'Nisha', 'Rathore', 'Female', 35, 'nisha.rathore@email.com', '9876543227', 53000.00, 'Morbi', '2019-11-23', 'IT', 18),  
(119, 'Ankur', 'Shah', 'Male', 29, 'ankur.shah@email.com', '9876543228', 47000.00, 'Ahmedabad', '2015-04-30', 'Admin', 19),  
(120, 'Komal', 'Bhatia', 'Female', 27, 'komal.bhatia@email.com', '9876543229', 33000.00, 'Gandhinagar', '2023-01-10', 'Sales', 20);  

INSERT INTO [dbo].[Employee] ([AccountNo], [FirstName], [LastName], [Gender], [Age], [Email], [PhoneNo], [Salary], [City], [JoiningDate], [Department], [EmployeeId])  
VALUES  
(121, 'Shivani', 'Bansal', 'Female', 34, 'shivani.bansal@email.com', '9876543230', 48000.00, 'Jamnagar', '2019-08-10', 'Sales', 21),  
(122, 'Arvind', 'Kumar', 'Male', 29, 'arvind.kumar@email.com', '9876543231', 52000.00, 'Jamnagar', '2020-02-15', 'IT', 22),  
(123, 'Alok', 'Jain', 'Male', 38, 'alok.jain@email.com', '9876543232', 57000.00, 'Jamnagar', '2018-10-20', 'Admin', 23),  
(124, 'Sonal', 'Sharma', 'Female', 27, 'sonal.sharma@email.com', '9876543233', 45000.00, 'Jamnagar', '2021-03-25', 'Customer Relationship', 24),  
(125, 'Ankur', 'Verma', 'Male', 32, 'ankur.verma@email.com', '9876543234', 61000.00, 'Jamnagar', '2019-11-05', 'Distribution', 25),  
(126, 'Rita', 'Gupta', 'Female', 28, 'rita.gupta@email.com', '9876543235', 38000.00, 'Jamnagar', '2022-01-12', 'IT', 26),  
(127, 'Kunal', 'Patel', 'Male', 41, 'kunal.patel@email.com', '9876543236', 65000.00, 'Jamnagar', '2017-07-18', 'Sales', 27),  
(128, 'Tanu', 'Singh', 'Female', 33, 'tanu.singh@email.com', '9876543237', 50000.00, 'Jamnagar', '2020-09-15', 'Admin', 28),  
(129, 'Harsh', 'Yadav', 'Male', 36, 'harsh.yadav@email.com', '9876543238', 56000.00, 'Jamnagar', '2018-05-22', 'Customer Relationship', 29),  
(130, 'Mehul', 'Joshi', 'Male', 30, 'mehul.joshi@email.com', '9876543239', 54000.00, 'Jamnagar', '2021-07-10', 'IT', 30);  

SELECT * FROM Employee;