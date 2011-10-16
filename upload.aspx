<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br />
<div id="wrapper" align="center">
    <!--Use the Header-->
    <div id="header">
		<h1>File Cubby</h1>
	</div>
    
    <div id="menu"></div>
    <div>

        <form id="frmUpload" runat="server" align="center"
          style="border-color: #0000FF #FFFFFF #FFFFFF #FFFFFF; padding: 30px; border-style: inherit; border-top-width: 19px;">
        <asp:FileUpload ID="fileUpload" runat="server" /><br />
        <asp:Button ID="btnUpload" runat="server" Text="Upload" 
            onclick="btnUpload_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
            onclick="btnCancel_Click" />
    </form>
    </div>
    
</div>
</body>
</html>
