namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class adNewMi : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Employees", "Dept_Id", c => c.Int(nullable: false));
            DropColumn("dbo.Employees", "Department");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Employees", "Department", c => c.String());
            DropColumn("dbo.Employees", "Dept_Id");
        }
    }
}
