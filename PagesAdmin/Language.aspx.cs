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
    public partial class Language : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LanguageRepository br = new LanguageRepository();
                List<MRSLibrary.Database.LanguageTable> lst = new List<MRSLibrary.Database.LanguageTable>();
                lst = br.GetAllLanguages();
                
                    
                    GridView1.DataSource = lst;
                    GridView1.DataBind();
            }
        }

        protected void btnAddRole_Click(object sender, EventArgs e)
        {
            PanelAddRole.Visible = true;
        }

        protected void btnSaveLanguage_Click(object sender, EventArgs e)
        {
            LanguageRepository lng = new LanguageRepository();
            LanguageTable l = new LanguageTable();

            l.LanguageName = txtLanguage.Text;
            lng.AddLanguage(l);

        }
    }
}