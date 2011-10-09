<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logon.aspx.cs" Inherits="logon" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <!--Bring in the Css -->
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
   </head>
<body>
<form id="form1" runat="server">
    <div id="wrapper">
    <!--Use the Header-->
    <div id="header">
		<h1>File Cubby</h1>
	</div>
    <div id="menu"></div>
    <br />
    <br />
    <br />
        
    <div class="style1" align="center" >
    <asp:Label runat ="server" ID="lblError" Visible = "false" BackColor="Red"></asp:Label><br />
    <asp:Label ID="lblUserName" runat="server" Text="Username :" Width="80px"></asp:Label> 
    <asp:TextBox ID="txtUserName" runat= "server"></asp:TextBox><br />
    <asp:Label ID="lblPassword" runat="server" Text="Password :" Width="80px"></asp:Label> 
    <asp:TextBox ID="txtPassword" runat= "server" TextMode="Password"></asp:TextBox><br />
    <asp:Button ID="btnLogon" runat="server" Text="Log in" onclick="btnLogon_Click"/>
        <asp:Button ID="btnCreateAccount" runat="server" 
            onclick="btnCreateAccount_Click" Text="Create Account" />
       
        <br />
        <br />
    <div font="" >
        <h5 style="font-size: large; font-weight: bold; font-style: normal; font-family: 'Times New Roman', Times, serif">
         Welcome to File Cubby. If you are a returning user please log in. If this is your first
     time visiting then let me explain just what File Cubby is. File Cubby is a simple convenient
     secure way to store documents,pictures, and files online without the hassle of having to carry a
     thumb drive. Your files can only be viewed by you however if you are working on a 
            project and need to share files with members of a group that option is 
            availible.All you need to do is create an account and you are set to go!
     </h5>   
    </div>
    <br />
        <asp:Table ID="Table1" runat="server" CellPadding="-1" CellSpacing="-1" 
            Height="184px" Width="696px">
        </asp:Table>
 
   
   <!--Include the footer-->
   	<div id="footer">
		<div id="footer-valid">
			<a href="http://validator.w3.org/check/referer">xhtml</a> / <a href="http://www.ginger-ninja.net/">ginger ninja!</a>
		</div>
	</div>
   </div>
  </div>
    </form>
</body>
</html>
