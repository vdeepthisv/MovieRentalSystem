using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;
using MRSLibrary.Database;

namespace delete2
{
    public partial class Role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RoleRepository br = new RoleRepository();
                List<MRSLibrary.Database.RoleTable> lst = new List<MRSLibrary.Database.RoleTable>();
                lst = br.GetAllRoles();


                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void btnAddRole_Click(object sender, EventArgs e)
        {
            PanelAddRole.Visible = true;
        }

        protected void btnSaveRole_Click(object sender, EventArgs e)
        {
            RoleRepository rl = new RoleRepository();
            RoleTable l = new RoleTable();

            l.RoleName = txtName.Text;
            rl.AddRole(l);
        }
    }
}