using ArbovSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArbovSite.Admin
{
    public partial class EditWorkplace : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            int workplaceID = Convert.ToInt32(Request.Params["workplaceID"]);
            using (ArbovSiteEntities context = new ArbovSiteEntities())
            {
                Workplace workplace = context.Workplaces.Find(workplaceID);
                this.TextBoxCompany.Text = workplace.company;
                this.RepeaterProjects.DataSource = workplace.Projects.ToList();
                this.RepeaterProjects.DataBind();
            }
        }

        protected void LinkButtonSaveWorkplace_Click(object sender, EventArgs e)
        {
            using (ArbovSiteEntities context = new ArbovSiteEntities())
            {
                int workplaceID = Convert.ToInt32(Request.Params["workplaceID"]);
                Workplace workplace = context.Workplaces.Find(workplaceID);
                workplace.company = this.TextBoxCompany.Text;
                context.SaveChanges();
                Response.Redirect("EditWorkPlaces.aspx");
            }
        }
    }
}