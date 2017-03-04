using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Database;
using MRSLibrary.Repository;

namespace delete2
{
    public partial class BlockUser : System.Web.UI.Page
    {
        UserRepository repo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserRepository br = new UserRepository();
                List<MRSLibrary.Database.UserTable> lst = new List<MRSLibrary.Database.UserTable>();
                lst = br.GetAllUsers();

                if (lst == null)
                {
                    Label2.Visible = true;
                    GridView1.Visible = false;
                }
                else
                {
                    Label2.Visible = false;
                    GridView1.Visible = true;
                    GridView1.DataSource = lst;
                    GridView1.DataBind();
                }

            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Block")
            {
                repo = new UserRepository();
                long id=Convert.ToInt64( e.CommandArgument);
                repo.BlockUser(id);
            }
        }

        protected void btnUser_Click(object sender, EventArgs e)
        {
            UserRepository br = new UserRepository();
            MRSLibrary.Database.UserTable lst = new MRSLibrary.Database.UserTable();

            lst = br.GetUserForID(Convert.ToInt32(txtUser.Text));
            if (lst == null)
            {
                Label2.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                Label2.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void btnName_Click(object sender, EventArgs e)
        {
            UserRepository br = new UserRepository();
            List<MRSLibrary.Database.UserTable> lst = new List<MRSLibrary.Database.UserTable>();

            lst = br.GetUsersForName(txtUser.Text);

            if (lst == null)
            {
                Label2.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                Label2.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

       
    }
}