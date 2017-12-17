namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class adAVa : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.SubMenus", "Action", c => c.String());
            AddColumn("dbo.SubMenus", "Controller", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.SubMenus", "Controller");
            DropColumn("dbo.SubMenus", "Action");
        }
    }
}
