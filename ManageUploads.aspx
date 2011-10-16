<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="ManageUploads.aspx.cs" Inherits="ManageUploads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="grdManageUploads" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="file" DataSourceID="manageUsers" Width="165px">
    <Columns>
        <asp:BoundField DataField="file" HeaderText="file" ReadOnly="True" 
            SortExpression="file" />
        <asp:BoundField DataField="user_id" HeaderText="user_id" 
            SortExpression="user_id" />
        <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" 
            ShowHeader="True" />
        <asp:CommandField HeaderText="Edit" ShowEditButton="True" ShowHeader="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="manageUsers" runat="server" 
    ConnectionString="<%$ ConnectionStrings:websitedb %>" 
    DeleteCommand="DELETE FROM [quezada_Uploads] WHERE [file] = @file" 
    InsertCommand="INSERT INTO [quezada_Uploads] ([file], [user_id]) VALUES (@file, @user_id)" 
    SelectCommand="SELECT * FROM [quezada_Uploads]" 
    UpdateCommand="UPDATE [quezada_Uploads] SET [user_id] = @user_id WHERE [file] = @file">
    <DeleteParameters>
        <asp:Parameter Name="file" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="file" Type="String" />
        <asp:Parameter Name="user_id" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="user_id" Type="String" />
        <asp:Parameter Name="file" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

