<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="T.S.Cakes.signup" %>

<!DOCTYPE html>

<html dir="rtl">
<head runat="server">
    <title>הרשמה לאתר T.S Cakes</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <h1>הרשמה לאתר T.S Cakes</h1>
    <div class="form-container">
        <form id="signup_form" runat="server" class="form">
            <img src="images/logo.png" class="form-logo"/>
            <div>
                <asp:Label AssociatedControlId="email" Text="אימייל:" runat="server" />
                <asp:TextBox runat="server" ID="email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="empty_email"
                    runat="server"
                    ErrorMessage="לא הוזן אימייל"
                    ControlToValidate="email"
                    Display="Dynamic"
                    Style="color: red">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="valid_email"
                    ControlToValidate="email"
                    runat="server" 
                    ErrorMessage="האימייל שהוקלד לא תקין"
                    ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"
                    Display="Dynamic"
                    Style="color: red">
                </asp:RegularExpressionValidator>
            </div>

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
                <asp:RegularExpressionValidator ID="valid_username"
                    ControlToValidate="username"
                    runat="server" 
                    ErrorMessage="שם המשתמש שהוקלד צריך להיות באורך 5-15 תווים, עם אותיות באנגלית ומספרים בלבד."
                    Display="Dynamic"
                    Style="color: red"
                    ValidationExpression="^[a-zA-Z0-9]{5,15}$">
                </asp:RegularExpressionValidator>
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
                <asp:RegularExpressionValidator ID="valid_password"
                    ControlToValidate="password"
                    runat="server" 
                    ErrorMessage="הסיסמה צריכה להיות באורך 8-20 תווים, עם לפחות אות אחת ומספר אחד."
                    Display="Dynamic"
                    Style="color: red"
                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,20}$">
                </asp:RegularExpressionValidator>
            </div>

            <div>
                <asp:Label AssociatedControlId="password_again" Text="אימות סיסמה:" runat="server" />
                <asp:TextBox runat="server" ID="password_again" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="empty_password_again"
                    ControlToValidate="password_again"
                    runat="server"
                    ErrorMessage="לא הוזנה סיסמה לאימות"
                    Display="Dynamic"
                    Style="color: red">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="password_compare" 
                    runat="server"
                    ControlToValidate="password_again"
                    ControlToCompare="password"
                    ErrorMessage="הסיסמאות לא זהות"
                    Display="Dynamic"
                    Style="color: red">
                </asp:CompareValidator>
            </div>

            <br />
            <asp:Label runat="server" ID="wrong_signup"></asp:Label>
            <asp:Button runat="server" ID="submit_signup" Text="הרשמה" CssClass="sumbit" OnClick="Signup_Event"/>
            <br />
            <a style="color: black" href="login.aspx">יש לך כבר חשבון? היכנס כאן</a>
        </form>
    </div>
</body>
</html>
