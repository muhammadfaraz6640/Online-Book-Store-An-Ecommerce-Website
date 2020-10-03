<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SeeAllContacts.aspx.cs" Inherits="Online_Book_Store.SeeAllContacts" %>
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
				<h2>See All Messages From Contact Us Page</h2>
			</div>
<div id="mainContainer" class="container">  
            <div class="shadowBox">  
                <div class="page-container">  
                    <div class="container">                          
                        <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Cid" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:CommandField ShowDeleteButton="True" />
                                            <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" ReadOnly="True" SortExpression="Cid" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                            <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                                            <asp:BoundField DataField="body" HeaderText="body" SortExpression="body" />
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
                                              
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OnlineBookStore %>" DeleteCommand="DELETE FROM [Contact] WHERE [Cid] = @original_Cid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([subject] = @original_subject) OR ([subject] IS NULL AND @original_subject IS NULL)) AND (([body] = @original_body) OR ([body] IS NULL AND @original_body IS NULL))" InsertCommand="INSERT INTO [Contact] ([Name], [email], [subject], [body]) VALUES (@Name, @email, @subject, @body)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Contact]" UpdateCommand="UPDATE [Contact] SET [Name] = @Name, [email] = @email, [subject] = @subject, [body] = @body WHERE [Cid] = @original_Cid AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([subject] = @original_subject) OR ([subject] IS NULL AND @original_subject IS NULL)) AND (([body] = @original_body) OR ([body] IS NULL AND @original_body IS NULL))">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_Cid" Type="Int32" />
                                            <asp:Parameter Name="original_Name" Type="String" />
                                            <asp:Parameter Name="original_email" Type="String" />
                                            <asp:Parameter Name="original_subject" Type="String" />
                                            <asp:Parameter Name="original_body" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="email" Type="String" />
                                            <asp:Parameter Name="subject" Type="String" />
                                            <asp:Parameter Name="body" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="email" Type="String" />
                                            <asp:Parameter Name="subject" Type="String" />
                                            <asp:Parameter Name="body" Type="String" />
                                            <asp:Parameter Name="original_Cid" Type="Int32" />
                                            <asp:Parameter Name="original_Name" Type="String" />
                                            <asp:Parameter Name="original_email" Type="String" />
                                            <asp:Parameter Name="original_subject" Type="String" />
                                            <asp:Parameter Name="original_body" Type="String" />
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
