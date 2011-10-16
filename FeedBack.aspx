<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <b> <h2><asp:Label ID="lblFeedBack" runat="server"  Text="Feed Back"></asp:Label></h2></b>
    </div>
    
       
       <div align="center">
       <asp:Label ID="lblTo" runat="server" Text="To:" width="44px" ></asp:Label>
        <asp:TextBox ID="txtTo" runat="server" ReadOnly="True" width="124px">quezadajesus@hotmail.com</asp:TextBox><br />

        <asp:Label ID="lblFrom" runat="server" Text="From:" width="44px" ></asp:Label> 
        <asp:TextBox ID="txtFrom" runat="server" width="124px"></asp:TextBox><br />

        <asp:Label ID="lblSubject" runat="server" Text="Subject:" ></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server" width="124px"></asp:TextBox><br />
        
           <br />
        
        <asp:TextBox ID="txtBody" runat="server" Height="171px" TextMode="MultiLine"

            Width="270px"></asp:TextBox>
           <br />
        
           <br />

        <asp:Button ID="Btn_SendMail" runat="server" onclick="Btn_SendMail_Click"

            Text="Send Email" /><br />

        <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
       </div>
    </div>
</asp:Content>

