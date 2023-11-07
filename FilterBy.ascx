<%@ control language="VB" autoeventwireup="true" inherits="FilterBy, App_Web_0syuegnt" %>


<link href="Styles/Site.css" rel="stylesheet" type="text/css" />
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td class="smallBody" style="height: 24px;" colspan="5" valign="middle">
            Search By&nbsp;
            <asp:DropDownList ID="ddlSearchSearchBy" runat="server" CssClass="dropDown">
</asp:DropDownList>&nbsp;
            Search For&nbsp;
            <asp:TextBox ID="txtSearchSearchFor" runat="server" CssClass="txtBox" Width="140px"></asp:TextBox>
          <asp:Button ID="btnSearchSearch" runat="server" Text="Search" CssClass="btnStyle" />
            <asp:Button ID="btnSearchShowAll" runat="server" Text="Show All" CssClass="btnStyle" /><br />
            <br />
        </td>
    </tr>
    <tr>
    <td colspan="5">
     <table border="0" cellpadding="0" cellspacing="0" width="100%">
     <tr>
        <td align="left" valign="top" width="500px" style="height: 19px">
        <asp:Label ID="lblSearchErrMessage" runat="server" ForeColor="Red" CssClass="smallBodyRed"></asp:Label><asp:Label
        ID="lblSearchMessage" runat="server" CssClass="smallBody"></asp:Label>
        </td>
        <td style="height: 19px">
            <asp:HiddenField ID="hfSearchQS" runat="server" /><asp:HiddenField ID="hfSearchGvID" runat="server" /><asp:HiddenField ID="hfSearchPaging" runat="server" />
        </td>
        </tr>
    </table>
    </td>
    </tr>
</table>
