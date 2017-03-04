using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;

namespace delete2
{
    public partial class RequestHistory : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RequestRepository br = new RequestRepository();
                List<MRSLibrary.Database.RequestTable> lst = new List<MRSLibrary.Database.RequestTable>();
                lst = br.GetAllRequests();
                if (lst == null)
                {
                    Label4.Visible = true;
                    GridView1.Visible = false;
                }
                else
                {
                    Label4.Visible = false;
                    GridView1.DataSource = lst;
                    GridView1.DataBind();
                }
            }
        }



        protected void btnuser_Click(object sender, EventArgs e)
        {
            RequestRepository br = new RequestRepository();
            List<MRSLibrary.Database.RequestTable> lst = new List<MRSLibrary.Database.RequestTable>();

            lst = br.GetRequestsForUser(Convert.ToInt32(txtuser.Text));
            if (lst == null)
            {
                Label4.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                Label4.Visible = false;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }



        protected void btnmovie_Click(object sender, EventArgs e)
        {
            RequestRepository br = new RequestRepository();
            List<MRSLibrary.Database.RequestTable> lst = new List<MRSLibrary.Database.RequestTable>();

            lst = br.GetRequestsForMovie(Convert.ToInt32(txtmovie.Text));
            if (lst == null)
            {
                Label4.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                Label4.Visible = false;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }



        protected void btnNotIssued_Click(object sender, EventArgs e)
        {
            RequestRepository br = new RequestRepository();
            List<MRSLibrary.Database.RequestTable> lst = new List<MRSLibrary.Database.RequestTable>();

            lst = br.GetRequestsNotIssued();
            if (lst == null)
            {
                Label4.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                Label4.Visible = false;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }



        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            RequestRepository br = new RequestRepository();
            List<MRSLibrary.Database.RequestTable> lst = new List<MRSLibrary.Database.RequestTable>();
            int val = Convert.ToInt16(DropDownList1.SelectedValue);
            lst = br.GetRequestsForDate(val, Calendar1.SelectedDate);
            if (lst == null)
            {
                Label4.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                Label4.Visible = false;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }



        protected void btnRequestid_Click(object sender, EventArgs e)
        {
            RequestRepository br = new RequestRepository();
            MRSLibrary.Database.RequestTable lst = new MRSLibrary.Database.RequestTable();

            lst = br.GetRequestForRequestID(Convert.ToInt32(txtRequestid.Text));
            if (lst == null)
            {
                Label4.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                Label4.Visible = false;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }



        protected void btnBorrowid_Click(object sender, EventArgs e)
        {
            RequestRepository br = new RequestRepository();
            List<MRSLibrary.Database.RequestTable> lst = new List<MRSLibrary.Database.RequestTable>();

            lst = br.GetRequestsForBorrow(Convert.ToInt32(txtRequestid.Text));
            if (lst == null)
            {
                Label4.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                Label4.Visible = false;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }


    }
}