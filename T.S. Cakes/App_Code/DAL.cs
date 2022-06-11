using System;
using System.Data;
using System.Data.OleDb;
using System.Web;

namespace T.S.Cakes
{
    public class DAL
    {
        OleDbConnection myConnection;
        const string FILE_NAME = "users.accdb";

        public DAL()
        {
            string location = HttpContext.Current.Server.MapPath("~/App_Data/" + FILE_NAME);
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; data source=" + location;
            myConnection = new OleDbConnection(connectionString);
        }

        public DataSet excuteQuery(string sql)
        {
            DataSet dataset = new DataSet();
            try
            {
                myConnection.Open();
                string sSql = sql;
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();
                adapter.SelectCommand = myCmd;
                adapter.Fill(dataset);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                myConnection.Close();
            }
            return dataset;
        }
    }
}