<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Online_Book_Store.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
	<a href="#" class="upbtn"><i class="fas fa-arrow-up"></i></a>
		
	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="img/1.jpg" alt="First slide" height="500">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/2.jpg" alt="Second slide" height="500">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/3.jpg" alt="Third slide" height="500">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/4.jpg" alt="4th slide" height="500">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      <div class="search pt-4">
        <div class="container">
          <div class="row">
            <div class="col-md-6 mb-4">
              <div class="form-inline">
                  <asp:Label ID="Label1" runat="server" style="color:white; font-weight:bold; padding-left:20%; font-size:20px;"></asp:Label>                
              </div>              
            </div>            
          </div>          
      
        </div>      
    </div>      
	<section class="property-section">
		<div class="container">
			<div class="section-title">
                <h2 style="color: coral;">Recently Added <span style="color:darksalmon;">Books </span></h1>				
			</div>
			<div class="row">
				 <asp:Repeater ID="Repeater1" runat="server" >
                     <ItemTemplate>
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src='<%#Eval("BookPic")%>' height="300" width="500">							
							<div class="pi-badge new">For Sale</div>
						</div>
						<h3><%#Eval("DiscountPercent")%><span style="color: coral;"> $</span></h3>										
						<h4 style="text-decoration:line-through;color: red;"><%#Eval("BookPrice")%><span> $ </span></h4>
						<h5>Condition > <span style="color: coral;"><%#Eval("BookCondition")%></span></h5>
						<p><%#Eval("BookDescription")%></p>					
						<a href="AddCart.aspx?bid=<%#Eval("Bid") %>" class="btn" style="background-color: royalblue; color: white;">Add To Cart</a>						
						<br />
						<br />
					</div>
				</div>
						   </ItemTemplate>
                    </asp:Repeater>												
			</div>
		</div>
	</section>
	
	<section class="property-section">
		<div class="container">
			<div class="section-title">
                <h2 style="color: coral;">Recently Added <span style="color:darksalmon;"> Charity Books </span></h1>				
			</div>
			<div class="row">
				<asp:Repeater ID="Repeater2" runat="server" >
                     <ItemTemplate>
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src='<%#Eval("BookPic")%>' height="300" width="500">							
							<div class="pi-badge new">For Sale</div>
						</div>
						<h3><%#Eval("DiscountPercent")%><span style="color: coral;"> $</span></h3>										
						<h4 style="text-decoration:line-through;color: red;"><%#Eval("BookPrice")%><span> $ </span></h4>
						<h5>Condition > <span style="color: coral;"><%#Eval("BookCondition")%></span></h5>
						<p><%#Eval("BookDescription")%></p>					
						<a href="AddCart.aspx?bid=<%#Eval("Bid") %>" class="btn" style="background-color: royalblue; color: white;">Add To Cart</a>						
						<br />
						<br />
					</div>
				</div>				
</ItemTemplate>
                    </asp:Repeater>												
			</div>
		</div>
	</section>


	<hr />
<br />
<br />
		
</asp:Content>
