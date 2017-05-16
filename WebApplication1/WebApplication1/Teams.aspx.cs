using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;
using System.Data.Entity;

namespace WebApplication1
{
    public partial class Teams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Player> playersGrid_Data()
        {
            TeamContext db = new TeamContext();
            var query = db.Players.Include(s => s.Team);
                return query;
        }
    }
}