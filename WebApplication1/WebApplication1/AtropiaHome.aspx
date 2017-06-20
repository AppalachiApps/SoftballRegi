<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AtropiaHome.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div class="thePage">
    <div class="jumbotron" style="margin-bottom: 100px; margin-top:75px; width:inherit">--%>
        <div class="sliiide" style="width:100%; height:300px">
            <img class="mySlides" src="SiteImages/sb1.jpg" style="width:100%; height:300px"/>
            <img class="mySlides" src="SiteImages/sb2.jpg" style="width:100%; height:300px"/>
            <img class="mySlides" src="SiteImages/sb3.jpg" style="width:100%; height:300px"/>
            <img class="mySlides" src="SiteImages/Softball.jpg" style="width:100%; height:300px"/>
            <script>
                var slideIndex = 0;
                carousel();

                function carousel() {
                    var i;
                    var x = document.getElementsByClassName("mySlides");
                    for (i = 0; i < x.length; i++) {
                        x[i].style.display = "none";
                    }
                    slideIndex++;
                    if (slideIndex > x.length) { slideIndex = 1 }
                    x[slideIndex - 1].style.display = "block";
                    setTimeout(carousel, 4000); // Change image every 2 seconds
                }</script>
        </div>
        <div class="Announcements">
            <div class="panel panel-default" style="width:inherit; padding-bottom:20px;" >
                <div class="panel-heading">League Rules</div>
                    <div class="panel-body">
                         5/23/17 - All Fastpitch softball bats must have a 2 1/4 inch barrel diameter and must not be over 34 inches in length and 31 1/2 oz in weight.
                    </div>
                    <div class="panel-body">
                         5/04/17 -  Gloves/mitts may be a maximum of two colors unless judged by the umpire to be distracting. Glove lacing and manufacturer’s logo are not considered one of the two colors permitted. Glove lacing may be any color other than that of the ball. A glove/mitt worn by players that is entirely gray, white or optic in color is illegal. A gray, white or optic colored circle on the outside or inside of the glove/mitt that gives the appearance of a ball or is judged to be dis- tracting by the umpire, is illegal. One American flag (2 inch x 3 inch maximum) is permitted on the glove/mitt.
                    </div>    
                    <div class="panel-body">
                        4/27/17 -  Uniforms of all team members shall be of the same color and style.  State associations may, on an individual basis, permit a player to participate while wearing a different style uniform for religious reasons
                    </div>
                    <div class="panel-body">
                        4/17/17 -  All equipment shall be inspected by the umpire, and is to be placed outside the dugout/bench prior to the start of the game
                    <a href="#" class="btn btn-primary" style="float:right;">Learn More</a>
                    </div>    
                </div>

            <div class="panel panel-default" style="width:inherit; padding-bottom:20px;" >
                <div class="panel-heading">Upcoming Games</div>
                    <div class="panel-body">
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                            <AlternatingItemTemplate>
                                <li style="">time:
                                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                                    <br />
                                    TeamName:
                                    <asp:Label ID="TeamNameLabel" runat="server" Text='<%# Eval("TeamName") %>' />
                                    <br />
                                    date:
                                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                    <br />
                                    location:
                                    <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                                    <br />
                                </li>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <li style="">time:
                                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                                    <br />
                                    TeamName:
                                    <asp:TextBox ID="TeamNameTextBox" runat="server" Text='<%# Bind("TeamName") %>' />
                                    <br />
                                    date:
                                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                    <br />
                                    location:
                                    <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </li>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                No data was returned.
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <li style="">time:
                                    <asp:TextBox ID="timeTextBox" runat="server" Text='<%# Bind("time") %>' />
                                    <br />TeamName:
                                    <asp:TextBox ID="TeamNameTextBox" runat="server" Text='<%# Bind("TeamName") %>' />
                                    <br />date:
                                    <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                                    <br />location:
                                    <asp:TextBox ID="locationTextBox" runat="server" Text='<%# Bind("location") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </li>
                            </InsertItemTemplate>
                            <ItemSeparatorTemplate>
<br />
                            </ItemSeparatorTemplate>
                            <ItemTemplate>
                                <li style="">time:
                                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                                    <br />
                                    TeamName:
                                    <asp:Label ID="TeamNameLabel" runat="server" Text='<%# Eval("TeamName") %>' />
                                    <br />
                                    date:
                                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                    <br />
                                    location:
                                    <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                                    <br />
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul id="itemPlaceholderContainer" runat="server" style="">
                                    <li runat="server" id="itemPlaceholder" />
                                </ul>
                                <div style="">
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <li style="">time:
                                    <asp:Label ID="timeLabel" runat="server" Text='<%# Eval("time") %>' />
                                    <br />
                                    TeamName:
                                    <asp:Label ID="TeamNameLabel" runat="server" Text='<%# Eval("TeamName") %>' />
                                    <br />
                                    date:
                                    <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                                    <br />
                                    location:
                                    <asp:Label ID="locationLabel" runat="server" Text='<%# Eval("location") %>' />
                                    <br />
                                </li>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SoftballConnectionString %>" SelectCommand="SELECT [time], [TeamName], [date], [location] FROM [Calendar] WHERE ([date] &gt;= '2017-05-01' AND [date]&lt; '2017-05-08');"></asp:SqlDataSource>
                    </div>
                </div>
          </div>
</asp:Content>
