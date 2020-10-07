<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="Online_Book_Store.Models.AdminReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="login-form-bg h-100 hel">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">
                                
                                    <a class="text-center" href="index.html"> <h4>Admin SignUp</h4></a>
        
                                <div class="mt-5 mb-5 login-input">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control"  placeholder="Name"></asp:TextBox>                                        
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control"  placeholder="Email" TextMode="Email"></asp:TextBox>                                        
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>                                        
                                    </div>
                                    <asp:Button ID="Button1" class="btn login-form__btn submit w-100" style="background-color:coral;" runat="server" Text="Sign in" OnClick="Button1_Click"/>                                    
                                </div>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
