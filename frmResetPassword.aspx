<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmResetPassword, App_Web_vqrj3x4b" title="TJL > User Management > Reset Password" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="200">
        <tr>
            <td class="head1" style="width: 200px">
                Reset Password
            </td>
        </tr>
    </table>
    <br />
    <br /><table border="0" cellpadding="1" cellspacing="1" width="572">
        <tr>
            <td class="smallBody" colspan="5">
    <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td class="smallBody" colspan="5">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" CssClass="smallBodyGreen"></asp:Label></td>
        </tr>
    </table>
    <br />
    <table border="0" cellpadding="1" cellspacing="1" width="572">
        <tr>
            <td class="smallBody" style="width: 151px">
                &nbsp;</td>
            <td class="smallBody" width="151">
                Username</td>
            <td width="12">
                :</td>
            <td class="smallBody" width="152">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="txtMandatory" Width="140px"></asp:TextBox></td>
            <td width="106" class="smallBody">
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"
                    CssClass="smallBodyRed" ErrorMessage="Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="smallBody" style="width: 151px">
                &nbsp;</td>
            <td class="smallBody">
                New Password</td>
            <td>
                :</td>
            <td class="smallBody">
                <asp:TextBox ID="txtNewPassword" runat="server" CssClass="txtMandatory" Width="140px" TextMode="Password"></asp:TextBox></td>
            <td class="smallBody">
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewPassword"
                    CssClass="smallBodyRed" ErrorMessage="Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="smallBody" style="width: 151px">
                &nbsp;</td>
            <td class="smallBody">
                Confirm New Password</td>
            <td>
                :</td>
            <td class="smallBody">
                <asp:TextBox ID="txtConfirmNewPassword" runat="server" CssClass="txtMandatory" Width="140px" TextMode="Password"></asp:TextBox></td>
            <td class="smallBody">
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmNewPassword"
                    CssClass="smallBodyRed" ErrorMessage="Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="smallBody" style="width: 151px">
            </td>
            <td class="smallBody">
            </td>
            <td>
            </td>
            <td class="smallBody" colspan="2">
                <asp:CompareValidator ID="cvPass" runat="server" ControlToCompare="txtNewPassword"
                    ControlToValidate="txtConfirmNewPassword" CssClass="smallBodyRed" ErrorMessage="New password re-confirmation failed."></asp:CompareValidator></td>
        </tr>
        <tr>
            <td style="width: 151px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="smallBody">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btnStyle" Width="80px" /></td>
            <td class="smallBody">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 151px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="smallBody" colspan="2">
                </td>
        </tr>
    </table>
    &nbsp;
</asp:Content>

