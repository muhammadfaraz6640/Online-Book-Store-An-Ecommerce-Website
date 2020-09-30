<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Online_Book_Store.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="#" class="upbtn"><i class="fas fa-arrow-up"></i></a>
	
	<section class="page-top-section set-bg" data-setbg="img/Contact.jpg">
	
	</section>
	
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					<div class="section-title text-left">
						<h2 style="color: coral;text-decoration: none;">Get in <span style="color: darksalmon;">Touch </span></h1>						
					</div>
					<div class="contact-text">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis possimus exercitationem perspiciatis labore quae. Voluptate, culpa vitae beatae nam voluptatum pariatur veritatis, commodi corporis, nulla consequatur optio assumenda aspernatur obcaecati!.</p>
					</div>
				</div>
				<div class="col-lg-7">
					<div class="row">
						<div class="col-sm-4">
							<div class="contact-info-box">
								<div class="ci-icon">
									<span><i class="fa fa-address-card" aria-hidden="true"></i></span>
								</div>
								<h4>Address</h4>
								<p>2768 Clousson Road Los Angeles, CA 77002 </p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="contact-info-box">
								<div class="ci-icon">
									<span><i class="fa fa-phone" aria-hidden="true"></i></span>
								</div>
								<h4>Phone</h4>
								<p>03352677887</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="contact-info-box">
								<div class="ci-icon">
									<span><i class="fa fa-envelope" aria-hidden="true"></i></span>
								</div>
								<h4>Email Us</h4>
								<p>faraz@gmail.com </p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="contact-form">
				<div class="row">
					<div class="col-lg-4">
						<input type="text" placeholder="Your name">
					</div>
					<div class="col-lg-4">
						<input type="text" placeholder="Your e-mail">
					</div>
					<div class="col-lg-4">
						<input type="text" placeholder="Subject">
					</div>
					<div class="col-lg-12">
						<textarea placeholder="Message"></textarea>
						<button class="site-btn sb-big" style="background: royalblue ;">Send message</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	
</asp:Content>
