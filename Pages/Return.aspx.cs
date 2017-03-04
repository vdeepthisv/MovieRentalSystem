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
    public partial class Return : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BorrowRepository br = new BorrowRepository();
                List<MRSLibrary.Database.BorrowTable> lst = new List<MRSLibrary.Database.BorrowTable>();
                lst = br.GetBorrowNotReturned();
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
            BorrowRepository br = new BorrowRepository();
            List<MRSLibrary.Database.BorrowTable> lst = new List<MRSLibrary.Database.BorrowTable>();

            lst = br.GetBorrowsForUserForReturn(Convert.ToInt32(txtuser.Text));
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
            BorrowRepository br = new BorrowRepository();
            List<MRSLibrary.Database.BorrowTable> lst = new List<MRSLibrary.Database.BorrowTable>();

            lst = br.GetBorrowsForMovieForReturn(Convert.ToInt32(txtmovie.Text));
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
            BorrowRepository br = new BorrowRepository();
            MRSLibrary.Database.BorrowTable lst = new MRSLibrary.Database.BorrowTable();

            lst = br.GetBorrowForBorrowIDForReturn(Convert.ToInt32(txtBorrowid.Text));
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
            BorrowRepository br = new BorrowRepository();
            List<MRSLibrary.Database.BorrowTable> lst = new List<MRSLibrary.Database.BorrowTable>();

            lst = br.GetBorrowsForRequestForReturn(Convert.ToInt32(txtRequestid.Text));
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
            BorrowRepository br = new BorrowRepository();
            List<MRSLibrary.Database.BorrowTable> lst = new List<MRSLibrary.Database.BorrowTable>();
            int val = Convert.ToInt16(DropDownList1.SelectedValue);
            lst = br.GetBorrowForDateForReturn(val, Calendar1.SelectedDate);
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
            if (e.CommandName == "return")
            {
                BorrowRepository repo = new BorrowRepository();
                List<MRSLibrary.CustomizeDisplay.BorrowReturned> br = new List<MRSLibrary.CustomizeDisplay.BorrowReturned>();
                long id = Convert.ToInt64(e.CommandArgument);
                repo.ReturnMovieForBorrow(id);
                br = repo.GetReturnedData(id);

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