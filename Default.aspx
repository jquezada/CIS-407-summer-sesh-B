<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align= "center">
    
        <asp:ImageButton ID="imgbtnUpload" runat="server" Height="23px" 
            ImageUrl="~/images/File-Icon-PSD.jpg" onclick="ImageButton1_Click" 
            PostBackUrl="~/upload.aspx" />
        <asp:LinkButton ID="lnkBtnUpload" runat="server" ForeColor="#33CCFF" 
            PostBackUrl="~/upload.aspx" onclick="lnkBtnUpload_Click">Upload</asp:LinkButton>
    </div>
    <!--Will repeat as many times as the items you want to repeat-->
    <asp:repeater id="rptUploads" runat="server">       
        <HeaderTemplate>
          <table>
            <tr>
                <td>
                    File Name
                <hr width="675px" /> 

                </td>                
            </tr>
        </HeaderTemplate>
             
             <ItemTemplate>
            <tr>
                <td>
                   <%#  DataBinder.Eval(Container.DataItem,"[file]" ) %>
                </td>                
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:repeater>
    <br />
</asp:Content>

