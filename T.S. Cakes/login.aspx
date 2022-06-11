<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="T.S.Cakes.login" %>

<!DOCTYPE html>

<html dir="rtl">
<head runat="server">
    <title>כניסה לאתר T.S Cakes</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <h1>כניסה לאתר T.S Cakes</h1>
    <div class="form-container">
        <form id="login_form" runat="server" class="form">
            <img src="images/logo.png" class="form-logo"/>
            <div>
                <asp:Label AssociatedControlId="username" Text="שם משתמש:" runat="server" />
                <asp:TextBox runat="server" ID="username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="empty_username"
                    ControlToValidate="username"
                    runat="server"
                    ErrorMessage="לא הוזן שם משתמש"
                    Display="Dynamic"
                    Style="color: red">
                </asp:RequiredFieldValidator>
            </div>
        
            <div>
                <asp:Label AssociatedControlId="password" Text="סיסמה:" runat="server"/>
                <asp:TextBox runat="server" ID="password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="empty_password"
                    ControlToValidate="password"
                    runat="server"
                    ErrorMessage="לא הוזנה סיסמה"
                    Display="Dynamic"
                    Style="color: red">
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <asp:Label runat="server" ID="wrong_login"></asp:Label>
            <asp:Button runat="server" ID="submit_signup" Text="התחברות" CssClass="sumbit" OnClick="Login_Event" />
            <br />
            <a style="color: black" href="signup.aspx">אין לך חשבון? הירשם כאן</a>
        </form>
    </div>
</body>
</html>
