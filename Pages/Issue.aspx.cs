using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;
using MRSLibrary.Database;

namespace MovieRentalSystem.Pages
{
    public partial class Issue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
        }

        protected void btnuser_Click(object sender, EventArgs e)
        {
            RequestRepository br = new RequestRepository();
            List<MRSLibrary.Database.RequestTable> lst = new List<MRSLibrary.Database.RequestTable>();

            lst = br.GetRequestsForUserForIssue(Convert.ToInt32(txtuser.Text));
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

            lst = br.GetRequestsForMovieForIssue(Convert.ToInt32(txtmovie.Text));
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
            lst = br.GetRequestsForDateForIssue(val, Calendar1.SelectedDate);
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

            lst = br.GetRequestForRequestIDForIssue(Convert.ToInt32(txtRequestid.Text));
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



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "issue")
            {
                RequestRepository repo = new RequestRepository();
                BorrowRepository repo1 = new BorrowRepository();
                List<MRSLibrary.CustomizeDisplay.BorrowIssued> br = new List<MRSLibrary.CustomizeDisplay.BorrowIssued>();
                long id = Convert.ToInt64(e.CommandArgument);
                repo.IssueMovieForRequest(id);
                br = repo1.GetIssuedData(id);

                DetailsView1.DataSource = br;
                DetailsView1.DataBind();

            }
        }

        protected void DetailsView1_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            if (e.CommandName == "paid")
            {
                DetailsView1.DataSource = null;
                DetailsView1.DataBind();

            }
        }


    }
}