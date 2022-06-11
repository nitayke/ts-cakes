using System;
using T.S.Cakes.App_Code;

namespace T.S.Cakes
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login_Event(object sender, EventArgs e)
        {
            UserLogic userLogic = new UserLogic();
            bool isUser = userLogic.Login(this.username.Text, this.password.Text);
            if (!isUser)
                this.wrong_login.Text = "שם המשתמש או הסיסמה אינם נכונים.";
            else
            {
                this.wrong_login.Text = "";
                Response.Redirect("products.aspx");
            }
        }
    }
}