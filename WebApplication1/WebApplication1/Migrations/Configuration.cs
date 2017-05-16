namespace WebApplication1.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using WebApplication1.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<WebApplication1.Models.TeamContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(TeamContext context)
        {
            context.Players.AddOrUpdate(
                new Player
                {
                    FirstName = "Carson",
                    LastName = "Alexander"
                },
                new Player
                {
                    FirstName = "David",
                    LastName = "Harris"
                }
                );
            context.SaveChanges();

            context.Teams.AddOrUpdate(
                new Team { teamName = "Birds" });
            context.SaveChanges();
        }
    }
}
