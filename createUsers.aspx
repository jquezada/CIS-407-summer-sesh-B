<%@ Page Language="C#" AutoEventWireup="true" CodeFile="createUsers.aspx.cs" Inherits="createUsers" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">   
<title>Create Account</title>
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
    <div align ="Center" >           
      <b> <h2><asp:Label ID="lblCreateAccount" runat="server"  Text="Create Account"></asp:Label></h2></b>
    </div>
   <br />
    <div align ="center">   
    <asp:Panel ID="Panel1" runat="server" Height="250px" HorizontalAlign="Left"
        Width="450px">
            <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" Width="124px" 
                CausesValidation="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtFirstName" 
                ErrorMessage="*A first name is required!" ForeColor="Red" width="196px" 
                Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblLastName" runat="server" Text="Last Name:" width="64px"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" width="124px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtLastName" 
                ErrorMessage="*A last name is required!" ForeColor="Red" width="196px" 
                Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblUsername" runat="server" Text="Username:" width="64px"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" width="124px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtUsername" 
                ErrorMessage="*Please enter a unique username!" ForeColor="Red" 
                width="196px" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblPassword" runat="server" Text="Password:" width="64px"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" width="124px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtPassword" 
                ErrorMessage="*Please enter a password!" ForeColor="Red" width="196px" 
                Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblReEnter" runat="server" Text="Reenter Password:" width="64px"></asp:Label>
            <asp:TextBox ID="txtReEnter" runat="server" TextMode="Password" width="124px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtReEnter" 
                ErrorMessage="*Passwords do not match!" ForeColor="Red" width="196px" 
                Display="Dynamic" EnableClientScript="False"></asp:CompareValidator>
            <br />
            <asp:Label ID="lblEmail" runat="server" Text="Email:" width="64px"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" width="124px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtEmail" 
                ErrorMessage="*Please enter a correct email!" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                width="196px" Display="Dynamic" EnableClientScript="False"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                onclick="btnSubmit_Click" />
            <asp:Button ID="btnCancel" runat="server" CausesValidation="False" Text="Cancel" 
                onclick="btnCancel_Click" />
            <br />
            </asp:Panel>
    </div>
    
    <div id="footer">
		
			&nbsp;</div>
	</div>
    </form>
</body>
</html>
