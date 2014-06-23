using ArbovSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArbovSite.Admin
{
    public partial class EditWorkPlaces : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // ArbovSiteEntities context = new ArbovSiteEntities();
           // var workplaces = context.Workplaces;
           // this.GridViewWorkplaces.DataSource = workplaces.ToList();
           // this.DataBind();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable GridViewWorkplaces_GetData()
        {
            ArbovSiteEntities context = new ArbovSiteEntities();
            return context.Workplaces.OrderBy(w => w.id);
        }
    }
}