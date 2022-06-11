using System;
using T.S.Cakes.App_Code;

namespace T.S.Cakes
{
    public partial class update_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Change_Password(object sender, EventArgs e)
        {
            UserLogic userLogic = new UserLogic();
            if (userLogic.UserExists(username.Text))
            {
                userLogic.UpdatePassword(password.Text, username.Text);
                wrong_update.Text = "הסיסמה עודכנה בהצלחה!";
            }
            else
                wrong_update.Text = "שם המשתמש אינו קיים!";
        }
        protected void Change_Email(object sender, EventArgs e)
        {
            UserLogic userLogic = new UserLogic();
            if (userLogic.UserExists(username.Text))
            {
                userLogic.UpdateEmail(email.Text, username.Text);
                wrong_update.Text = "האימייל עודכן בהצלחה!";
            }
            else
                wrong_update.Text = "שם המשתמש אינו קיים!";
        }
        protected void Delete_Account(object sender, EventArgs e)
        {
            UserLogic userLogic = new UserLogic();
            if (userLogic.UserExists(username.Text))
            {
                userLogic.DeleteAccount(username.Text);
                wrong_update.Text = "החשבון נמחק בהצלחה!";
            }
            else
                wrong_update.Text = "שם המשתמש אינו קיים!";
        }
    }
}