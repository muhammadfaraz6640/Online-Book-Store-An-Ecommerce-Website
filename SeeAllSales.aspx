<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SeeAllSales.aspx.cs" Inherits="Online_Book_Store.SeeAllSales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
        .mov{
            margin-left : 10%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="content-body">
             <div class="section-title">
				<h2>Search All Sales By SalesID </h2>
			</div>
        <div class="mov">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Search by property id"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Search" class="btn btn-info" />
            
                        </div>
               <br />
               <br />
                
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="SalesID" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="SalesID" HeaderText="SalesID" InsertVisible="False" ReadOnly="True" SortExpression="SalesID" />
                                            <asp:BoundField DataField="BuyerID" HeaderText="BuyerID" SortExpression="BuyerID" />
                                            <asp:BoundField DataField="MethodID" HeaderText="MethodID" SortExpression="MethodID" />
                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                            <asp:BoundField DataField="dated" HeaderText="dated" SortExpression="dated" />
                                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
                                              
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Sales] WHERE [SalesID] = @original_SalesID AND (([BuyerID] = @original_BuyerID) OR ([BuyerID] IS NULL AND @original_BuyerID IS NULL)) AND (([MethodID] = @original_MethodID) OR ([MethodID] IS NULL AND @original_MethodID IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([dated] = @original_dated) OR ([dated] IS NULL AND @original_dated IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [Sales] ([BuyerID], [MethodID], [Total], [dated], [Status]) VALUES (@BuyerID, @MethodID, @Total, @dated, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Sales] WHERE ([SalesID] = @SalesID) ORDER BY [Total] DESC" UpdateCommand="UPDATE [Sales] SET [BuyerID] = @BuyerID, [MethodID] = @MethodID, [Total] = @Total, [dated] = @dated, [Status] = @Status WHERE [SalesID] = @original_SalesID AND (([BuyerID] = @original_BuyerID) OR ([BuyerID] IS NULL AND @original_BuyerID IS NULL)) AND (([MethodID] = @original_MethodID) OR ([MethodID] IS NULL AND @original_MethodID IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([dated] = @original_dated) OR ([dated] IS NULL AND @original_dated IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_SalesID" Type="Int32" />
                                            <asp:Parameter Name="original_BuyerID" Type="Int32" />
                                            <asp:Parameter Name="original_MethodID" Type="Int32" />
                                            <asp:Parameter Name="original_Total" Type="Double" />
                                            <asp:Parameter Name="original_dated" Type="DateTime" />
                                            <asp:Parameter Name="original_Status" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="BuyerID" Type="Int32" />
                                            <asp:Parameter Name="MethodID" Type="Int32" />
                                            <asp:Parameter Name="Total" Type="Double" />
                                            <asp:Parameter Name="dated" Type="DateTime" />
                                            <asp:Parameter Name="Status" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="SalesID" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="BuyerID" Type="Int32" />
                                            <asp:Parameter Name="MethodID" Type="Int32" />
                                            <asp:Parameter Name="Total" Type="Double" />
                                            <asp:Parameter Name="dated" Type="DateTime" />
                                            <asp:Parameter Name="Status" Type="String" />
                                            <asp:Parameter Name="original_SalesID" Type="Int32" />
                                            <asp:Parameter Name="original_BuyerID" Type="Int32" />
                                            <asp:Parameter Name="original_MethodID" Type="Int32" />
                                            <asp:Parameter Name="original_Total" Type="Double" />
                                            <asp:Parameter Name="original_dated" Type="DateTime" />
                                            <asp:Parameter Name="original_Status" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" SelectCommand="SELECT * FROM [Sales] WHERE ([SalesID] = @SalesID) ORDER BY [Total]">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="SalesID" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                              
                                </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>
           
         <div class="section-title">
				<h2>See All Sales</h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">                                      
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="SalesID" DataSourceID="SqlDataSource3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" >
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="SalesID" HeaderText="SalesID" InsertVisible="False" ReadOnly="True" SortExpression="SalesID" />
                                            <asp:BoundField DataField="BuyerID" HeaderText="BuyerID" SortExpression="BuyerID" />
                                            <asp:BoundField DataField="MethodID" HeaderText="MethodID" SortExpression="MethodID" />
                                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                                            <asp:BoundField DataField="dated" HeaderText="dated" SortExpression="dated" />
                                            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
                                       
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Sales] WHERE [SalesID] = @original_SalesID AND (([BuyerID] = @original_BuyerID) OR ([BuyerID] IS NULL AND @original_BuyerID IS NULL)) AND (([MethodID] = @original_MethodID) OR ([MethodID] IS NULL AND @original_MethodID IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([dated] = @original_dated) OR ([dated] IS NULL AND @original_dated IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [Sales] ([BuyerID], [MethodID], [Total], [dated], [Status]) VALUES (@BuyerID, @MethodID, @Total, @dated, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Sales]" UpdateCommand="UPDATE [Sales] SET [BuyerID] = @BuyerID, [MethodID] = @MethodID, [Total] = @Total, [dated] = @dated, [Status] = @Status WHERE [SalesID] = @original_SalesID AND (([BuyerID] = @original_BuyerID) OR ([BuyerID] IS NULL AND @original_BuyerID IS NULL)) AND (([MethodID] = @original_MethodID) OR ([MethodID] IS NULL AND @original_MethodID IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([dated] = @original_dated) OR ([dated] IS NULL AND @original_dated IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_SalesID" Type="Int32" />
                                            <asp:Parameter Name="original_BuyerID" Type="Int32" />
                                            <asp:Parameter Name="original_MethodID" Type="Int32" />
                                            <asp:Parameter Name="original_Total" Type="Double" />
                                            <asp:Parameter Name="original_dated" Type="DateTime" />
                                            <asp:Parameter Name="original_Status" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="BuyerID" Type="Int32" />
                                            <asp:Parameter Name="MethodID" Type="Int32" />
                                            <asp:Parameter Name="Total" Type="Double" />
                                            <asp:Parameter Name="dated" Type="DateTime" />
                                            <asp:Parameter Name="Status" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="BuyerID" Type="Int32" />
                                            <asp:Parameter Name="MethodID" Type="Int32" />
                                            <asp:Parameter Name="Total" Type="Double" />
                                            <asp:Parameter Name="dated" Type="DateTime" />
                                            <asp:Parameter Name="Status" Type="String" />
                                            <asp:Parameter Name="original_SalesID" Type="Int32" />
                                            <asp:Parameter Name="original_BuyerID" Type="Int32" />
                                            <asp:Parameter Name="original_MethodID" Type="Int32" />
                                            <asp:Parameter Name="original_Total" Type="Double" />
                                            <asp:Parameter Name="original_dated" Type="DateTime" />
                                            <asp:Parameter Name="original_Status" Type="String" />
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
				<h2>Payment Method</h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">                                      
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Pid" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="312px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                                            <asp:BoundField DataField="MethodName" HeaderText="MethodName" SortExpression="MethodName" />
                                        </Columns>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
                                       
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" SelectCommand="SELECT * FROM [PaymentMethod]"></asp:SqlDataSource>
                                       
                                </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>

</div>                  

</asp:Content>
