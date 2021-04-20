using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace TicketForm
{
    public partial class TicketForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connection = "Server=team4zoodb.mysql.database.azure.com; Port=3306; Database=zoo; Uid=Team4@team4zoodb; Pwd=4thTeamRocks; SslMode=Preferred;";

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //Specify and connect to the DB
            using (MySqlConnection sqlConnection = new MySqlConnection(connection))
            {
                string datenodashes = date.Text.Substring(0, 4) + date.Text.Substring(5, 2) + date.Text.Substring(8, 2);

            
                string sql = "INSERT INTO ticket(Price, Date, `Ticket Booth_BoothID`, Member_Email) VALUES("+ price.Text + ", " + datenodashes + ", " + boothid.Text + ", '" + email.Text + "');";


                sqlConnection.Open();
                // Call the stored routine submitemployee (I custom created it inside mySQL) which will insert all the info from the webform. The parameter are in the comment below
                MySqlCommand sqlCmd = new MySqlCommand(sql, sqlConnection);//(@s_ID, @s_FName, @s_MInitial, @s_LName, @s_StartDate, @s_Addr, @s_Phone, @s_Sex, @s_DOB)


                sqlCmd.ExecuteNonQuery(); // execute query
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Ticket Inserted" + "');", true); // pop up message when it is done submitting
                sqlConnection.Close();
            }
        }
    }
}
