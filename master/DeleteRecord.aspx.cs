using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master
{
    public partial class DeleteRecord : System.Web.UI.Page
    {
        public string msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg = "<div style='text-align:center;'>";
                msg += "<h3>No permission</h3>";
                msg += "<a href='Beginning.aspx'>[Continue]";
                msg += "</div>";
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";
                string uName = Request.QueryString["uName"].ToString().Trim();
                string sqlDelete = $"DELETE FROM {tableName} WHERE uName='{uName}'";

                Helper.DoQuery(fileName, sqlDelete);
                Response.Redirect("DeleteUser.aspx");
            }
        }
    }
}