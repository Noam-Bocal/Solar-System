using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master
{
    public partial class Registration : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string uName = Request.Form["uName"];
            string fName = Request.Form["fName"];
            string lName = Request.Form["lName"];
            string email = Request.Form["email"];
            string gender = Request.Form["gender"];
            string prefix = Request.Form["prefix"];
            string phone = Request.Form["phone"];
            string city = Request.Form["city"];
            string yearBorn = Request.Form["yearBorn"];
            string hobby = Request.Form["hobby"];
            string pw = Request.Form["pw"];
            char hob1 = 'F';
            char hob2 = 'F';
            char hob3 = 'F';
            char hob4 = 'F';
            char hob5 = 'F';

            if (User_Exists(uName, pw))
            {
                msg = "<p style='color:red;'>User with the same username and password already exists</p>";
                return;
            }

            if (hobby != null)
            {
                hobby = Request.Form["hobby"].ToString();
                if (hobby.Contains('1')) hob1 = 'T';
                if (hobby.Contains('2')) hob2 = 'T';
                if (hobby.Contains('3')) hob3 = 'T';
                if (hobby.Contains('4')) hob4 = 'T';
                if (hobby.Contains('5')) hob5 = 'T';
            }

            string fileName = "usersDB.mdf";
            string tableName = "usersTbl";
            string sql = $"INSERT INTO {tableName} (uName, fName, lName, email, gender, city, YearBorn, prefix, phone, Reading, Sports, Traveling, Gardening, Cooking, pw)" +
                       $"VALUES ('{uName}', '{fName}', '{lName}', '{email}', '{gender}', '{city}', {yearBorn}, '{prefix}', '{phone}', '{hob1}', '{hob2}', '{hob3}', '{hob4}', '{hob5}', '{pw}')";

            Helper.DoQuery(fileName, sql);
            Response.Redirect("Login.aspx");
        }

        private bool User_Exists(string username, string password)
        {
            string fileName = "usersDB.mdf";
            string tableName = "usersTbl";
            string sql = $"SELECT * FROM {tableName} WHERE uName = '{username}' AND pw = '{password}'";
            return Helper.IsExist(fileName, sql);
        }
    }
}
