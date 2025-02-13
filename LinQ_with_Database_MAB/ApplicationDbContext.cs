﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static LinQ_with_Database_MAB.Employee;

namespace LinQ_with_Database_MAB
{
    public class ApplicationDBContext : DbContext
    {
        public DbSet<Employee> Employee { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=YourServerName;Database=YourDatabaseName;Trusted_Connection=True/False;TrustServerCertificate=True/False;");
        }
    }
}
