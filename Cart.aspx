<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Online_Book_Store.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="page-top-section set-bg" data-setbg="img/cart1.jpg" style="height:700px">	
	</section>
    <br />
    <div class="section-title">
                <h2 style="color: coral;">Books Added <span style="color:darksalmon;">To Your Cart </span></h1>				
			</div>    
    <table class="table" style="background-color: coral;">
  <thead>
    <tr style="font-weight : bolder; font-size : 20px;">
      <th scope="col">Book Name</th>
      <th scope="col">Book Price</th>
      <th scope="col">Book Picture</th>      
        <th scope="col">Delete</th>      
    </tr>
  </thead>
  <tbody>
      <asp:Repeater ID="Repeater1" runat="server">
           <ItemTemplate>
    <tr>
      <th scope="row" style="font-size:15px; color:white;"><%#Eval("BookName")%></th>
      <td style="font-size:15px; color:white;"><%#Eval("BookPrice")%></td>
      <td><img src='<%#Eval("BookPic")%>' height="200" width="200"></td>    
      <td><a href="DeleteItem.aspx?bid=<%#Eval("Bid") %>" class="btn btn-danger" style=" color: white; width:89px; height:30px; font-size:15px;">Delete Item</a></td>    						
    </tr>  
            </ItemTemplate>
      </asp:Repeater>
      <tr>
          <td></td>                    
          <td><asp:Button ID="Button2" runat="server" Text="Checkout" class="btn btn-success" style="width:89px; height:30px; font-weight:bold; font-size:16px;" OnClick="Button2_Click"/></td>
          <td><asp:Button ID="Button1" runat="server" Text="Get Total" class="btn btn-success" style="width:89px; height:30px; font-weight:bold;  font-size:16px;" OnClick="Button1_Click"/></td>
          <td>
              <asp:Label ID="Label1" runat="server" style="color:green; font-size:25px; font-weight:bold;"></asp:Label></td>
      </tr>
  </tbody>
</table>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</asp:Content>
