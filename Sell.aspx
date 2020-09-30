<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="Online_Book_Store.Sell" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Sell - Real Estate Management System</title>
   <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
   <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
   <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
   <link rel="stylesheet" type="text/css" href="css/util.css"/>
   <link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
<link href="img/favicon.ico" rel="shortcut icon"/>

   <!-- Google font -->
   <link href="https://fonts.googleapis.com/css?family=Lato:400,400i,700,700i,900%7cRoboto:400,400i,500,500i,700,700i&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
   <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
   <!-- Stylesheets -->
   <link rel="stylesheet" href="css/bootstrap.min.css"/>
   <link rel="stylesheet" href="css/font-awesome.min.css"/>
   <link rel="stylesheet" href="css/slicknav.min.css"/>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <!-- Main Stylesheets -->
   <link rel="stylesheet" href="css/style.css"/>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="limiter">        
		<div class="container-login100" style="background-image: url('img/Login.png');background-color: white;">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30" style="background: coral;">
				<div class="login100-form validate-form">
                    <span class="login100-form-title p-b-55" style="color:white">
						Sell A Book
					</span>

					<div class="wrap-input100 validate-input m-b-16" >                        
                        <input class="input100" type="text" placeholder="Book Name Ex: The Harry Potter" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">							
							<span class="fas fa-book"></span>
						</span>
					</div>
					
                                                            
                    <label style="color:white; font-size:larger;font-weight: bold;">Upload A Book Picture</label>
                    <input  type="file" required>                                  
<br />
<br />                   
				<div class="dropdown">
					<asp:DropDownList ID="DropDownList3" runat="server" style="background-color: royalblue; color:white" CssClass="btn">
						<asp:ListItem Enabled="true" style="background-color: white; color:black" Text="Choose Category Of Book" Value="none"></asp:ListItem>
					</asp:DropDownList>                    														
				</div>
				<br />
				<br />
				<br />
				<div class="wrap-input100 validate-input m-b-16">                        
					<textarea name="Description" class="input100" placeholder="Enter Description" cols="30" rows="20"></textarea>                        
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<span class="fas fa-info"></span>
					</span>
				</div>
				<div class="dropdown">
                    <asp:DropDownList ID="DropDownList1" runat="server" style="background-color: royalblue; color:white" CssClass="btn">									
							<asp:ListItem Enabled="true" style="background-color: white; color:black" Text="Choose Condition of Book" Value="none"></asp:ListItem>
							<asp:ListItem Text="New" Value="New" style="background-color: white;color:black"></asp:ListItem>
							<asp:ListItem Text="Near Fine (NF)" Value="Near Fine" style="background-color: white;color:black"></asp:ListItem>
						<asp:ListItem Text="Very Good (VG)" Value="Very Good" style="background-color: white;color:black"></asp:ListItem>
						<asp:ListItem Text="Good (G)" Value="Good" style="background-color: white;color:black"></asp:ListItem>
						<asp:ListItem Text="Fair (FR)" Value="Fair" style="background-color: white;color:black"></asp:ListItem>
						<asp:ListItem Text="Poor (P)" Value="Poor" style="background-color: white;color:black"></asp:ListItem>						
                    </asp:DropDownList>                    					
				</div>
				<br />
				<br />
				<br />
				<div class="dropdown">
				  <asp:DropDownList ID="DropDownList2" runat="server" style="background-color: royalblue; color:white" CssClass="btn">									
							<asp:ListItem Enabled="true" style="background-color: white; color:black" Text="Choose Method of Sale" Value="none"></asp:ListItem>
							<asp:ListItem Text="payment" Value="payment" style="background-color: white;color:black"></asp:ListItem>
							<asp:ListItem Text="Charity" Value="Charity" style="background-color: white;color:black"></asp:ListItem>						
                    </asp:DropDownList>                    					
					
					</div>				
				<br />														
				
                    <div class="wrap-input100 validate-input m-b-16">                        
						<label style="color:white; font-size:larger;font-weight: bold;">Enter Demand</label>						
                        <input class="input100" type="number" placeholder="Demand" value="0" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="fa fa-money"></span>
						</span>
					</div>			
					<label style="color:white; font-size:larger;font-weight: bold;">Enter Discount</label>			
					<div class="wrap-input100 validate-input m-b-16">                        
                        <input class="input100" type="number" placeholder="Discount in Percentage" value="0" required>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="fa fa-percent"></span>
						</span>
					</div>		
					
					<div class="container-login100-form-btn p-t-25">                    
						<button class="login100-form-btn" style="background: royalblue;">
							Sale
						</button>
					</div>		
                    
				</div>
			</div>
		</div>
	</div>	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/select2/select2.min.js"></script>
	<script src="js/main1.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</asp:Content>
