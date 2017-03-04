using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;

namespace delete2
{
    public partial class BorrowHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BorrowRepository br = new BorrowRepository();
                List<MRSLibrary.Database.BorrowTable> lst = new List<MRSLibrary.Database.BorrowTable>();
                lst = br.GetAllBorrows();
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

            lst = br.GetBorrowsForUser(Convert.ToInt32(txtuser.Text));
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

            lst = br.GetBorrowsForMovie(Convert.ToInt32(txtmovie.Text));
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

        protected void btnNotReturned_Click(object sender, EventArgs e)
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            BorrowRepository br = new BorrowRepository();
            List<MRSLibrary.Database.BorrowTable> lst = new List<MRSLibrary.Database.BorrowTable>();
            int val =Convert.ToInt16(DropDownList1.SelectedValue);
            lst = br.GetBorrowForDate(val,Calendar1.SelectedDate);
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

            lst = br.GetBorrowForBorrowID(Convert.ToInt32(txtBorrowid.Text));
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

            lst = br.GetBorrowsForMovie(Convert.ToInt32(txtRequestid.Text));
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