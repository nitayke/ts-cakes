using System;
using System.Data;

namespace T.S.Cakes.App_Code
{
    public class UserLogic
    {
        DAL dal = new DAL();

        public bool AddNewUser(string username, string email, string password)
        {
            string sql = "INSERT INTO USERS VALUES('" + username + "','" + password + "', '" + email + "')";
            try
            {
                dal.excuteQuery(sql);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool Login(string username, string password)
        {
            string sql = "SELECT USERNAME, PASSWORD FROM USERS WHERE USERNAME LIKE '" + username + "' AND PASSWORD LIKE '" + password + "'";
            DataSet ds = dal.excuteQuery(sql);
            if (ds.Tables != null && ds.Tables.Count > 0)
            {
                DataTable users = ds.Tables[0];
                if (users != null && users.Rows != null && users.Rows.Count == 1)
                {
                    return true;
                }
            }
            return false;
        }
        public bool UserExists(string username)
        {
            string sql = "SELECT USERNAME FROM USERS WHERE USERNAME LIKE '" + username + "';";
            DataSet ds = dal.excuteQuery(sql);
            if (ds.Tables != null && ds.Tables.Count > 0)
            {
                DataTable users = ds.Tables[0];
                if (users != null && users.Rows != null && users.Rows.Count == 1)
                {
                    return true;
                }
            }
            return false;
        }
        public void UpdatePassword(string password, string username)
        {
            string sql = "UPDATE USERS SET [PASSWORD] = '" + password + "' WHERE USERNAME = '" + username + "';";
            dal.excuteQuery(sql);
        }
        public void UpdateEmail(string email, string username)
        {
            string sql = "UPDATE USERS SET [EMAIL] = '" + email + "' WHERE USERNAME LIKE '" + username + "';";
            dal.excuteQuery(sql);
        }
        public void DeleteAccount(string username)
        {
            string sql = "DELETE FROM USERS WHERE USERNAME LIKE '" + username + "';";
            dal.excuteQuery(sql);
        }
    }
}