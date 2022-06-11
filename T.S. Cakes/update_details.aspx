<%@ Page Title="" Language="C#" MasterPageFile="~/TSCakes.Master" AutoEventWireup="true" CodeBehind="update_details.aspx.cs" Inherits="T.S.Cakes.update_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   
<h1>עדכון פרטים אישיים</h1>
<div class="form-container">
    <form id="update_form" runat="server" class="form">
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
            <asp:Label AssociatedControlId="password" Text="סיסמה חדשה:" runat="server"/>
            <asp:TextBox runat="server" ID="password"></asp:TextBox>
            <asp:Button runat="server" Text="שנה סיסמה" CssClass="sumbit" OnClick="Change_Password"/>
        </div>
        <div>
            <asp:Label AssociatedControlId="email" Text="אימייל חדש:" runat="server"/>
            <asp:TextBox runat="server" ID="email"></asp:TextBox>
            <asp:Button runat="server" Text="שנה אימייל" CssClass="sumbit" OnClick="Change_Email"/>
        </div>
        <br />
        <asp:Label runat="server" ID="wrong_update"></asp:Label>
        <asp:Button runat="server" Text="מחק חשבון" CssClass="sumbit" OnClick="Delete_Account" />
    </form>
</div>

</asp:Content>
