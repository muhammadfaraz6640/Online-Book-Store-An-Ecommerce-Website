<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SeeAllOrders.aspx.cs" Inherits="Online_Book_Store.SeeAllOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .mov{
            margin-left : 10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="content-body">
        <div class="mov">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Search by property id"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Search" class="btn" Style="background-color:coral;color:white;" />
            
                        </div>
               <br />
               <br />
                <div class="section-title">
				<h2>Search All Orders By SalesID </h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="OrderID" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                            <asp:BoundField DataField="BuyerID" HeaderText="BuyerID" SortExpression="BuyerID" />
                                            <asp:BoundField DataField="SellerID" HeaderText="SellerID" SortExpression="SellerID" />
                                            <asp:BoundField DataField="BookID" HeaderText="BookID" SortExpression="BookID" />
                                            <asp:BoundField DataField="SalesID" HeaderText="SalesID" SortExpression="SalesID" />
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
                                              
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [OrderDetails] WHERE [OrderID] = @original_OrderID AND (([BuyerID] = @original_BuyerID) OR ([BuyerID] IS NULL AND @original_BuyerID IS NULL)) AND (([SellerID] = @original_SellerID) OR ([SellerID] IS NULL AND @original_SellerID IS NULL)) AND (([BookID] = @original_BookID) OR ([BookID] IS NULL AND @original_BookID IS NULL)) AND (([SalesID] = @original_SalesID) OR ([SalesID] IS NULL AND @original_SalesID IS NULL))" InsertCommand="INSERT INTO [OrderDetails] ([BuyerID], [SellerID], [BookID], [SalesID]) VALUES (@BuyerID, @SellerID, @BookID, @SalesID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([SalesID] = @SalesID)" UpdateCommand="UPDATE [OrderDetails] SET [BuyerID] = @BuyerID, [SellerID] = @SellerID, [BookID] = @BookID, [SalesID] = @SalesID WHERE [OrderID] = @original_OrderID AND (([BuyerID] = @original_BuyerID) OR ([BuyerID] IS NULL AND @original_BuyerID IS NULL)) AND (([SellerID] = @original_SellerID) OR ([SellerID] IS NULL AND @original_SellerID IS NULL)) AND (([BookID] = @original_BookID) OR ([BookID] IS NULL AND @original_BookID IS NULL)) AND (([SalesID] = @original_SalesID) OR ([SalesID] IS NULL AND @original_SalesID IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_OrderID" Type="Int32" />
                                            <asp:Parameter Name="original_BuyerID" Type="Int32" />
                                            <asp:Parameter Name="original_SellerID" Type="Int32" />
                                            <asp:Parameter Name="original_BookID" Type="Int32" />
                                            <asp:Parameter Name="original_SalesID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="BuyerID" Type="Int32" />
                                            <asp:Parameter Name="SellerID" Type="Int32" />
                                            <asp:Parameter Name="BookID" Type="Int32" />
                                            <asp:Parameter Name="SalesID" Type="Int32" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="SalesID" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="BuyerID" Type="Int32" />
                                            <asp:Parameter Name="SellerID" Type="Int32" />
                                            <asp:Parameter Name="BookID" Type="Int32" />
                                            <asp:Parameter Name="SalesID" Type="Int32" />
                                            <asp:Parameter Name="original_OrderID" Type="Int32" />
                                            <asp:Parameter Name="original_BuyerID" Type="Int32" />
                                            <asp:Parameter Name="original_SellerID" Type="Int32" />
                                            <asp:Parameter Name="original_BookID" Type="Int32" />
                                            <asp:Parameter Name="original_SalesID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                              
                                </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>
           
         <div class="section-title">
				<h2>See All Orders</h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">                                      
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                            <asp:BoundField DataField="BuyerID" HeaderText="BuyerID" SortExpression="BuyerID" />
                                            <asp:BoundField DataField="SellerID" HeaderText="SellerID" SortExpression="SellerID" />
                                            <asp:BoundField DataField="BookID" HeaderText="BookID" SortExpression="BookID" />
                                            <asp:BoundField DataField="SalesID" HeaderText="SalesID" SortExpression="SalesID" />
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
                                       
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [OrderDetails] WHERE [OrderID] = @original_OrderID AND (([BuyerID] = @original_BuyerID) OR ([BuyerID] IS NULL AND @original_BuyerID IS NULL)) AND (([SellerID] = @original_SellerID) OR ([SellerID] IS NULL AND @original_SellerID IS NULL)) AND (([BookID] = @original_BookID) OR ([BookID] IS NULL AND @original_BookID IS NULL)) AND (([SalesID] = @original_SalesID) OR ([SalesID] IS NULL AND @original_SalesID IS NULL))" InsertCommand="INSERT INTO [OrderDetails] ([BuyerID], [SellerID], [BookID], [SalesID]) VALUES (@BuyerID, @SellerID, @BookID, @SalesID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [OrderDetails]" UpdateCommand="UPDATE [OrderDetails] SET [BuyerID] = @BuyerID, [SellerID] = @SellerID, [BookID] = @BookID, [SalesID] = @SalesID WHERE [OrderID] = @original_OrderID AND (([BuyerID] = @original_BuyerID) OR ([BuyerID] IS NULL AND @original_BuyerID IS NULL)) AND (([SellerID] = @original_SellerID) OR ([SellerID] IS NULL AND @original_SellerID IS NULL)) AND (([BookID] = @original_BookID) OR ([BookID] IS NULL AND @original_BookID IS NULL)) AND (([SalesID] = @original_SalesID) OR ([SalesID] IS NULL AND @original_SalesID IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_OrderID" Type="Int32" />
                                            <asp:Parameter Name="original_BuyerID" Type="Int32" />
                                            <asp:Parameter Name="original_SellerID" Type="Int32" />
                                            <asp:Parameter Name="original_BookID" Type="Int32" />
                                            <asp:Parameter Name="original_SalesID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="BuyerID" Type="Int32" />
                                            <asp:Parameter Name="SellerID" Type="Int32" />
                                            <asp:Parameter Name="BookID" Type="Int32" />
                                            <asp:Parameter Name="SalesID" Type="Int32" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="BuyerID" Type="Int32" />
                                            <asp:Parameter Name="SellerID" Type="Int32" />
                                            <asp:Parameter Name="BookID" Type="Int32" />
                                            <asp:Parameter Name="SalesID" Type="Int32" />
                                            <asp:Parameter Name="original_OrderID" Type="Int32" />
                                            <asp:Parameter Name="original_BuyerID" Type="Int32" />
                                            <asp:Parameter Name="original_SellerID" Type="Int32" />
                                            <asp:Parameter Name="original_BookID" Type="Int32" />
                                            <asp:Parameter Name="original_SalesID" Type="Int32" />
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
