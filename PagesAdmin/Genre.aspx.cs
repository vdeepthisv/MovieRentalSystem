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
    public partial class Genre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenreRepository br = new GenreRepository();
                List<MRSLibrary.Database.GenreTable> lst = new List<MRSLibrary.Database.GenreTable>();
                lst = br.GetAllGenres();


                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void btnAddGenre_Click(object sender, EventArgs e)
        {
            PanelAddGenre.Visible = true;
        }

        protected void btnSaveGenre_Click(object sender, EventArgs e)
        {
            GenreRepository rl = new GenreRepository();
            GenreTable l = new GenreTable();

            l.GenreName = txtGenre.Text;
            rl.AddGenre(l);
        }
    }
}