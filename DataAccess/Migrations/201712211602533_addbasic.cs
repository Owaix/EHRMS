namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addbasic : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.EmployeeBasicInfoes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        FirstName = c.String(),
                        FatherName = c.String(),
                        SurName = c.String(),
                        Gender = c.Int(nullable: false),
                        DateOfBirth = c.DateTime(nullable: false),
                        CNIC = c.String(),
                        Religion = c.String(),
                        Domicile = c.String(),
                        Address = c.String(),
                        State = c.String(),
                        Country = c.String(),
                        PostalCode = c.Double(nullable: false),
                        HomePhone = c.String(),
                        MobilePhone = c.String(),
                        EmailAddress = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.EmployeeBasicInfoes");
        }
    }
}
