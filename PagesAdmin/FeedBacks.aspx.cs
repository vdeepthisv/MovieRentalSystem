using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;

namespace delete2
{
    public partial class FeedBacks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FeedbackRepository br = new FeedbackRepository();
            List<MRSLibrary.Database.FeedbackTable> lst = new List<MRSLibrary.Database.FeedbackTable>();
            lst = br.GetAllFeedbacks();
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

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            FeedbackRepository br = new FeedbackRepository();
            MRSLibrary.Database.FeedbackTable lst = new MRSLibrary.Database.FeedbackTable();

            lst = br.GetFeedbackForFeedbackID(Convert.ToInt32(txtFeedback.Text));
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

        protected void btnUser_Click(object sender, EventArgs e)
        {
            FeedbackRepository br = new FeedbackRepository();
            List<MRSLibrary.Database.FeedbackTable> lst = new List<MRSLibrary.Database.FeedbackTable>();

            lst = br.GetFeedbacksForUser(Convert.ToInt32(txtUser.Text));
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
            FeedbackRepository br = new FeedbackRepository();
            List<MRSLibrary.Database.FeedbackTable> lst = new List<MRSLibrary.Database.FeedbackTable>();
            int val = Convert.ToInt16(DropDownList1.SelectedValue);
            lst = br.GetFeedBacksForDate(val, Calendar1.SelectedDate);
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