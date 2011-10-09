<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="listAllUsers.aspx.cs" Inherits="listAllUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="logon" 
    AutoGenerateColumns="False" DataKeyNames="user_id" Width="315px">
    <Columns>
        <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" 
            SortExpression="user_id" />
        <asp:BoundField DataField="user_Password" HeaderText="user_Password" 
            SortExpression="user_Password" />
        <asp:BoundField DataField="firstname" HeaderText="firstname" 
            SortExpression="firstname" />
        <asp:BoundField DataField="lastname" HeaderText="lastname" 
            SortExpression="lastname" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:CommandField HeaderText="Delte" ShowDeleteButton="True" 
            ShowHeader="True" />
        <asp:CommandField HeaderText="Edit" ShowEditButton="True" ShowHeader="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="logon" runat="server" 
    ConnectionString="<%$ ConnectionStrings:websitedb %>" 
    DeleteCommand="DELETE FROM [quezada_logon_tbl] WHERE [user_id] = @user_id" 
    InsertCommand="INSERT INTO [quezada_logon_tbl] ([user_id], [user_Password], [firstname], [lastname], [email]) VALUES (@user_id, @user_Password, @firstname, @lastname, @email)" 
    SelectCommand="SELECT * FROM [quezada_logon_tbl]" 
    
    UpdateCommand="UPDATE [quezada_logon_tbl] SET [user_Password] = @user_Password, [firstname] = @firstname, [lastname] = @lastname, [email] = @email WHERE [user_id] = @user_id">
    <DeleteParameters>
        <asp:Parameter Name="user_id" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="user_id" Type="String" />
        <asp:Parameter Name="user_Password" Type="String" />
        <asp:Parameter Name="firstname" Type="String" />
        <asp:Parameter Name="lastname" Type="String" />
        <asp:Parameter Name="email" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="user_Password" Type="String" />
        <asp:Parameter Name="firstname" Type="String" />
        <asp:Parameter Name="lastname" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="user_id" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

