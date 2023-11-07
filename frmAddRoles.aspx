<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmAddRoles, App_Web_vqrj3x4b" title="TJL > User Management > Manage Roles" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Src="FilterBy.ascx" TagName="FilterBy" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript">
     //Use this script in each page for validation and messages
      function checkValidation(confirmationMsg)
        {
            Page_ClientValidate("valGroup1")      // registration is the name of the validation group
            if(Page_IsValid)
            {
               //execute this code if the page is valid               
              return confirm(confirmationMsg);
            }
            else
            {
               //execute this code if the page is invalid   
            }
        }        
    </script>
    <table border="0" cellpadding="1" cellspacing="1"  width="100%">
        <tr>
            <td class="head1" colspan="3" style="height: 20px">
                Add User Roles</td>
        </tr>
        <tr>
            <td colspan="3">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="left" valign="top">
                        <asp:Button ID="btnDetails" CssClass="tabActive" runat="server" Text="Role Details" CausesValidation="False" Width="122px" /><asp:Button ID="btnRoles"
                            runat="server" CssClass="tabInactive" Text="All Roles" CausesValidation="False" Width="122px" />
                    </td>
                </tr>
                <tr height="10px">
                    <td class="tabBottomBar" ></td>
                </tr>
            </table>
    <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed"></asp:Label>
                <asp:ValidationSummary ID="valsRoles" runat="server" CssClass="smallBodyRed" DisplayMode="List"
                    ShowMessageBox="True" ValidationGroup="valGroup1" />
                <asp:Label ID="lblMessage" runat="server" CssClass="smallBodyGreen"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:MultiView ID="mvRoles" runat="server" ActiveViewIndex="0">
                    <asp:View ID="viewDetails" runat="server">
                        <table border="0" cellpadding="1" cellspacing="1" >
                            <tr>
                                <td class="smallBody" colspan="3" style="height: 14px">
                                    <asp:Button ID="btnNew" runat="server" CssClass="btnStyle" Text="New" Width="60px" />&nbsp;
                                    <asp:Button ID="btnSave" runat="server" CssClass="btnStyle" Text="Save" Width="60px" Enabled="False" OnClientClick="return checkValidation('You are about to save this role. Press &quot;Ok&quot; to continue or &quot;Cancel&quot; to stop this action')" />&nbsp;
                                    <asp:Button ID="btnEdit" runat="server" CssClass="btnStyle" Text="Edit" Width="60px" Enabled="False" /></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 190px; height: 14px">
                                    &nbsp;</td>
                                <td class="smallBody" style="width: 12px; height: 14px">
                                    &nbsp;</td>
                                <td class="smallBody" style="height: 14px">
                                    <asp:HiddenField ID="hfSave" runat="server" Value="New" />
                                </td>
                            </tr>
                            <tr>
            <td align="right" class="smallBody" style="width: 190px; height: 19px">
                Role Name
            </td>
            <td class="smallBody" style="width: 12px; height: 19px">
                :</td>
            <td class="smallBody" style="height: 19px">
                <asp:TextBox ID="txtRoleName" runat="server" CssClass="txtMandatory" Width="152px" MaxLength="25" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRoleName" runat="server" CssClass="smallBodyRed"
                    ErrorMessage="Role Name is Mandatory" SetFocusOnError="True" ValidationGroup="valGroup1" ControlToValidate="txtRoleName">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
            <td align="right" class="smallBody" style="width: 190px; height: 19px">
                Role Type</td>
            <td class="smallBody" style="width: 12px; height: 19px">
                :</td>
            <td class="smallBody" style="height: 19px">
                <asp:DropDownList ID="ddlRoleType" runat="server" CssClass="dropDown" Width="152px" Enabled="False">
                    <asp:ListItem>Administrator</asp:ListItem>
                    <asp:ListItem>Super User</asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Guest</asp:ListItem>
                </asp:DropDownList></td>
                            </tr>
                            <tr>
            <td class="smallBody" style="width: 190px; height: 19px" align="right">
                Status</td>
            <td class="smallBody" style="width: 12px; height: 19px">
                :</td>
            <td class="smallBody" style="height: 19px">
                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="dropDown" Width="152px" Enabled="False">
                    <asp:ListItem Value="1">Active</asp:ListItem>
                    <asp:ListItem Value="0">Inactive</asp:ListItem>
                </asp:DropDownList></td>
                            </tr>
                            <tr>
            <td class="smallBody" style="width: 190px; height: 19px" align="right">
                No. of Users Assigned</td>
            <td class="smallBody" style="width: 12px; height: 19px">
                :</td>
            <td class="smallBody" style="height: 19px">
                <asp:Label ID="lblNoOfUsers" runat="server" CssClass="smallBody"></asp:Label></td>
                            </tr>
                            <tr>
            <td class="smallBody" style="width: 190px; height: 19px">
            </td>
            <td class="smallBody" style="width: 12px; height: 19px">
            </td>
            <td class="smallBody" style="height: 19px">
            </td>
                            </tr>
                            <tr>
            <td class="smallBody" style="width: 190px; height: 19px">
            </td>
            <td class="smallBody" style="width: 12px; height: 19px">
            </td>
            <td class="smallBody" style="height: 19px">             
            </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="viewAllRoles" runat="server">
                        <table border="0" cellpadding="1" cellspacing="1" width="800">
                            <tr>
                                <td class="smallBody" colspan="3" style="height: 14px">
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="smallBody" colspan="3" style="height: 14px" valign="top">
                                    <asp:GridView ID="gvRoles" runat="server" AutoGenerateColumns="False" CssClass="gridView">
                                        <Columns>
                                            <asp:BoundField DataField="RoleID" HeaderText="RoleID" >
                                                <HeaderStyle Width="10px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="RoleName" HeaderText="Role Name" >
                                                <HeaderStyle Width="120px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="RoleType" HeaderText="Role Type" >
                                                <HeaderStyle Width="120px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Status" HeaderText="Status" >
                                                <HeaderStyle Width="100px" />
                                            </asp:BoundField>
                                            <asp:CommandField ShowSelectButton="True" >
                                                <HeaderStyle Width="60px" />
                                            </asp:CommandField>
                                        </Columns>
                                        <HeaderStyle BackColor="Silver" Font-Bold="True" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 190px; height: 14px">
                                    &nbsp;</td>
                                <td class="smallBody" style="width: 12px; height: 14px">
                                    &nbsp;</td>
                                <td class="smallBody" style="height: 14px">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView></td>
        </tr>
    </table>
</asp:Content>

