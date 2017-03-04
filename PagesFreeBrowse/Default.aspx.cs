using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;
using MRSLibrary.Database;
using MRSLibrary.CustomizeDisplay;

namespace MovieRentalSystem.PagesFreeBrowse
{
    public partial class Default : System.Web.UI.Page
    {

        MovieRepository movrepo;
        LanguageRepository lanrepo;
        QualityRepository qulrepo;
        GenreRepository genrepo;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["UserID"] = 0;

                movrepo = new MovieRepository();
                List<MoviesGridData> mov = movrepo.GetMoviesForGrid();

                GridView1.DataSource = mov;
                GridView1.DataBind();

                lanrepo = new LanguageRepository();
                movrepo = new MovieRepository();
                qulrepo = new QualityRepository();
                genrepo = new GenreRepository();

                List<LanguageTable> lan = lanrepo.GetAllLanguages();
                List<GenreTable> gen = genrepo.GetAllGenres();
                List<QualityTable> qual = qulrepo.GetAllQualities();
                List<ReleaseYear> yr = movrepo.GetYears();

                DropDownList1.DataSource = lan;
                DropDownList1.DataTextField = "LanguageName";
                DropDownList1.DataValueField = "LanguageID";
                DropDownList1.DataBind();

                DropDownList2.DataSource = qual;
                DropDownList2.DataTextField = "QualityName";
                DropDownList2.DataValueField = "QualityID";
                DropDownList2.DataBind();

                DropDownList3.DataSource = gen;
                DropDownList3.DataTextField = "GenreName";
                DropDownList3.DataValueField = "GenreID";
                DropDownList3.DataBind();

                DropDownList4.DataSource = yr;
                DropDownList4.DataBind();
            }
        }



        protected void btnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterUser.aspx");
        }



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            byte id = Convert.ToByte(DropDownList1.SelectedValue);
            movrepo = new MovieRepository();
            List<MoviesGridData> lst = movrepo.GetMoviesForLanguage(id);
            if (lst == null)
            {
                NoEntryFound.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                NoEntryFound.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            byte id = Convert.ToByte(DropDownList1.SelectedValue);
            movrepo = new MovieRepository();
            List<MoviesGridData> lst = movrepo.GetMoviesForGenre(id);
            if (lst == null)
            {
                NoEntryFound.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                NoEntryFound.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            byte id = Convert.ToByte(DropDownList1.SelectedValue);
            movrepo = new MovieRepository();
            List<MoviesGridData> lst = movrepo.GetMoviesForQuality(id);
            if (lst == null)
            {
                NoEntryFound.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                NoEntryFound.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            short id = Convert.ToInt16(DropDownList1.SelectedValue);
            movrepo = new MovieRepository();
            List<MoviesGridData> lst = movrepo.GetMoviesForYear(id);
            if (lst == null)
            {
                NoEntryFound.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                NoEntryFound.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string name = txtSearch.Text;
            movrepo = new MovieRepository();
            List<MoviesGridData> lst = movrepo.GetMoviesForNameGrid(name);
            if (lst == null)
            {
                NoEntryFound.Visible = true;
                GridView1.Visible = false;
            }
            else
            {

                NoEntryFound.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "member" && TextBox2.Text == "member")
            {
                Session["UserID"] = TextBox1.Text;
                Response.Redirect("~/Members/WelcomeMemberPage.aspx");
            }
            else if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
            {
                Session["UserID"] = TextBox1.Text;
                Response.Redirect("~/Admins/WelcomeAdminPage.aspx");
            }
            else
                Label3.Text = "Invalid username/password";
        }


    }
}
