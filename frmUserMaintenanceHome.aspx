<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmUserMaintenanceHome, App_Web_vqrj3x4b" title="TJL > User Maintenance Home" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Src="ctrlMainObjectNavigation.ascx" TagName="ctrlMainObjectNavigation"
    TagPrefix="uc2" %>

<%@ Register Src="ctrlNavgation.ascx" TagName="ctrlNavgation" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="808">
        <tr>
            <td class="normalBody" style="width: 20px; height: 14px">
            </td>
            <td class="normalBody" colspan="3" style="height: 14px">
                <br />
            </td>
        </tr>
        <tr>
            <td class="normalBody" style="width: 20px">
                &nbsp;</td>
            <td class="normalBody" colspan="3">
                <br />
                <br />
                Welcome to the
    User Maintenance Module. Please select your desired task.<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="normalBody" style="width: 20px">
                &nbsp;</td>
            <td align="left" class="normalBody" colspan="2" style="width: 196px">
                </td>
            <td align="left" class="normalBody" colspan="1">
    <uc2:ctrlMainObjectNavigation ID="CtrlMainObjectNavigation1" runat="server" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

