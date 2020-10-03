<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SeeAllBookCategories.aspx.cs" Inherits="Online_Book_Store.SeeAllBookCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .mov{
            margin-left : 10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content-body">
         <br />
                <div class="section-title">
				<h2>Add Book category</h2>
			</div>
        <div class="mov">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Add category Ex: Fiction"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Add" class="btn btn-info" OnClick="Button2_Click"/>
            
                        </div>
               <br />
               
         <div class="section-title">
				<h2>See All Categories</h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">                                      
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Cid" DataSourceID="SqlDataSource1" Width="356px">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" ReadOnly="True" SortExpression="Cid" />
                                            <asp:BoundField DataField="CatName" HeaderText="CatName" SortExpression="CatName" />
                                        </Columns>
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                                    </asp:GridView>
                                       
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Category] WHERE [Cid] = @original_Cid AND (([CatName] = @original_CatName) OR ([CatName] IS NULL AND @original_CatName IS NULL))" InsertCommand="INSERT INTO [Category] ([CatName]) VALUES (@CatName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CatName] = @CatName WHERE [Cid] = @original_Cid AND (([CatName] = @original_CatName) OR ([CatName] IS NULL AND @original_CatName IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Cid" Type="Int32" />
                                            <asp:Parameter Name="original_CatName" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="CatName" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="CatName" Type="String" />
                                            <asp:Parameter Name="original_Cid" Type="Int32" />
                                            <asp:Parameter Name="original_CatName" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                       
                                </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>
               
</div>                  

</asp:Content>
