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
    public partial class MovieDetails : System.Web.UI.Page
    {
        MovieRepository mr = new MovieRepository();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string uid = Request.QueryString["uid"];
                mr = new MovieRepository();
                MovieTable lst = mr.GetMovieForID(Convert.ToInt64(uid));

                if ((lst.Availability > 0)&(uid!="0"))
                    btnRent.Visible = true;
                else
                    btnRent.Visible = false;

                DetailsView1.DataSource = lst;
                DetailsView1.DataBind();
            }
        }

        protected void btnRent_Click(object sender, EventArgs e)
        {
            RequestRepository repo = new RequestRepository();
            string uid = Request.QueryString["uid"];

            RequestTable req = new RequestTable();
            string st = Session["UserID"].ToString();
            req.UserID = int.Parse(st);

            req.MovieID = Convert.ToInt64(uid);
            repo.AddRequest(req);
            req.Date = DateTime.Now;

            btnRent.Visible = false;
            Label2.Visible = true;
            Label3.Visible = true;
            btnRent.Visible = false;
        }
    }
}