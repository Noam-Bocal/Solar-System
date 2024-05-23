using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace master
{
    public partial class SelectedGmailAndCity : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sqlSelect = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg = "<div> style='text-align:center;'>";
                msg += "<h3>No permission</h3>";
                msg += "<a href='Beginning.aspx'>[Continue]";
                msg += "</div>";
            }
            else
            {
                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";
                sqlSelect = "SELECT * FROM " + tableName + " WHERE email LIKE '%@gmail.com' AND (city='Tel Aviv' OR city='Heifa')";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "There are no users whose use gmail domain and live in Tel Aviv or Heifa";
                else
                {
                    st += "<tr>";
                    st += "<th>User Name</th>";
                    st += "<th>First Name</th>";
                    st += "<th>Last Name</th>";
                    st += "<th>Email</th>";
                    st += "<th>Year Born</th>";
                    st += "<th>Gender</th>";
                    st += "<th>Phone</th>";
                    st += "<th>City</th>";
                    st += "<th>Reading</th>";
                    st += "<th>Sports</th>";
                    st += "<th>Traveling</th>";
                    st += "<th>Gardening</th>";
                    st += "<th>Traveling</th>";
                    st += "<th>Password</th>";
                    st += "</tr>";

                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += $"<td>{table.Rows[i]["uName"]}</td>";
                        st += $"<td>{table.Rows[i]["fName"]}</td>";
                        st += $"<td>{table.Rows[i]["lName"]}</td>";
                        st += $"<td>{table.Rows[i]["email"]}</td>";
                        st += $"<td>{table.Rows[i]["yearBorn"]}</td>";
                        st += $"<td>{table.Rows[i]["gender"]}</td>";
                        st += $"<td>{table.Rows[i]["prefix"]} - {table.Rows[i]["phone"]}</td>";
                        st += $"<td>{table.Rows[i]["city"]}</td>";
                        st += $"<td>{table.Rows[i]["Reading"]}</td>";
                        st += $"<td>{table.Rows[i]["Sports"]}</td>";
                        st += $"<td>{table.Rows[i]["Traveling"]}</td>";
                        st += $"<td>{table.Rows[i]["Gardening"]}</td>";
                        st += $"<td>{table.Rows[i]["Cooking"]}</td>";
                        st += $"<td>{table.Rows[i]["pw"]}</td>";
                        st += "</tr>";
                    }

                    msg = "Users found: " + length + " people";
                }
            }
        }
    }
}