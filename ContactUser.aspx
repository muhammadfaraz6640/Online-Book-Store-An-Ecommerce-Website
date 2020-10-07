<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ContactUser.aspx.cs" Inherits="Online_Book_Store.ContactUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        

    <div class="login-form-bg h-100 hel" style="background-image: url('img/admin.jpg');">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">
                                
                                    <a class="text-center" href="AdminHome.aspx"> <h4>Contact User</h4></a>
        
                                <div class="mt-5 mb-5 login-input">
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Email" required></asp:TextBox>                                        
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control"  placeholder="Enter Subject"></asp:TextBox>                                        
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Body"  TextMode="MultiLine"></asp:TextBox>                                        
                                    </div>
                                    <asp:Button ID="Button1" class="btn w-100" style="background-color:coral;" runat="server" Text="Send" OnClick="Button1_Click"/>                                    
                                </div>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
