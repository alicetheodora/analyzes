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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { //la incarcarea paginnii,vreau sa salvez un user in tabel
            //isPostBack=functie care arata dc pagina abia a fost incarcata sau a fost apasat vreun buton care a modificat ceva
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                con.Open();
                //iau datele utilizatorului
                string checkuser = "select count(*) from UserData where UserName= '" + TextBoxUN.Text + "'";

                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    Response.Write("User already exists");
                }

                con.Close();
            }

        }

        protected void Button_Submit(object sender, EventArgs e)
        {

            try
            {
             

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                con.Open();
                //inserez in bd datele utiliz.
                string insertQuery = "insert into UserData (UserName,First_name,Last_name,CNP,Birth_Date," +
                   "Birth_Month,Birth_Year,Gender,Address,Phone,Email,Password,Country,Tip) " +
                   "values (@Uname,@f_name,@l_name,@cnp,@b_day,@b_month,@b_year,@gen,@address,@phone, @email,@password,@country,@tip)";

                SqlCommand com = new SqlCommand(insertQuery, con);

                com.Parameters.AddWithValue("@Uname",TextBoxUN.Text);
                com.Parameters.AddWithValue("@f_name", TextBoxFN.Text);
                com.Parameters.AddWithValue("@l_name", TextBoxLN.Text);
                com.Parameters.AddWithValue("@cnp", TextBoxCNP.Text);
                com.Parameters.AddWithValue("@b_day", TextBoxBD.Text);
                com.Parameters.AddWithValue("@b_month", TextBoxBM.Text);
                com.Parameters.AddWithValue("@b_year", TextBoxBY.Text);
                com.Parameters.AddWithValue("@gen", DropDownListGender.SelectedItem.ToString());
                com.Parameters.AddWithValue("@address", TextBoxAddress.Text);
                com.Parameters.AddWithValue("@phone", TextBoxPhone.Text);
                com.Parameters.AddWithValue("@email",TextBoxEmail.Text);
                com.Parameters.AddWithValue("@password", TextBoxPass.Text);
                com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());
                com.Parameters.AddWithValue("@tip", DropDownListType.SelectedItem.ToString());

                com.ExecuteNonQuery();

                Response.Redirect("Admin.aspx");
                Response.Write("Registartion was successfull!!!");


                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }


            }

  
    }
}