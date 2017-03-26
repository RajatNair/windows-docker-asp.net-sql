using Npgsql;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DockerSampleWebApplication
{
    public partial class Database : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void checkDBConnection_Click(object sender, EventArgs e)
        {
            outputConsole.Text = String.Empty;
            if (dbConnectionProvider.SelectedValue == "MSSQL")
            {
                checkSQLDbConnection(connectionString.Text);
            }
            else
            {
                checkPostgresConnection(connectionString.Text);
            }
        }

        private Boolean checkSQLDbConnection(string connectionString)
        {
            Boolean connectionStatus = false;
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                }
                writeToConsole("DB Connection Successful");
            }
            catch (Exception ex)
            {
                writeToConsole(ex.Message);
            }
            return connectionStatus;
        }

        private Boolean checkPostgresConnection(string connectionString)
        {
            Boolean connectionStatus = false;
            try
            {
                using (var conn = new NpgsqlConnection(connectionString))
                {
                    conn.Open();
                }
                writeToConsole("DB Connection Successful");
            }
            catch (Exception ex)
            {
                writeToConsole(ex.Message);
            }
            return connectionStatus;
        }

        private void writeToConsole(string message)
        {
            outputConsole.Text = $"{outputConsole.Text}\n{message}";
        }

        // Network protocol codes
        // dbnmpntw - Named Pipes
        // dbmssocn - TCP/IP
        // dbmslpcn - Shared Memory
        // dbmsspxn - SPX/IPX
        // dbmsrpcn - Windows RPC
        protected void dbConnectionProvider_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dbConnectionProvider.SelectedValue == "POSTGRES")
                connectionString.Text = "Server=127.0.0.1;Port=5432;Database=postgres;User Id=postgres; Password=postgres;";
            else
                connectionString.Text = "Data Source=190.190.200.100,1433;Network Library=DBMSSOCN;Initial Catalog=myDataBase;User ID=myUsername;Password=myPassword;";
        }
    }
}