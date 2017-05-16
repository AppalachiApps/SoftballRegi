using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;

namespace WebApplication1.Models
{
    public class TeamContext : DbContext
    {
        public DbSet<Team> Teams { get; set; }
        public DbSet<Player> Players { get; set; }
    }

    public class Player
    {
        [Key, Display(Name = "ID")]
        [ScaffoldColumn(false)]
        public int PlayerID { get; set; }

        [Required, StringLength(40), Display(Name = "Last Name")]
        public string LastName { get; set; }

        [Required, StringLength(20), Display(Name = "First Name")]
        public string FirstName { get; set; }

        public virtual Team Team { get; set; }

    }

    public class Team
    {
        [Key, Display(Name ="ID")]
        [ScaffoldColumn(false)]
        public int TeamID { get; set; }

        [Required, StringLength(40), Display(Name ="Team Name")]
        public string teamName { get; set; }

        public virtual ICollection<Player> Players { get; set; }
    }



 
}