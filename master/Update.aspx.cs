using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master
{
    public partial class Update : System.Web.UI.Page
    {
        public string sqlUpdate;
        public string msg;
        public string sqlMsg;
        public string sqlSelect;
        public string sqlSelect2;
        public string uName;
        public string fName;
        public string lName;
        public string email;
        public string gender;
        public string cityStr = "";
        public string city;
        public string yearBorn = "";
        public string prefix;
        public string phone;
        public string hob1;
        public string hob2;
        public string hob3;
        public string hob4;
        public string hob5;
        public string pw;

        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "usersDB.mdf";
            string tableName = "usersTbl";
            uName = Session["uName"].ToString();

            if (uName == "Guest")
            {
                msg = "You are not registered";
                Response.Redirect("Beginning.aspx");
            }

            sqlSelect = $"SELECT * FROM {tableName} WHERE uName='{uName}' ";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
            int length = table.Rows.Count;

            if (length == 0)
            {
                msg = "Username not found";
                Response.Redirect("Beginning.aspx");
            }
            else
            {
                fName = GetSafeString(table.Rows[0]["fName"]);
                lName = GetSafeString(table.Rows[0]["lName"]);
                email = GetSafeString(table.Rows[0]["email"]);
                gender = GetSafeString(table.Rows[0]["gender"]);
                city = GetSafeString(table.Rows[0]["city"]);
                prefix = GetSafeString(table.Rows[0]["prefix"]);
                phone = GetSafeString(table.Rows[0]["phone"]);
                hob1 = GetSafeString(table.Rows[0]["Reading"]);
                hob2 = GetSafeString(table.Rows[0]["Sports"]);
                hob3 = GetSafeString(table.Rows[0]["Traveling"]);
                hob4 = GetSafeString(table.Rows[0]["Gardening"]);
                hob5 = GetSafeString(table.Rows[0]["Cooking"]);
                pw = GetSafeString(table.Rows[0]["pw"]);

                int yrBorn = Convert.ToInt16(table.Rows[0]["yearBorn"]);
                int year = DateTime.Now.Year;
                int from = year - 60;
                int to = year - 5;

                for (int i = from; i <= to; i++)
                {
                    if (i == yrBorn)
                        yearBorn += $"<option value='{i}' selected>{i}</option>";
                    else
                        yearBorn += $"<option value='{i}'>{i}</option>";
                }

                string[] cities = { "Haifa", "Tel Aviv", "Hadera", "Netanya", "Eilat" };
                foreach (string cityItem in cities)
                {
                    if (cityItem == city)
                        cityStr += $"<option value='{cityItem}' selected>{cityItem}</option>";
                    else
                        cityStr += $"<option value='{cityItem}'>{cityItem}</option>";
                }

                if (this.IsPostBack)
                {
                    fName = Request.Form["fName"];
                    lName = Request.Form["lName"];
                    email = Request.Form["email"];
                    gender = Request.Form["gender"];
                    prefix = Request.Form["prefix"];
                    phone = Request.Form["phone"];
                    city = Request.Form["city"];
                    yearBorn = Request.Form["yearBorn"];
                    string hobby = Request.Form["hobby"];
                    pw = Request.Form["pw"];

                    char hob1Char = 'F';
                    char hob2Char = 'F';
                    char hob3Char = 'F';
                    char hob4Char = 'F';
                    char hob5Char = 'F';
                    if (hobby != null)
                    {
                        hobby = Request.Form["hobby"].ToString();
                        if (hobby.Contains('1')) hob1Char = 'T';
                        if (hobby.Contains('2')) hob2Char = 'T';
                        if (hobby.Contains('3')) hob3Char = 'T';
                        if (hobby.Contains('4')) hob4Char = 'T';
                        if (hobby.Contains('5')) hob5Char = 'T';
                    }

                    sqlUpdate = "UPDATE usersTbl SET ";
                    sqlUpdate += $"fName = N'{fName}', lName = N'{lName}', email = N'{email}', gender = N'{gender}', city = N'{city}', ";
                    sqlUpdate += $"yearBorn = {yearBorn}, prefix = '{prefix}', phone = '{phone}', Reading = '{hob1Char}', Sports = '{hob2Char}', ";
                    sqlUpdate += $"Traveling = '{hob3Char}', Gardening = '{hob4Char}', Cooking = '{hob5Char}', pw = N'{pw}' ";
                    sqlUpdate += $"WHERE uName = '{uName}'";

                    sqlMsg = sqlUpdate;

                    Helper.DoQuery(fileName, sqlUpdate);
                    msg = "Success";

                }
            }
        }

        private string GetSafeString(object obj)
        {
            return obj != null ? obj.ToString().Trim() : string.Empty;
        }
    }
}
