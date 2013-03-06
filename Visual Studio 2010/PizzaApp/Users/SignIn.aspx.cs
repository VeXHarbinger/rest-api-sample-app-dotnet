using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Web.Security;
using System.Data.SQLite;


namespace PizzaApp
{
    public partial class SignIn : System.Web.UI.Page
    {
        private DataAccessLayer dataAccessObject;  

        private DataTable GetUser(string email)
        {
            DataTable datTable = new DataTable();
            StringBuilder sqliteQuerySelect = new StringBuilder();
            sqliteQuerySelect.Append("SELECT ");
            sqliteQuerySelect.Append("id, ");
            sqliteQuerySelect.Append("email, ");
            sqliteQuerySelect.Append("encrypted_password, ");
            sqliteQuerySelect.Append("sign_in_count ");
            sqliteQuerySelect.Append("FROM users ");
            sqliteQuerySelect.Append("WHERE email = @email");
            SQLiteDataAdapter sqliteDataAdapterSelect = new SQLiteDataAdapter();
            sqliteDataAdapterSelect.SelectCommand = new SQLiteCommand();
            sqliteDataAdapterSelect.SelectCommand.Parameters.AddWithValue("@email", email);
            dataAccessObject = new DataAccessLayer();
            datTable = dataAccessObject.Select(sqliteQuerySelect.ToString(), sqliteDataAdapterSelect);
            return datTable;
        }

        private bool IsPasswordValid(string email, string password)
        {
            bool isValid = false;
            string decryptedPassword = null;
            DataTable datTable = GetUser(email);
            if (datTable != null && datTable.Rows.Count > 0)
            {
                var distinctRows = from DataRow dRow in datTable.Rows
                                   where dRow.Field<string>("email") == email
                                   select new { column1 = dRow["encrypted_password"] };
                if (distinctRows != null)
                {
                    foreach (var row in distinctRows)
                    {
                        string encryptedPassword = Convert.ToString(row.column1);
                        decryptedPassword = Secure.Decrypt(encryptedPassword);
                        break;
                    }
                }
                if (password.Trim().Equals(decryptedPassword.Trim()))
                {
                    isValid = true;
                }
            }
            return isValid;
        }
        
        private int GetSignedInUserSignInCount(string email)
        {
            int signInCount = 0;
            DataTable datTable = GetUser(email);
            if (datTable != null && datTable.Rows.Count > 0)
            {
                var distinctRows = from DataRow dRow in datTable.Rows
                                   where dRow.Field<string>("email") == email
                                   select new { column1 = dRow["sign_in_count"] };
                if (distinctRows != null)
                {
                    foreach (var row in distinctRows)
                    {
                        signInCount = Convert.ToInt32(row.column1);
                        break;
                    }
                }
            }
            return signInCount;
        }

        private bool Update(string email)
        {
            bool isSuccess = false;

            int rowsAffacted = 0;
            int signInCount = 0;

            DataTable datTable = GetUser(email);

            if (datTable != null && datTable.Rows.Count > 0)
            {
                var distinctRows = from DataRow dRow in datTable.Rows
                                   where dRow.Field<string>("email") == email
                                   select new { column1 = dRow["sign_in_count"] };
                if (distinctRows != null)
                {
                    foreach (var row in distinctRows)
                    {
                        signInCount = Convert.ToInt32(row.column1.ToString());
                        signInCount++;
                        break;
                    }
                }
                StringBuilder sqliteQueryUpdate = new StringBuilder();
                sqliteQueryUpdate.Append("UPDATE Users ");
                sqliteQueryUpdate.Append("SET ");
                sqliteQueryUpdate.Append("sign_in_count = @sign_in_count ");
                sqliteQueryUpdate.Append("WHERE ");
                sqliteQueryUpdate.Append("email = @email");
                SQLiteDataAdapter sqliteDataAdapterUpdate = new SQLiteDataAdapter();
                sqliteDataAdapterUpdate.UpdateCommand = new SQLiteCommand();
                sqliteDataAdapterUpdate.UpdateCommand.Parameters.AddWithValue("@email", email);
                sqliteDataAdapterUpdate.UpdateCommand.Parameters.AddWithValue("@sign_in_count", signInCount);
                dataAccessObject = new DataAccessLayer();
                rowsAffacted = dataAccessObject.Update(sqliteQueryUpdate.ToString(), sqliteDataAdapterUpdate);
            }
            if (rowsAffacted > 0)
            {
                isSuccess = true;
            }
            return isSuccess;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            var email = TextBoxEmail.Text.Trim();
            var password = TextBoxPassword.Text.Trim();
            bool isValid = IsPasswordValid(email, password);
            if (isValid)
            {
                int signInCount = GetSignedInUserSignInCount(email);
                if (signInCount > 0)
                {
                    bool isSuccess = Update(email);
                }
                FormsAuthentication.RedirectFromLoginPage(TextBoxEmail.Text.Trim(), CheckBoxPersist.Checked);
            }
            else
            {
                divAlertMessage.Visible = true;
                divAlertMessage.Attributes["class"] = "alert fade in alert-error";
                labelAlertMessage.InnerText = "Invalid Email or Password.";
            }
        }        
    }
}