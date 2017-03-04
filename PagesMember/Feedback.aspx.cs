using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;
using MRSLibrary.Database;
using MRSLibrary.CustomizeDisplay;

namespace TheProject.Members
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (TextBox1.Text!= null)
            {
                FeedbackRepository fd = new FeedbackRepository();
                FeedbackTable f = new FeedbackTable();
                long id = Convert.ToInt64(Session["UserID"].ToString());
                f.UserID = id;
                f.Feedback = TextBox1.Text;
                f.DateOfSubmission = DateTime.Now;

                Response.Redirect("~/Members/ConfirmedFeedBack.aspx");
            }
            else
                Label2.Text="Enter your FeedBack";
                
        }
    }
}