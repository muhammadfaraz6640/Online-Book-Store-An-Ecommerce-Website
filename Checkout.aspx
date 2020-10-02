<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Online_Book_Store.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section class="page-top-section set-bg" data-setbg="img/checkout.jpg" style="height:500px">	
	</section>
<div class="container">
	<div class="row">
		<div class="paymentCont" style="margin-top:00px; margin-left:10%; margin-bottom:3%;">
						<div class="headingWrap">
								<h3 class="headingTop text-center" style="color:coral;">Select Your Payment Method</h3>									
						</div>
						<div class="paymentWrap">
							<div class="btn-group paymentBtnGroup btn-group-justified" data-toggle="buttons">
					            <div class="btn paymentMethod active">
					            	<div class="method visa"></div> <!--visa-->
									<asp:RadioButton ID="RadioButton1" runat="server" checked/> 
					                 
					            </div>
					            <div class="btn paymentMethod">
					            	<div class="method master-card"></div> <!--pay pal-->
					                <asp:RadioButton ID="RadioButton2" runat="server" />
					            </div>
					            
					             <div class="btn paymentMethod">
				             		<div class="method vishwa"></div> <!--cash on delivery-->
					                <asp:RadioButton ID="RadioButton3" runat="server" />
					            </div>
					         
					        </div>        
						</div>
						<div class="footerNavWrap clearfix">
							<div class="btn btn-success pull-left btn-fyi"><span class="glyphicon glyphicon-chevron-left"></span><a href="Cart.aspx" class="btn" style="text-decoration:none;color:white;">Continue Shopping</a></div>
                                        
							<div class="btn btn-success pull-right btn-fyi"><asp:Button ID="Button1" runat="server" Text="Checkout" class="btn" style="color:white;" OnClick="Button1_Click"/><span class="glyphicon glyphicon-chevron-right"></span></div>
						</div>
					</div>
		
	</div>
</div>

	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</asp:Content>
