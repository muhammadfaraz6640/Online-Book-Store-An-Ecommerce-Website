<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SeeAllUsers.aspx.cs" Inherits="Online_Book_Store.SeeAllUsers" %>
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
				<h2>Search All Users By Uid </h2>
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
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Uid" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="Uid" HeaderText="Uid" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                            <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
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
                                              
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Users] WHERE [Uid] = @original_Uid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))" InsertCommand="INSERT INTO [Users] ([Name], [Contact], [Gender], [Address], [PostCode], [Email], [City]) VALUES (@Name, @Contact, @Gender, @Address, @PostCode, @Email, @City)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Uid], [Name], [Contact], [Gender], [Address], [PostCode], [Email], [City] FROM [Users] WHERE ([Uid] = @Uid)" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Contact] = @Contact, [Gender] = @Gender, [Address] = @Address, [PostCode] = @PostCode, [Email] = @Email, [City] = @City WHERE [Uid] = @original_Uid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                            <asp:Parameter Name="original_Name" Type="String" />
                                            <asp:Parameter Name="original_Contact" Type="String" />
                                            <asp:Parameter Name="original_Gender" Type="String" />
                                            <asp:Parameter Name="original_Address" Type="String" />
                                            <asp:Parameter Name="original_PostCode" Type="String" />
                                            <asp:Parameter Name="original_Email" Type="String" />
                                            <asp:Parameter Name="original_City" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Contact" Type="String" />
                                            <asp:Parameter Name="Gender" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="PostCode" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="City" Type="String" />
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="Uid" PropertyName="Text" Type="Int32" />
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Contact" Type="String" />
                                            <asp:Parameter Name="Gender" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="PostCode" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="City" Type="String" />
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                            <asp:Parameter Name="original_Name" Type="String" />
                                            <asp:Parameter Name="original_Contact" Type="String" />
                                            <asp:Parameter Name="original_Gender" Type="String" />
                                            <asp:Parameter Name="original_Address" Type="String" />
                                            <asp:Parameter Name="original_PostCode" Type="String" />
                                            <asp:Parameter Name="original_Email" Type="String" />
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
				<h2>See All Users</h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">                                      
                                   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Uid" DataSourceID="SqlDataSource2">
                                       <Columns>
                                           <asp:CommandField ShowDeleteButton="True" />
                                           <asp:BoundField DataField="Uid" HeaderText="Uid" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
                                           <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                           <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                                           <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                           <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                           <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
                                           <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                           <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
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
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Users] WHERE [Uid] = @original_Uid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))" InsertCommand="INSERT INTO [Users] ([Name], [Contact], [Gender], [Address], [PostCode], [Email], [City]) VALUES (@Name, @Contact, @Gender, @Address, @PostCode, @Email, @City)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Uid], [Name], [Contact], [Gender], [Address], [PostCode], [Email], [City] FROM [Users]" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Contact] = @Contact, [Gender] = @Gender, [Address] = @Address, [PostCode] = @PostCode, [Email] = @Email, [City] = @City WHERE [Uid] = @original_Uid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Contact] = @original_Contact) OR ([Contact] IS NULL AND @original_Contact IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                            <asp:Parameter Name="original_Name" Type="String" />
                                            <asp:Parameter Name="original_Contact" Type="String" />
                                            <asp:Parameter Name="original_Gender" Type="String" />
                                            <asp:Parameter Name="original_Address" Type="String" />
                                            <asp:Parameter Name="original_PostCode" Type="String" />
                                            <asp:Parameter Name="original_Email" Type="String" />
                                            <asp:Parameter Name="original_City" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Contact" Type="String" />
                                            <asp:Parameter Name="Gender" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="PostCode" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="City" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Contact" Type="String" />
                                            <asp:Parameter Name="Gender" Type="String" />
                                            <asp:Parameter Name="Address" Type="String" />
                                            <asp:Parameter Name="PostCode" Type="String" />
                                            <asp:Parameter Name="Email" Type="String" />
                                            <asp:Parameter Name="City" Type="String" />
                                            <asp:Parameter Name="original_Uid" Type="Int32" />
                                            <asp:Parameter Name="original_Name" Type="String" />
                                            <asp:Parameter Name="original_Contact" Type="String" />
                                            <asp:Parameter Name="original_Gender" Type="String" />
                                            <asp:Parameter Name="original_Address" Type="String" />
                                            <asp:Parameter Name="original_PostCode" Type="String" />
                                            <asp:Parameter Name="original_Email" Type="String" />
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
               
</div>                  
               
</asp:Content>
