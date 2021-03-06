using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace Team4ZooDB.Members.FormsEmployee
{
    public partial class GiftShop : System.Web.UI.Page
    {
        string connection = System.IO.File.ReadAllText(System.Web.HttpContext.Current.Server.MapPath("connection.txt"));

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            //Specify and connect to the DB
            using (MySqlConnection sqlConnection = new MySqlConnection(connection))
            {
                sqlConnection.Open();

                string sql = "INSERT INTO giftshop (ShopID) VALUES (" + GiftshopID.Text + ")";

                MySqlCommand sqlCmd = new MySqlCommand(sql, sqlConnection);

                sqlCmd.ExecuteNonQuery(); // execute query
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Giftshop added." + "');", true); // pop up message when it is done submitting
                sqlConnection.Close();
            }
        }

        protected void GetButton_Click(object sender, EventArgs e)
        {
            using (MySqlConnection sqlConnection = new MySqlConnection(connection))
            {
                try
                {
                    sqlConnection.Open();

                    string sql = "SELECT * FROM giftshop;";

                    MySqlCommand sqlCmd = new MySqlCommand(sql, sqlConnection);//(@s_ID, @s_FName, @s_MInitial, @s_LName, @s_StartDate, @s_Addr, @s_Phone, @s_Sex, @s_DOB)
                    MySqlDataReader rdr = sqlCmd.ExecuteReader();

                    //starts table element and adds header row 
                    string dynamicTable = "<table cellpadding='5' cellspacing='0' style='border: 1px solid #ccc;font-size: 9pt;'><tr>";
                    //adding header row of table
                    dynamicTable += "<th>Giftshop ID</th></tr>";

                    while (rdr.Read())
                    {
                        //adding row to table
                        dynamicTable += "<tr>";
                        dynamicTable += "<td style=\"margin-left:20px\">" + rdr[0].ToString() + "</td>";

                        dynamicTable += "</tr>";

                    }


                    dynamicTable += "</table>";

                    //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Form Submitted" + "');", true); // pop up message when it is done submitting
                    sqlConnection.Close();

                    //adding the table to the webpage
                    reportTable.Text = dynamicTable;

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                }
            }
        }
    }
}