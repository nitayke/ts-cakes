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
            if (userLogic.AddNewUser(this.username.Text, this.email.Text, this.password.Text))
            {
                Response.Redirect("products.aspx");
                this.wrong_signup.Text = "";
            }
            else
            {
                this.wrong_signup.Text = "שם המשתמש נמצא בשימוש. נא לבחור אחד אחר.";
            }
        }
    }
}