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
    public partial class Quality : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                QualityRepository br = new QualityRepository();
                List<MRSLibrary.Database.QualityTable> lst = new List<MRSLibrary.Database.QualityTable>();
                lst = br.GetAllQualities();


                GridView1.DataSource = lst;
                GridView1.DataBind();
            }
        }

        protected void btnAddQuality_Click(object sender, EventArgs e)
        {
            PanelAddQuality.Visible = true;
        }

        protected void btnSaveQuality_Click(object sender, EventArgs e)
        {
            QualityRepository rl = new QualityRepository();
            QualityTable l = new QualityTable();

            l.QualityName = txtQuality.Text;
            rl.AddQuality(l);
        }
    }
}