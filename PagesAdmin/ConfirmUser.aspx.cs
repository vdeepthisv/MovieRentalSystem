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
    public partial class ConfirmUser : System.Web.UI.Page
    {
        RegistrationRequestRepository rr;
        RoleRepository repo;
        UserRepository u;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string rid = Request.QueryString["rid"];
                repo = new RoleRepository();
                rr = new RegistrationRequestRepository();
                RegistrationRequestTable r = rr.GetRegistrationRequestForRegistrationRequestID(Convert.ToInt64(rid));
                List<RoleTable> roles = repo.GetAllRoles();
                DetailsView1.DataSource = r;
                DetailsView1.DataBind();

                DropDownList1.DataSource = roles;
                DropDownList1.DataTextField = "RoleName";
                DropDownList1.DataValueField = "RoleID";
                DropDownList1.DataBind();
                lblAddSuc.Visible = false;
            }
        }


        public string GeneratePassword(RegistrationRequestTable r)
        {
            
            string TempId = "";
            string str= (r.MobileNumber).ToString();
            
            TempId = r.Name.Substring(0, 3);
            TempId += str.Substring(7, 3);
       
            return TempId;
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            u = new UserRepository();
            string rid = Request.QueryString["rid"];
            rr = new RegistrationRequestRepository();
            RegistrationRequestTable r = rr.GetRegistrationRequestForRegistrationRequestID(Convert.ToInt64(rid));

            UserTable data = new UserTable();
            data.LoginName = r.Email;
            data.Password = GeneratePassword(r);
            data.UserName = r.Name;
            data.DOB = r.DOB;
            data.MobileNumber = r.MobileNumber;
            data.Email = r.Email;
            data.DOJ = DateTime.Now;
            data.RoleID =Convert.ToByte( DropDownList1.SelectedValue);
            data.Address = r.Address;

            u.AddUser(data);
            pnlAddBtn.Visible = false;
            lblAddSuc.Visible = true;
        }
    }
}