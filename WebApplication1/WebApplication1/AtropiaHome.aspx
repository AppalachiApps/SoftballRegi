<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AtropiaHome.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron"  style="background-image: url('http://s3.amazonaws.com/vnn-aws-sites/4602/files/2017/02/826e658942408c31-Softball-STACK1.jpg'); background-size: 100% 100%; height: 307px; width: 640px;">
        <h1 style="color: #FFFFFF">Atropia Softball</h1>
        <p class="lead">&nbsp;</p>
        <p>&nbsp;</p>
    </div>
    <section class="cr-container">			

	<!-- radio buttons and labels -->
	<input id="select-img-1" name="radio-set-1" type="radio" class="cr-selector-img-1" checked/>
	<label for="select-img-1" class="cr-label-img-1">1</label>

	<input id="select-img-2" name="radio-set-1" type="radio" class="cr-selector-img-2" />
	<label for="select-img-2" class="cr-label-img-2">2</label>

	<input id="select-img-3" name="radio-set-1" type="radio" class="cr-selector-img-3" />
	<label for="select-img-3" class="cr-label-img-3">3</label>

	<input id="select-img-4" name="radio-set-1" type="radio" class="cr-selector-img-4" />
	<label for="select-img-4" class="cr-label-img-4">4</label>

	<div class="clr"></div>	

	<!-- panels -->
	<div class="cr-bgimg">
		<div>
			<span>Slice 1 - Image 1</span>
			<span>Slice 1 - Image 2</span>
			<span>Slice 1 - Image 3</span>
			<span>Slice 1 - Image 4</span>
		</div>
		<div>
			<span>Slice 2 - Image 1</span>
			<span>Slice 2 - Image 2</span>
			<span>Slice 2 - Image 3</span>
			<span>Slice 2 - Image 4</span>
		</div>
		<div>
			<span>Slice 3 - Image 1</span>
			<span>Slice 3 - Image 2</span>
			<span>Slice 3 - Image 3</span>
			<span>Slice 3 - Image 4</span>
		</div>
		<div>
			<span>Slice 4 - Image 1</span>
			<span>Slice 4 - Image 2</span>
			<span>Slice 4 - Image 3</span>
			<span>Slice 4 - Image 4</span>
		</div>
	</div>

	<!-- titles -->
	<div class="cr-titles">
		<h3>
			<span>Serendipity</span>
			<span>What you've been dreaming of</span>
		</h3>
		<h3>
			<span>Adventure</span>
			<span>Where the fun begins</span>
		</h3>
		<h3>
			<span>Nature</span>
			<span>Unforgettable eperiences</span>
		</h3>
		<h3>
			<span>Serenity</span>
			<span>When silence touches nature</span>
		</h3>
	</div>

</section>
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
