<%@ page language="VB" masterpagefile="~/ERMSMasterPageNonNav.master" autoeventwireup="false" inherits="frmSessionExpired, App_Web_4mamu2vz" title="TJL" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="808">
        <tr>
            <td class="smallBody" style="width: 20px">
            </td>
            <td class="smallBody" colspan="3">
                <br />
            </td>
        </tr>
        <tr>
            <td class="smallBody" style="width: 20px; height: 14px">
            </td>
            <td class="smallBody" colspan="3" style="height: 14px">
                Dear User,<br />
                <br />
                Your current session has expired.
                <asp:HyperLink ID="hlRedirectLogin" runat="server" CssClass="smallBody" NavigateUrl="~/frmUserLoginN.aspx">Please click here to log into the system.</asp:HyperLink><br />
            </td>
        </tr>
    </table>
</asp:Content>

