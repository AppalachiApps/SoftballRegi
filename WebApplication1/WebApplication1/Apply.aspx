<%@ Page Title="Apply" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="margin-bottom: 221px">
    </asp:Panel>
    <p>
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="*"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="*"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Phone Number"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" Text="*"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label10" runat="server" Text="*"></asp:Label>
    </p>
    <p>
        Fields marked with (*) are a required field</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SoftballConnectionString %>" DeleteCommand="DELETE FROM [Member] WHERE [MemberID] = @original_MemberID AND (([First Name] = @original_First_Name) OR ([First Name] IS NULL AND @original_First_Name IS NULL)) AND (([Last Name] = @original_Last_Name) OR ([Last Name] IS NULL AND @original_Last_Name IS NULL)) AND (([PhoneNum] = @original_PhoneNum) OR ([PhoneNum] IS NULL AND @original_PhoneNum IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="
INSERT INTO [Member] ([First Name], [Last Name], [PhoneNum], [Username], [Password]) VALUES (@First_Name, @Last_Name, @PhoneNum, @Username, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MemberID], [First Name] AS First_Name, [Last Name] AS Last_Name, [PhoneNum], [Username], [Password] FROM [Member]" UpdateCommand="UPDATE [Member] SET [First Name] = @First_Name, [Last Name] = @Last_Name, [PhoneNum] = @PhoneNum, [Username] = @Username, [Password] = @Password WHERE [MemberID] = @original_MemberID AND (([First Name] = @original_First_Name) OR ([First Name] IS NULL AND @original_First_Name IS NULL)) AND (([Last Name] = @original_Last_Name) OR ([Last Name] IS NULL AND @original_Last_Name IS NULL)) AND (([PhoneNum] = @original_PhoneNum) OR ([PhoneNum] IS NULL AND @original_PhoneNum IS NULL)) AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MemberID" Type="Int32" />
                <asp:Parameter Name="original_First_Name" Type="String" />
                <asp:Parameter Name="original_Last_Name" Type="String" />
                <asp:Parameter Name="original_PhoneNum" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="First_Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" DefaultValue="" Name="Last_Name" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="PhoneNum" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="Username" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox6" Name="Password" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="First_Name" Type="String" />
                <asp:Parameter Name="Last_Name" Type="String" />
                <asp:Parameter Name="PhoneNum" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_MemberID" Type="Int32" />
                <asp:Parameter Name="original_First_Name" Type="String" />
                <asp:Parameter Name="original_Last_Name" Type="String" />
                <asp:Parameter Name="original_PhoneNum" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
