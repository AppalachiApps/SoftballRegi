<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teams.aspx.cs" Inherits="WebApplication1.Teams" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView runat="server" ID="playersGrid"
        Itemtype="WebApplication1.Models.Player" DataKeyNames="PlayerID"
        SelectMethod="playersGrid_Data"
        AutoGenerateColumns="false">
        <Columns>
            <asp:DynamicField DataField="PlayerID" />
            <asp:DynamicField DataField="LastName" />
            <asp:DynamicField DataField="FirstName" />
            <asp:DynamicField DataField="Team" />
        </Columns>
    </asp:GridView>
</asp:Content>
