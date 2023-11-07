<%@ page title="" language="C#" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="true" inherits="KOT_Home, App_Web_1f0piase" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register src="ctrlMainObjectNavigation.ascx" tagname="ctrlMainObjectNavigation" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
            
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                Welcome to the KOT Request Module. Please select your desired task to proceed.<br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="normalBody" style="width: 20px">
                &nbsp;</td>
            <td align="left" class="normalBody" colspan="2" style="width: 196px">
            </td>
            <td align="left" class="normalBody" colspan="1">
                <uc1:ctrlMainObjectNavigation ID="CtrlMainObjectNavigation1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
