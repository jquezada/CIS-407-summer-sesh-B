<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirmation.aspx.cs" Inherits="Confirmation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation</title>
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
    <div align ="center">
         <h4>Congratulations Account Created!</h4>
    </div><br />
    
    <div align ="center" 
            
            
            style="font-family: 'Times New Roman', Times, serif; font-size: 18px; font-style: normal; text-transform: none; color: #000000;">
        Thank you for creating an account with File Cubby. Here are a couple of things you should know in 
        order to get started.  
    
        Please click on the log on button to proceed the log on page. Now you will
        be able to logon to your account and start loading files onto File 
        Cubby and it will also show what files you currently have stored on File Cubby.
        <br />
        <br />
        <asp:Button ID="btnLogon" runat="server" onclick="btnLogon_Click" 
            Text="Log On" />
        <br />

    </div>
    </form>
</body>
</html>
