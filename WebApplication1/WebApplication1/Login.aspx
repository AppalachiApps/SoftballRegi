<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default" style="margin:auto;margin-top:100px;width:300px;">
        <div class="panel-body"style="margin:auto; padding:initial">
            <span>Username</span>
            <asp:TextBox ID="TextBox1" runat="server" Height="15px" BorderWidth="0" BorderStyle="None"></asp:TextBox>
            <br />
            <span>Password </span>&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="15px" BorderWidth="0" BorderStyle="None"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
            <div>
                <asp:Label ID="Label3" runat="server" BackColor="#313539" ForeColor="Red" Text="USERNAME OR PASSWORD INCORRECT"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
