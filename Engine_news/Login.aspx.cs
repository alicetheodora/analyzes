using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Engine_news
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
           
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                con.Open();
                //iau datele utilizatorului
                string checkuser = "select count(*) from UserData where UserName= '" + TextBoxUserName.Text + "'";

                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    con.Open();
                    string checkPasswordQuery = "select password from UserData where UserName= '" + TextBoxUserName.Text + "'";
                    SqlCommand passComm = new SqlCommand(checkPasswordQuery, con);
                    string password = passComm.ExecuteScalar().ToString().Replace(" ", "");

                    //verify pass
                    if(password==TextBoxPassword.Text)
                    {
                    Session["New"] = TextBoxUserName.Text;
                    Response.Write("Password is correct!");
                    Response.Redirect("Users.aspx");

                    }
                    else
                    { Response.Write("Password is not correct!"); }
                }
                else
                {
                Response.Write("Username is not correct!");
                }

        }
    }
}