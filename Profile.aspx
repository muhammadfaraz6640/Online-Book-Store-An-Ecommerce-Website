<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Online_Book_Store.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<section class="page-top-section set-bg" data-setbg="img/admin.jpg">	
	</section>
	<div class="section-title">
				<h2 style="color:coral;">Your Information</h2>
			</div>
	                         <div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive" style="margin:5%;margin-top:0%; align-content:center;margin-right:5%;">  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Uid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Width="819px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Uid" HeaderText="Uid" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Users] WHERE [Uid] = @original_Uid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Pass] = @original_Pass) OR ([Pass] IS NULL AND @original_Pass IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))" InsertCommand="INSERT INTO [Users] ([Name], [Contact], [Gender], [Address], [PostCode], [Email], [Pass], [City]) VALUES (@Name, @Contact, @Gender, @Address, @PostCode, @Email, @Pass, @City)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users] WHERE ([Uid] = @Uid)" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Contact] = @Contact, [Gender] = @Gender, [Address] = @Address, [PostCode] = @PostCode, [Email] = @Email, [Pass] = @Pass, [City] = @City WHERE [Uid] = @original_Uid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Pass] = @original_Pass) OR ([Pass] IS NULL AND @original_Pass IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Uid" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Contact" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_PostCode" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Pass" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Contact" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Pass" Type="String" />
                <asp:Parameter Name="City" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Uid" QueryStringField="Uid" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Contact" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Pass" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="original_Uid" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Contact" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_PostCode" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Pass" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
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
				<h2 style="color:coral;">Your Orders</h2>
			</div>
     <div id="mainContainer" class="container">  
     <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive" style="margin:5%;margin-top:0%; align-content:center;margin-right:5%;">  
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="SalesID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="None" Width="788px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="BuyerID" HeaderText="BuyerID" SortExpression="BuyerID" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            <asp:BoundField DataField="dated" HeaderText="dated" SortExpression="dated" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="SalesID" HeaderText="SalesID" InsertVisible="False" ReadOnly="True" SortExpression="SalesID" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" SelectCommand="SELECT [BuyerID], [Total], [dated], [Status], [SalesID] FROM [Sales] WHERE ([BuyerID] = @BuyerID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="BuyerID" QueryStringField="Uid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                                      </div>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>
</asp:Content>
