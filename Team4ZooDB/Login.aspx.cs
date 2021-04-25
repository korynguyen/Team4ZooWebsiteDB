using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Web.Security;
using System.IO;
namespace Team4ZooDB
{
    public partial class Login : System.Web.UI.Page
    {
        string connection = "Server=team4zoodb.mysql.database.azure.com; Port=3306; Database=zoo; Uid=Team4@team4zoodb; Pwd=4thTeamRocks; SslMode=Preferred; Convert Zero Datetime=True";
        //string connection = File.ReadAllText(@".\Members\General\connection.txt");
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (MySqlConnection sqlConnection = new MySqlConnection(connection))
            {
                sqlConnection.Open();
                MySqlCommand sqlCmd = new MySqlCommand("SELECT * FROM zoo.employee WHERE Email = @User AND Password = MD5(@password)", sqlConnection); /*AND authentication_string = PASSWORD(@password)*/
                sqlCmd.CommandType = System.Data.CommandType.Text;
                string ID = String.Format("{0}", Request.Form["Username"]);
                string passValue = String.Format("{0}", Request.Form["Password"]);
                sqlCmd.Parameters.AddWithValue("User", ID);
                sqlCmd.Parameters.AddWithValue("password", passValue);
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlCmd);
                MySqlDataReader row;
                row = sqlCmd.ExecuteReader();
                string username, role;
                if (row.HasRows)
                {
                    while (row.Read())
                    {
                        username = row["Email"].ToString();
                        role = row["Role"].ToString();

                        //Session["User"] = GetUserObject(ID, passValue);

                        if (role == "Employee")
                        {
                            FormsAuthentication.SetAuthCookie(username, false);
                            //Session["username"] = username;
                            //Session["role"] = role;
                            Response.Redirect("~/Members/EmployeeHome.aspx");
                            //Response.Redirect(string.Format("~/Members/EmployeeHome.aspx", username));
                        }
                        else
                        {
                            FormsAuthentication.SetAuthCookie(username, false);
                            //Session["username"] = username;
                            //Session["role"] = role;
                            Response.Redirect("~/Members/SupervisorHome.aspx");
                            //Response.Redirect(string.Format("~/Members/SupervisorHome.aspx", username));
                        }


                        //Response.Redirect("~/Members/EmployeeHome.aspx");
                        // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + username + " (" + role + ") has logged in" + "');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Wrong Username or Password" + "');", true);
                    // WrongLabel.Visible = true;
                }
                sqlConnection.Close();
            }
        }
    }
}