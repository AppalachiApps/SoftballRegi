<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="CalendarPage.aspx.cs" Inherits="WebApplication1.WebForm1" %>

    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

       <div>
         <asp:Panel ID="Panel1" runat="server" style="margin-bottom: 150px">
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SoftballConnectionString %>" SelectCommand="SELECT DISTINCT [TeamName] FROM [Calendar]"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SoftballConnectionString %>" SelectCommand="SELECT [time], [location] FROM [Calendar] WHERE ([TeamName] = @TeamName)">
         <SelectParameters>
         <asp:ControlParameter ControlID="DropDownList1" Name="TeamName" PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
         </asp:SqlDataSource>
     </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" style="margin-bottom: 10px">
        <asp:Label ID="Label1" runat="server" Text="Select Team"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="False" DataSourceID="SqlDataSource1" DataTextField="TeamName" DataValueField="TeamName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="Select Month"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        <asp:ListItem>April</asp:ListItem>
        <asp:ListItem>May</asp:ListItem>
        <asp:ListItem>June</asp:ListItem>
        </asp:DropDownList>
        </asp:Panel>
</div>
    
     
        <div>
            <asp:Panel ID="Panel3" runat="server" style=" margin-bottom: 10px" HorizontalAlign="Center">
            <asp:Label ID="CalendarLabel" runat="server" EnableViewState="False"></asp:Label>
            </asp:Panel>
            <asp:Table ID="Table1" runat="server" Height="400px" Width="700px" BorderColor="Black" BorderStyle="Solid" CellPadding="30" GridLines="Both" Font-Bold="False" Font-Names="Calibri" Font-Size="Smaller" HorizontalAlign="Center" Visible="false">
            <asp:TableRow ID="r1" runat="server" Height="75px" Width="700px" TableSection="TableBody">
            <asp:TableCell ID="r1c1" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left" Wrap="False"> </asp:TableCell>
            <asp:TableCell ID="r1c2" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"></asp:TableCell>
            <asp:TableCell ID="r1c3" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r1c4" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r1c5" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r1c6" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r1c7" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="r2" runat="server" Height="75px" Width="700px" TableSection="TableBody">
            <asp:TableCell ID="r2c1" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r2c2" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r2c3" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r2c4" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r2c5" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r2c6" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r2c7" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="r3" runat="server" Height="75px" Width="700px" TableSection="TableBody">
            <asp:TableCell ID="r3c1" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r3c2" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r3c3" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r3c4" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r3c5" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r3c6" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r3c7" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="r4" runat="server" Height="75px" Width="700px" TableSection="TableBody">
            <asp:TableCell ID="r4c1" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r4c2" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r4c3" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r4c4" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r4c5" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r4c6" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r4c7" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="r5" runat="server" Height="75px" Width="700px" TableSection="TableBody">
            <asp:TableCell ID="r5c1" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r5c2" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            <asp:TableCell ID="r5c3" runat="server" Height ="75px" Width ="100px" VerticalAlign="Top" HorizontalAlign="Left"> </asp:TableCell>
            </asp:TableRow>
            </asp:Table>
        </div>
</asp:Content>
