<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AtropiaHome.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron"  style="background-image: url('http://s3.amazonaws.com/vnn-aws-sites/4602/files/2017/02/826e658942408c31-Softball-STACK1.jpg'); background-size: 100% 100%; height: 307px; width: 640px;">
        <h1 style="color: #FFFFFF">Atropia Softball</h1>
        <p class="lead">&nbsp;</p>
        <p>&nbsp;</p>
    </div>
 <div class="slideshow-container">
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="Softball.jpg" style="width:100%">
    <div class="text">Caption Text</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="Softball.jpg" style="width:100%">
    <div class="text">Caption Two</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="Softball.jpg" style="width:100%">
    <div class="text">Caption Three</div>
  </div>

  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div> 
    <div class="row">
        <div class="col-md-4" style ="background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfmoMZ_RLII9u9ddzCl8QN4EQWiG--W_oOZoNutx102rxBq5ii'); top: 60px; left: 0px; height: 231px; width: 308px; background-repeat:no-repeat">
            <h2>Register Now!</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4" style="background-image: url('http://www.michiganmiracle.org/wp-content/uploads/2012/05/TeamScheduleGraphic.jpg'); top: 83px; left: -8px; height: 268px; width: 541px; background-repeat : no-repeat; margin-top: 26px;">
            <h2>Schedule</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Contact Us!</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
