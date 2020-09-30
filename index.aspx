<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Online_Book_Store.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
	<a href="#" class="upbtn"><i class="fas fa-arrow-up"></i></a>
	
	<!-- <section class="hero-section set-bg" data-setbg="img/buy.jpg">		
	</section> -->
	<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="img/1.jpg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/2.jpg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/3.jpg" alt="Third slide">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="img/4.jpg" alt="4th slide">
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
                <input class="form-control form-control-sm mr-3 w-75" type="text" placeholder="Search Your Book"
				  aria-label="Search"><br /><br />
				  <button class="btn" style="background-color: royalblue;"><i class="fas fa-search" aria-hidden="true"></i>Search</button>
                
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
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/Book3.jpg" height="500">
							<div class="pi-badge new">For Sale</div>
						</div>
						<h3>2,000,000 <span style="color: coral;">$</span></h3>						
						<h4 style="text-decoration:line-through;color: red;">200<span> $ </span></h4>
						<h5>Condition > <span style="color: coral;">Fine</span></h5>
						<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus modi tempore facere recusandae quo, veritatis ex molestiae alias, dicta beatae enim deserunt saepe quisquam maxime nam magnam itaque vitae eligendi!</p>						
						<button class="btn" style="background-color: royalblue; color: white;">Add To Cart</button>
						<br />
						<br />
					</div>
				</div>
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/Book1.jpg" height="500" >
							<div class="pi-badge new">For Sale</div>
						</div>
						<h3>2,000,000 <span style="color: coral;">$</span></h3>						
						<h4 style="text-decoration:line-through;color: red;">200<span> $ </span></h4>
						<h5>Condition > <span style="color: coral;">Fine</span></h5>
						<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus modi tempore facere recusandae quo, veritatis ex molestiae alias, dicta beatae enim deserunt saepe quisquam maxime nam magnam itaque vitae eligendi!</p>						
						<button class="btn" style="background-color: royalblue; color: white;">Add To Cart</button>
						<br />
						<br />
					</div>
				</div>
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/Book2.jpg" height="500">
							<div class="pi-badge new">For Sale</div>
						</div>
						<h3>2,000,000 <span style="color: coral;">$</span></h3>						
						<h4 style="text-decoration:line-through;color: red;">200<span> $ </span></h4>
						<h5>Condition > <span style="color: coral;">Fine</span></h5>
						<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus modi tempore facere recusandae quo, veritatis ex molestiae alias, dicta beatae enim deserunt saepe quisquam maxime nam magnam itaque vitae eligendi!</p>						
						<button class="btn" style="background-color: royalblue; color: white;">Add To Cart</button>
						<br />
						<br />
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="property-section">
		<div class="container">
			<div class="section-title">
                <h2 style="color: coral;">Recently Added <span style="color:darksalmon;"> Charity Books </span></h1>				
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/Book3.jpg" height="500">
							<div class="pi-badge new">For Sale</div>
						</div>
						<h3>2,000,000 <span style="color: coral;">$</span></h3>						
						<h4 style="text-decoration:line-through;color: red;">200<span> $ </span></h4>
						<h5>Condition > <span style="color: coral;">Fine</span></h5>
						<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus modi tempore facere recusandae quo, veritatis ex molestiae alias, dicta beatae enim deserunt saepe quisquam maxime nam magnam itaque vitae eligendi!</p>						
						<button class="btn" style="background-color: royalblue; color: white;">Add To Cart</button>
						<br />
						<br />
					</div>
				</div>
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/Book1.jpg" height="500" >
							<div class="pi-badge new">For Sale</div>
						</div>
						<h3>2,000,000 <span style="color: coral;">$</span></h3>						
						<h4 style="text-decoration:line-through;color: red;">200<span> $ </span></h4>
						<h5>Condition > <span style="color: coral;">Fine</span></h5>
						<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus modi tempore facere recusandae quo, veritatis ex molestiae alias, dicta beatae enim deserunt saepe quisquam maxime nam magnam itaque vitae eligendi!</p>						
						<button class="btn" style="background-color: royalblue; color: white;">Add To Cart</button>
						<br />
						<br />
					</div>
				</div>
				<div class="col-lg-4">
					<div class="property-item">
						<div class="pi-image">
							<img src="img/Book2.jpg" height="500">
							<div class="pi-badge new">For Sale</div>
						</div>
						<h3>2,000,000 <span style="color: coral;">$</span></h3>						
						<h4 style="text-decoration:line-through;color: red;">200<span> $ </span></h4>
						<h5>Condition > <span style="color: coral;">Fine</span></h5>
						<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus modi tempore facere recusandae quo, veritatis ex molestiae alias, dicta beatae enim deserunt saepe quisquam maxime nam magnam itaque vitae eligendi!</p>						
						<button class="btn" style="background-color: royalblue; color: white;">Add To Cart</button>
						<br />
						<br />
					</div>
				</div>
			</div>
		</div>
	</section>


	<hr />
<br />
<br />
		
</asp:Content>
