using DataAccess.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;

namespace DataAccess
{
    public class HrContext : DbContext
    {
        public HrContext() : base(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString)
        {
            this.Configuration.LazyLoadingEnabled = false;
            Database.SetInitializer<HrContext>(null);
        }
        public DbSet<Departments> department { get; set; }
        public DbSet<Employee> employee { get; set; }
        public DbSet<EmployeeBasicInfo> basicInfo { get; set; }
        public DbSet<Menu> menu { get; set; }
        //public DbSet<SubMenu> submenu { get; set; }
        public DbSet<Roles> role { get; set; }
        public DbSet<FeatureAccessConfig> FRConfig { get; set; }
        //public DbSet<AcademicProfile> Academic { get; set; }
    }
}
