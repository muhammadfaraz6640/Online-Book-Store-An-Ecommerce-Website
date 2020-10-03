<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SeeAllBooks.aspx.cs" Inherits="Online_Book_Store.SeeAllBooks" %>
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
        <asp:Button ID="Button2" runat="server" Text="Search" class="btn btn-info" />
            
                        </div>
               <br />
               <br />
                <div class="section-title">
				<h2>Search All Books By BookID </h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Bid" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Bid" HeaderText="Bid" InsertVisible="False" ReadOnly="True" SortExpression="Bid" />
                                            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                                            <asp:BoundField DataField="Cid" HeaderText="Cid" SortExpression="Cid" />
                                            <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                                            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                                            <asp:BoundField DataField="BookPic" HeaderText="BookPic" SortExpression="BookPic" />
                                            <asp:BoundField DataField="DiscountPercent" HeaderText="DiscountPercent" SortExpression="DiscountPercent" />
                                            <asp:BoundField DataField="BookCondition" HeaderText="BookCondition" SortExpression="BookCondition" />
                                            <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" SortExpression="BookDescription" />
                                            <asp:BoundField DataField="IsCharity" HeaderText="IsCharity" SortExpression="IsCharity" />
                                            <asp:BoundField DataField="IsSold" HeaderText="IsSold" SortExpression="IsSold" />
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
                                              
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Books] WHERE [Bid] = @original_Bid AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Cid] = @original_Cid) OR ([Cid] IS NULL AND @original_Cid IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([BookPrice] = @original_BookPrice) OR ([BookPrice] IS NULL AND @original_BookPrice IS NULL)) AND (([BookPic] = @original_BookPic) OR ([BookPic] IS NULL AND @original_BookPic IS NULL)) AND (([DiscountPercent] = @original_DiscountPercent) OR ([DiscountPercent] IS NULL AND @original_DiscountPercent IS NULL)) AND (([BookCondition] = @original_BookCondition) OR ([BookCondition] IS NULL AND @original_BookCondition IS NULL)) AND (([BookDescription] = @original_BookDescription) OR ([BookDescription] IS NULL AND @original_BookDescription IS NULL)) AND (([IsCharity] = @original_IsCharity) OR ([IsCharity] IS NULL AND @original_IsCharity IS NULL)) AND (([IsSold] = @original_IsSold) OR ([IsSold] IS NULL AND @original_IsSold IS NULL))" InsertCommand="INSERT INTO [Books] ([BookName], [Cid], [Uid], [BookPrice], [BookPic], [DiscountPercent], [BookCondition], [BookDescription], [IsCharity], [IsSold]) VALUES (@BookName, @Cid, @Uid, @BookPrice, @BookPic, @DiscountPercent, @BookCondition, @BookDescription, @IsCharity, @IsSold)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Books] WHERE ([Bid] = @Bid)" UpdateCommand="UPDATE [Books] SET [BookName] = @BookName, [Cid] = @Cid, [Uid] = @Uid, [BookPrice] = @BookPrice, [BookPic] = @BookPic, [DiscountPercent] = @DiscountPercent, [BookCondition] = @BookCondition, [BookDescription] = @BookDescription, [IsCharity] = @IsCharity, [IsSold] = @IsSold WHERE [Bid] = @original_Bid AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Cid] = @original_Cid) OR ([Cid] IS NULL AND @original_Cid IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([BookPrice] = @original_BookPrice) OR ([BookPrice] IS NULL AND @original_BookPrice IS NULL)) AND (([BookPic] = @original_BookPic) OR ([BookPic] IS NULL AND @original_BookPic IS NULL)) AND (([DiscountPercent] = @original_DiscountPercent) OR ([DiscountPercent] IS NULL AND @original_DiscountPercent IS NULL)) AND (([BookCondition] = @original_BookCondition) OR ([BookCondition] IS NULL AND @original_BookCondition IS NULL)) AND (([BookDescription] = @original_BookDescription) OR ([BookDescription] IS NULL AND @original_BookDescription IS NULL)) AND (([IsCharity] = @original_IsCharity) OR ([IsCharity] IS NULL AND @original_IsCharity IS NULL)) AND (([IsSold] = @original_IsSold) OR ([IsSold] IS NULL AND @original_IsSold IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Bid" Type="Int32" />
                                            <asp:Parameter Name="original_BookName" Type="String" />
                                            <asp:Parameter Name="original_Cid" Type="Int32" />
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                            <asp:Parameter Name="original_BookPrice" Type="Double" />
                                            <asp:Parameter Name="original_BookPic" Type="String" />
                                            <asp:Parameter Name="original_DiscountPercent" Type="Double" />
                                            <asp:Parameter Name="original_BookCondition" Type="String" />
                                            <asp:Parameter Name="original_BookDescription" Type="String" />
                                            <asp:Parameter Name="original_IsCharity" Type="String" />
                                            <asp:Parameter Name="original_IsSold" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="BookName" Type="String" />
                                            <asp:Parameter Name="Cid" Type="Int32" />
                                            <asp:Parameter Name="Uid" Type="Int32" />
                                            <asp:Parameter Name="BookPrice" Type="Double" />
                                            <asp:Parameter Name="BookPic" Type="String" />
                                            <asp:Parameter Name="DiscountPercent" Type="Double" />
                                            <asp:Parameter Name="BookCondition" Type="String" />
                                            <asp:Parameter Name="BookDescription" Type="String" />
                                            <asp:Parameter Name="IsCharity" Type="String" />
                                            <asp:Parameter Name="IsSold" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="Bid" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="BookName" Type="String" />
                                            <asp:Parameter Name="Cid" Type="Int32" />
                                            <asp:Parameter Name="Uid" Type="Int32" />
                                            <asp:Parameter Name="BookPrice" Type="Double" />
                                            <asp:Parameter Name="BookPic" Type="String" />
                                            <asp:Parameter Name="DiscountPercent" Type="Double" />
                                            <asp:Parameter Name="BookCondition" Type="String" />
                                            <asp:Parameter Name="BookDescription" Type="String" />
                                            <asp:Parameter Name="IsCharity" Type="String" />
                                            <asp:Parameter Name="IsSold" Type="String" />
                                            <asp:Parameter Name="original_Bid" Type="Int32" />
                                            <asp:Parameter Name="original_BookName" Type="String" />
                                            <asp:Parameter Name="original_Cid" Type="Int32" />
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                            <asp:Parameter Name="original_BookPrice" Type="Double" />
                                            <asp:Parameter Name="original_BookPic" Type="String" />
                                            <asp:Parameter Name="original_DiscountPercent" Type="Double" />
                                            <asp:Parameter Name="original_BookCondition" Type="String" />
                                            <asp:Parameter Name="original_BookDescription" Type="String" />
                                            <asp:Parameter Name="original_IsCharity" Type="String" />
                                            <asp:Parameter Name="original_IsSold" Type="String" />
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
				<h2>See All Books</h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">                                      
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Bid" DataSourceID="SqlDataSource2">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                            <asp:BoundField DataField="Bid" HeaderText="Bid" InsertVisible="False" ReadOnly="True" SortExpression="Bid" />
                                            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                                            <asp:BoundField DataField="Cid" HeaderText="Cid" SortExpression="Cid" />
                                            <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                                            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
                                            <asp:BoundField DataField="BookPic" HeaderText="BookPic" SortExpression="BookPic" />
                                            <asp:BoundField DataField="DiscountPercent" HeaderText="DiscountPercent" SortExpression="DiscountPercent" />
                                            <asp:BoundField DataField="BookCondition" HeaderText="BookCondition" SortExpression="BookCondition" />
                                            <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" SortExpression="BookDescription" />
                                            <asp:BoundField DataField="IsCharity" HeaderText="IsCharity" SortExpression="IsCharity" />
                                            <asp:BoundField DataField="IsSold" HeaderText="IsSold" SortExpression="IsSold" />
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
                                       
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Books] WHERE [Bid] = @original_Bid AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Cid] = @original_Cid) OR ([Cid] IS NULL AND @original_Cid IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([BookPrice] = @original_BookPrice) OR ([BookPrice] IS NULL AND @original_BookPrice IS NULL)) AND (([BookPic] = @original_BookPic) OR ([BookPic] IS NULL AND @original_BookPic IS NULL)) AND (([DiscountPercent] = @original_DiscountPercent) OR ([DiscountPercent] IS NULL AND @original_DiscountPercent IS NULL)) AND (([BookCondition] = @original_BookCondition) OR ([BookCondition] IS NULL AND @original_BookCondition IS NULL)) AND (([BookDescription] = @original_BookDescription) OR ([BookDescription] IS NULL AND @original_BookDescription IS NULL)) AND (([IsCharity] = @original_IsCharity) OR ([IsCharity] IS NULL AND @original_IsCharity IS NULL)) AND (([IsSold] = @original_IsSold) OR ([IsSold] IS NULL AND @original_IsSold IS NULL))" InsertCommand="INSERT INTO [Books] ([BookName], [Cid], [Uid], [BookPrice], [BookPic], [DiscountPercent], [BookCondition], [BookDescription], [IsCharity], [IsSold]) VALUES (@BookName, @Cid, @Uid, @BookPrice, @BookPic, @DiscountPercent, @BookCondition, @BookDescription, @IsCharity, @IsSold)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookName] = @BookName, [Cid] = @Cid, [Uid] = @Uid, [BookPrice] = @BookPrice, [BookPic] = @BookPic, [DiscountPercent] = @DiscountPercent, [BookCondition] = @BookCondition, [BookDescription] = @BookDescription, [IsCharity] = @IsCharity, [IsSold] = @IsSold WHERE [Bid] = @original_Bid AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([Cid] = @original_Cid) OR ([Cid] IS NULL AND @original_Cid IS NULL)) AND (([Uid] = @original_Uid) OR ([Uid] IS NULL AND @original_Uid IS NULL)) AND (([BookPrice] = @original_BookPrice) OR ([BookPrice] IS NULL AND @original_BookPrice IS NULL)) AND (([BookPic] = @original_BookPic) OR ([BookPic] IS NULL AND @original_BookPic IS NULL)) AND (([DiscountPercent] = @original_DiscountPercent) OR ([DiscountPercent] IS NULL AND @original_DiscountPercent IS NULL)) AND (([BookCondition] = @original_BookCondition) OR ([BookCondition] IS NULL AND @original_BookCondition IS NULL)) AND (([BookDescription] = @original_BookDescription) OR ([BookDescription] IS NULL AND @original_BookDescription IS NULL)) AND (([IsCharity] = @original_IsCharity) OR ([IsCharity] IS NULL AND @original_IsCharity IS NULL)) AND (([IsSold] = @original_IsSold) OR ([IsSold] IS NULL AND @original_IsSold IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Bid" Type="Int32" />
                                            <asp:Parameter Name="original_BookName" Type="String" />
                                            <asp:Parameter Name="original_Cid" Type="Int32" />
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                            <asp:Parameter Name="original_BookPrice" Type="Double" />
                                            <asp:Parameter Name="original_BookPic" Type="String" />
                                            <asp:Parameter Name="original_DiscountPercent" Type="Double" />
                                            <asp:Parameter Name="original_BookCondition" Type="String" />
                                            <asp:Parameter Name="original_BookDescription" Type="String" />
                                            <asp:Parameter Name="original_IsCharity" Type="String" />
                                            <asp:Parameter Name="original_IsSold" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="BookName" Type="String" />
                                            <asp:Parameter Name="Cid" Type="Int32" />
                                            <asp:Parameter Name="Uid" Type="Int32" />
                                            <asp:Parameter Name="BookPrice" Type="Double" />
                                            <asp:Parameter Name="BookPic" Type="String" />
                                            <asp:Parameter Name="DiscountPercent" Type="Double" />
                                            <asp:Parameter Name="BookCondition" Type="String" />
                                            <asp:Parameter Name="BookDescription" Type="String" />
                                            <asp:Parameter Name="IsCharity" Type="String" />
                                            <asp:Parameter Name="IsSold" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="BookName" Type="String" />
                                            <asp:Parameter Name="Cid" Type="Int32" />
                                            <asp:Parameter Name="Uid" Type="Int32" />
                                            <asp:Parameter Name="BookPrice" Type="Double" />
                                            <asp:Parameter Name="BookPic" Type="String" />
                                            <asp:Parameter Name="DiscountPercent" Type="Double" />
                                            <asp:Parameter Name="BookCondition" Type="String" />
                                            <asp:Parameter Name="BookDescription" Type="String" />
                                            <asp:Parameter Name="IsCharity" Type="String" />
                                            <asp:Parameter Name="IsSold" Type="String" />
                                            <asp:Parameter Name="original_Bid" Type="Int32" />
                                            <asp:Parameter Name="original_BookName" Type="String" />
                                            <asp:Parameter Name="original_Cid" Type="Int32" />
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                            <asp:Parameter Name="original_BookPrice" Type="Double" />
                                            <asp:Parameter Name="original_BookPic" Type="String" />
                                            <asp:Parameter Name="original_DiscountPercent" Type="Double" />
                                            <asp:Parameter Name="original_BookCondition" Type="String" />
                                            <asp:Parameter Name="original_BookDescription" Type="String" />
                                            <asp:Parameter Name="original_IsCharity" Type="String" />
                                            <asp:Parameter Name="original_IsSold" Type="String" />
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
