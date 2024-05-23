using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg = "<h3>Hello ";
            loginMsg += Session["userFName"].ToString();
            loginMsg += "</h3>";

            if (Session["admin"].ToString() == "yes")
            {
                loginMsg += "<div class='nav-link'><a href='ManegerPage.aspx'>Managing page</a></div>";
                loginMsg += "<div class='nav-link'><a href='Logout.aspx'>Logout</a></div>";
            }
            else if (Session["uName"].ToString() == "Guest")
            {
                loginMsg += "<div class='nav-link'><a href='Registration.aspx'>Sign up</a></div>";
                loginMsg += "<div class='nav-link'><a href='Login.aspx'>Login</a></div>";
            }
            else
            {
                loginMsg += "<div class='nav-link'><a href='Update.aspx'>Update data</a></div>";
                loginMsg += "<div class='nav-link'><a href='Logout.aspx'>Logout</a></div>";
            }
        }
    }
}
