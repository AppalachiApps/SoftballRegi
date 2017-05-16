namespace WebApplication1.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Players",
                c => new
                    {
                        PlayerID = c.Int(nullable: false, identity: true),
                        LastName = c.String(nullable: false, maxLength: 40),
                        FirstName = c.String(nullable: false, maxLength: 20),
                        Team_TeamID = c.Int(),
                    })
                .PrimaryKey(t => t.PlayerID)
                .ForeignKey("dbo.Teams", t => t.Team_TeamID)
                .Index(t => t.Team_TeamID);
            
            CreateTable(
                "dbo.Teams",
                c => new
                    {
                        TeamID = c.Int(nullable: false, identity: true),
                        teamName = c.String(nullable: false, maxLength: 40),
                    })
                .PrimaryKey(t => t.TeamID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Players", "Team_TeamID", "dbo.Teams");
            DropIndex("dbo.Players", new[] { "Team_TeamID" });
            DropTable("dbo.Teams");
            DropTable("dbo.Players");
        }
    }
}
