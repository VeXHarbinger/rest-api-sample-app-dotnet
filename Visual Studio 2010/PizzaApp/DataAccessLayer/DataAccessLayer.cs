using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SQLite;

namespace PizzaApp
{
    public class DataAccessLayer
    {
        private string ConnectionString
        {
            get
            {
                ConnectionStringSettingsCollection ConnectionStringSetting = ConfigurationManager.ConnectionStrings;
                return ConnectionStringSetting["ConnectionString"].ConnectionString;
            }
        }

        public int NumberOfRows(string sqliteQuerySelect, SQLiteDataAdapter dataAdapterSQLite)
        {
            int rows = 0;            
            try
            {
                DataTable datTable = new DataTable();
                using (SQLiteConnection connectionSQLite = new SQLiteConnection(ConnectionString))
                {
                    dataAdapterSQLite.SelectCommand.CommandText = sqliteQuerySelect;
                    dataAdapterSQLite.SelectCommand.Connection = connectionSQLite;
                    connectionSQLite.Open();
                    rows = dataAdapterSQLite.Fill(datTable);
                }
            }
            catch {}
            return rows;
        }

        public DataTable Select(string sqliteQuerySelect, SQLiteDataAdapter dataAdapterSQLite)
        {
           DataTable datTable = new DataTable();
           try
           {
               using (SQLiteConnection connectionSQLite = new SQLiteConnection(ConnectionString))
               {
                   dataAdapterSQLite.SelectCommand.CommandText = sqliteQuerySelect;
                   dataAdapterSQLite.SelectCommand.Connection = connectionSQLite;
                   connectionSQLite.Open();
                   dataAdapterSQLite.Fill(datTable);
               }
           }
           catch (Exception ex)
           {
               throw ex;
           }
           return datTable;
        }


        public int Insert(string sqliteQueryInsert, SQLiteDataAdapter sqliteDataAdapterInsert)
        {
            int rowsAffacted = 0;
            try
            {
                using (SQLiteConnection connectionSQLite = new SQLiteConnection(ConnectionString))
                {
                    sqliteDataAdapterInsert.InsertCommand.CommandText = sqliteQueryInsert;
                    sqliteDataAdapterInsert.InsertCommand.Connection = connectionSQLite;
                    connectionSQLite.Open();
                    rowsAffacted = sqliteDataAdapterInsert.InsertCommand.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return rowsAffacted;
        }

        public int Update(string sqliteQueryUpdate, SQLiteDataAdapter sqliteDataAdapterUpdate)
        {
            int rowsAffacted = 0;

            try
            {
                using (SQLiteConnection connectionSQLite = new SQLiteConnection(ConnectionString))
                {
                    sqliteDataAdapterUpdate.UpdateCommand.CommandText = sqliteQueryUpdate;
                    sqliteDataAdapterUpdate.UpdateCommand.Connection = connectionSQLite;
                    connectionSQLite.Open();
                    rowsAffacted = sqliteDataAdapterUpdate.UpdateCommand.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return rowsAffacted;
        }

        public int Delete(string sqliteQueryDelete, SQLiteDataAdapter sqliteDataAdapterDelete)
        {
            int rowsAffacted = 0;

            try
            {
                using (SQLiteConnection connectionSQLite = new SQLiteConnection(ConnectionString))
                {
                    sqliteDataAdapterDelete.DeleteCommand.CommandText = sqliteQueryDelete;
                    sqliteDataAdapterDelete.DeleteCommand.Connection = connectionSQLite;
                    connectionSQLite.Open();
                    rowsAffacted = sqliteDataAdapterDelete.DeleteCommand.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return rowsAffacted;
        }       
    }
}
