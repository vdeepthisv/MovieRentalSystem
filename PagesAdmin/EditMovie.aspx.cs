using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;

namespace delete2
{
    public partial class EditMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MovieRepository br = new MovieRepository();
                List<MRSLibrary.Database.MovieTable> lst = new List<MRSLibrary.Database.MovieTable>();
                lst = br.GetAllMovies();
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



        protected void btnMovieID_Click(object sender, EventArgs e)
        {
            MovieRepository br = new MovieRepository();
            MRSLibrary.Database.MovieTable lst = new MRSLibrary.Database.MovieTable();

            lst = br.GetMovieForID(Convert.ToInt32(txtMovieid.Text));
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



        protected void btnMovieName_Click(object sender, EventArgs e)
        {
            MovieRepository br = new MovieRepository();
            List<MRSLibrary.Database.MovieTable> lst = new List<MRSLibrary.Database.MovieTable>();

            lst = br.GetMoviesForName(txtMovieName.Text);
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
            MovieRepository br = new MovieRepository();
            List<MRSLibrary.Database.MovieTable> lst = new List<MRSLibrary.Database.MovieTable>();
            int val = Convert.ToInt16(DropDownList1.SelectedValue);
            lst = br.GetMoviesForDate(val, Calendar1.SelectedDate);
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