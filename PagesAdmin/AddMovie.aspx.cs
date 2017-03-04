using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MRSLibrary.Repository;
using MRSLibrary.Database;

namespace TheProject.Admins.Movies
{
    public partial class AddMovie : System.Web.UI.Page
    {
        LanguageRepository lanrepo;
        GenreRepository genrepo;
        QualityRepository qualrepo;
        MovieRepository movrepo;
        MovieTable movie;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lanrepo = new LanguageRepository();
                qualrepo = new QualityRepository();
                genrepo = new GenreRepository();

                List<LanguageTable> lan = lanrepo.GetAllLanguages();
                List<GenreTable> gen = genrepo.GetAllGenres();
                List<QualityTable> qual = qualrepo.GetAllQualities();

                DropDownList6.DataSource = lan;
                DropDownList6.DataTextField = "LanguageName";
                DropDownList6.DataValueField = "LanguageID";
                DropDownList6.DataBind();

                DropDownList7.DataSource = qual;
                DropDownList7.DataTextField = "QualityName";
                DropDownList7.DataValueField = "QualityID";
                DropDownList7.DataBind();

                DropDownList8.DataSource = gen;
                DropDownList8.DataTextField = "GenreName";
                DropDownList8.DataValueField = "GenreID";
                DropDownList8.DataBind();          
            
            }

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            movrepo = new MovieRepository();
            movie = new MovieTable();

            movie.MovieName = TextBox11.Text;
            movie.LanguageID = Convert.ToByte(DropDownList6.SelectedValue);
            movie.GenreID = Convert.ToByte(DropDownList7.SelectedValue);
            movie.QualityID = Convert.ToByte(DropDownList8.SelectedValue);
            movie.ReleaseDate = Convert.ToDateTime(TextBox12.Text);
            movie.Availability = Convert.ToByte(TextBox13.Text);
            movie.Discontinue = Convert.ToBoolean(TextBox3.Text);
            movie.DateOfAddition = Convert.ToDateTime(TextBox4.Text);
            movie.Price =Convert.ToDecimal(TextBox5.Text);
            movie.Fine = Convert.ToByte(TextBox6.Text);
            movie.Producer = TextBox7.Text;
            movie.Director = TextBox8.Text;
            movie.Cast = TextBox9.Text;
            movie.Certificate = DropDownList4.SelectedValue;
            movie.Rating = Convert.ToByte(TextBox9.Text);
            movrepo.AddMovie(movie);



            Response.Redirect("SucessMovieAdd.aspx");
        }
    }
}