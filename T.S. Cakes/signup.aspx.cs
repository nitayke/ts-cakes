using System;
using T.S.Cakes.App_Code;

namespace T.S.Cakes
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Signup_Event(object sender, EventArgs e)
        {
            UserLogic userLogic = new UserLogic();
            if (userLogic.UserExists(username.Text))
                wrong_signup.Text = "שם המשתמש נמצא בשימוש. נא לבחור אחד אחר.";
            else
            {
                userLogic.AddNewUser(username.Text, email.Text, password.Text);
                Response.Redirect("products.aspx");
                wrong_signup.Text = "";
            }
        }
    }
}