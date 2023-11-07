<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmHome, App_Web_vqrj3x4b" title="Teejay Lanka PLC" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="ctrlHomeContentArea.ascx" TagName="ctrlHomeContentArea" TagPrefix="uc2" %>
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
            <td style="width: 20px" class="smallBody">
                &nbsp;</td>
            <td class="normalBody" colspan="3">
                Welcome
                <asp:Label ID="lblUserFullName" runat="server"></asp:Label>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20px; height: 19px;" class="smallBody">
                &nbsp;</td>
            <td class="normalBody" colspan="3" style="height: 19px">
                <br />
                Feel free to navigate to the process you desire by using the main areas located
                below or by usgin the expanded navigation tree located on the left of the screen.<br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 20px" class="smallBody">
                &nbsp;</td>
            <td align="left" class="smallBody" colspan="2" style="width: 665px">
                <table cellpadding="5" cellspacing="5" class="style1">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="75px" Width="100px" 
                                Visible="False" />
                        </td>
                        <td>
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="75px" Width="100px" 
                                Visible="False" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            </td>
                        <td class="style2">
                            </td>
                        <td class="style2">
                            </td>
                        <td class="style2">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td align="left" class="smallBody" colspan="1">
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            width: 500px;
        }
        .style2
        {
            height: 30px;
        }
    </style>
</asp:Content>


