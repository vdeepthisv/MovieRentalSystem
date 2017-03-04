using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;
namespace delete2
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                  RegistrationRequestRepository br = new RegistrationRequestRepository();
                  List<MRSLibrary.Database.RegistrationRequestTable> lst = new List<MRSLibrary.Database.RegistrationRequestTable>();
                  lst = br.GetAllRegistrationRequests();

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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            RegistrationRequestRepository br = new RegistrationRequestRepository();
            List<MRSLibrary.Database.RegistrationRequestTable> lst = new List<MRSLibrary.Database.RegistrationRequestTable>();
            
            Int16 val = Convert.ToInt16( DropDownList1.SelectedValue);
            DateTime dt= Calendar1.SelectedDate;

            lst = br.GetRegReqForDate(val, dt);

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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddUser")
            {
                string f=e.CommandArgument.ToString();
                Response.Redirect("~/ConfirmUser.aspx?rid=" + f);
            }
        }

        protected void btnRegReq_Click(object sender, EventArgs e)
        {
            RegistrationRequestRepository br = new RegistrationRequestRepository();
            MRSLibrary.Database.RegistrationRequestTable lst = new MRSLibrary.Database.RegistrationRequestTable();

            lst = br.GetRegistrationRequestForRegistrationRequestID(Convert.ToInt32(txtRegReq.Text));
            GridView1.DataSource = lst;
            GridView1.DataBind();
        }
    }
}