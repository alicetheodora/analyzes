using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace Engine_news
{
    public partial class User_data : System.Web.UI.Page
    {

        public int Id { get; set; }
        public string UserName { get; set; }
        public string First_name { get; set; }
        public string Last_name{ get; set; }
        public int CNP { get; set; }
        public int Birth_Date { get; set; }
        public int Birth_Month { get; set; }
        public int Birth_Year { get; set; }
        public int Phone { get; set; }
        public string Email { get; set; }
        public int Password { get; set; }
        public string Address { get; set; }
        public string Country { get; set; }
        public string Gender { get; set; }
        public string Status { get; set; }


        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}