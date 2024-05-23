using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Xml.Linq;

namespace master
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        public string msg = "", sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string mName = Request.Form["mName"];
                string mPw = Request.Form["mPw"];

                string fileName = "usersDB.mdf";
                string tableName = "adminTbl";
                sqlLogin = "SELECT * FROM " + tableName + " WHERE mName = '" + mName + "' AND mPw = '" + mPw +  "'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                int length = table.Rows.Count;
                if(length == 0)
                {
                    msg += "<div style='text-align:center;'>";
                    msg += "<h3>No permission</h3>";
                    msg += "<a href='Beginning.aspx'>[Continue]";
                    msg += "</div>";
                }
                else
                {
                    Session["admin"] = "yes";
                    Session["userFName"] = "Admin";
                    Response.Redirect("SolarSystem.aspx");
                }
            }
        }
    }
}