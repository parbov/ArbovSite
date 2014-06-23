using ArbovSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArbovSite
{
    public partial class ViewAllInCV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArbovSiteEntities context = new ArbovSiteEntities();
            var workplaces = context.Workplaces;
            this.GridView.DataSource = workplaces.ToList();
            this.DataBind();
        }
    }
}