<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Buy.aspx.cs" Inherits="Online_Book_Store.Buy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<style>
        /*search box css start here*/
.search-sec{
    padding: 2rem;
    background-color:coral;
}
.search-slt{
    display: block;
    width: 100%;
    font-size: 0.875rem;
    line-height: 1.5;
    color: #55595c;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    height: calc(3rem + 2px) !important;
    border-radius:0;
}
.wrn-btn{
    width : 100%;
    font-size: 16px;
    font-weight: 400;
    text-transform: capitalize;
    height: calc(3rem + 2px) !important;
    border-radius:0;
}
@media (min-width: 992px){
    .search-sec{
        position: relative;
        top: -114px;
        background: rgba(26, 70, 104, 0.51);
    }
}

@media (max-width: 992px){
    .search-sec{
        background-color: coral;
        margin-top:-100px;
    }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<a href="#" class="upbtn"><i class="fas fa-arrow-up"></i></a>	
	
	<section class="hero-section set-bg" data-setbg="img/buy.jpg">		
	</section>
    <br />
    <br />
    
	
	   
	<section class="property-section">
		<div class="container">
			<div class="section-title" style="margin-top:-50px;">
                <h2 style="color: coral;">Search Added <span style="color:darksalmon;">Books </span></h1>				
			</div>
            <br />
            
            <section class="search-sec" style="background-color:coral; ">
    <div class="container">
        <div >
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                <asp:TextBox ID="TextBox1" runat="server" class="form-control search-slt" placeholder="Enter bookName"></asp:TextBox>                            
                        </div>                                            
                        <div class="col-lg-3 col-md-3 col-sm-12 p-0">                            
                        <asp:Button ID="Button1" runat="server" class="btn " Text="Search"  style="background-color:royalblue; color:white;" OnClick="Button1_Click"/>                            
                        
                        </div>
                        <br />
                            <br />

                            <div class="dropdown">
				  <asp:DropDownList ID="DropDownList1" runat="server" style="background-color: royalblue; color:white" CssClass="btn" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">									
							<asp:ListItem Enabled="true" style="background-color: white; color:black" Text="Select Search Filter" Value="none"></asp:ListItem>
							<asp:ListItem Text="Show All Charity Books" Value="Charity" style="background-color: white;color:black"></asp:ListItem>
							<asp:ListItem Text="Show All Books" Value="All" style="background-color: white;color:black"></asp:ListItem>						
                            <asp:ListItem Text="Show All Payment Books" Value="Payment" style="background-color: white;color:black"></asp:ListItem>						
                    </asp:DropDownList>                    					
					
					</div>	                            
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
			<div class="row">
				<asp:Repeater ID="Repeater1" runat="server">
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
