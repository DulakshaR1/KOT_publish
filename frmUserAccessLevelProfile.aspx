<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmUserAccessLevelProfile, App_Web_vqrj3x4b" title="TJL > User Management > User Access Level Profile" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" language="javascript">
   function adOperation(OpClientID, OpID){
        var OpClient = document.getElementById(OpClientID);
        var OpDatabase = document.getElementById(OpID);
        var HidFld = document.getElementById('<%=txtHidPerms.ClientID%>');   
        var OpDatabaseStr = HidFld.value;                       
        if (OpClient.checked == true){
        OpDatabaseStr= OpDatabaseStr + OpID + '=1';
        HidFld.value = OpDatabaseStr + ','; 
        }
        else{
        OpDatabaseStr= OpDatabaseStr + OpID + '=0';
        HidFld.value = OpDatabaseStr + ','; 
        }
    }
      
   </script>
    <table border="0" cellpadding="1" cellspacing="1"  width="100%">
        <tr>
            <td class="head1" style="height: 20px">
                 User Access Level Profile</td>
        </tr>
        <tr>
            <td>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="left" valign="top">
                        <asp:Button ID="btnDetails" CssClass="tabActive" runat="server" 
                            Text="User Level  Access " CausesValidation="False" Width="122px" />
                    </td>
                </tr>
                <tr height="10px">
                    <td class="tabBottomBar" ></td>
                </tr>
            </table>
                <table border="0" cellpadding="1" cellspacing="1" width="684">
            <tr>
                <td>
                    <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMessage" runat="server" CssClass="smallBodyGreen"></asp:Label></td>
            </tr>
            <tr>
                <td style="height: 5px">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btnStyle" Width="80px" Enabled="False" /></td>
            </tr>
            <tr>
                <td style="height:5px">
                </td>
            </tr>
        </table>
        <table border="0" cellpadding="1" cellspacing="1" width="684">
            <tr>
                <td class="smallBody" width="108">
                    Username</td>
                <td class="smallBody" width="12">
                    :</td>
                <td class="smallBody" width="680">
                    &nbsp;<asp:TextBox ID="txtUsername" runat="server" MaxLength="20" CssClass="txtMandatory"></asp:TextBox>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btnStyle" Width="80px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"
                        ErrorMessage="Username is required">Username is required</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="smallBody">
                    &nbsp;</td>
                <td class="smallBody">
                    &nbsp;</td>
                <td class="smallBody">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="smallBody">
                    Name</td>
                <td class="smallBody">
                    :</td>
                <td class="smallBody">
                    &nbsp;<asp:Label ID="lblFullName" runat="server">(Auto)</asp:Label></td>
            </tr>
            <tr>
                <td class="smallBody" style="height: 19px">
                    Service Number
                </td>
                <td class="smallBody" style="height: 19px">
                    :</td>
                <td class="smallBody" style="height: 19px">
                    &nbsp;<asp:Label ID="lblServiceNo" runat="server">(Auto)</asp:Label></td>
            </tr>
            <tr>
                <td class="smallBody" style="height: 12px">
                    Role Name
                </td>
                <td class="smallBody" style="height: 12px">
                    :</td>
                <td class="smallBody" style="height: 12px">
                    &nbsp;<asp:Label ID="lblRoleName" runat="server">(Auto)</asp:Label></td>
            </tr>
            <tr>
                <td class="smallBody">
                    User Type
                </td>
                <td class="smallBody">
                    :</td>
                <td class="smallBody">
                    &nbsp;<asp:Label ID="lblUserType" runat="server">(Auto)</asp:Label></td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="head2" colspan="3">
                    User Permissions
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;<asp:GridView ID="gvProfile" runat="server" CssClass="smallBody">
                        <HeaderStyle CssClass="head3" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;<asp:TextBox ID="txtHidPerms" runat="server" BorderStyle="None" Height="0px"
                        Width="0px"></asp:TextBox></td>
            </tr>
        </table></td>
        </tr>
        </table>
</asp:Content>

