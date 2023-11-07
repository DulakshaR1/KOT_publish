<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmUpdateUserRole, App_Web_vqrj3x4b" title="TJL > User Management > Update User Details" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Src="FilterBy.ascx" TagName="FilterBy" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <Table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
    <td align="left" valign="top">
        <table border="0" cellpadding="1" cellspacing="1" width="100%">
            <tr>
                <td class="head1" style="width: 200px">
                    Update User Role<br />
                </td>
            </tr>
            <tr>
                <td align="left" class="smallBody" colspan="4" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                <td align="left" class="smallBody" colspan="4" style="height: 20px" valign="top">
                    <asp:Button id="btnUaserDetails" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabActive" Text="User Details" Width="122px"/><asp:Button id="btnActiveUsers" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" Text="Users" Width="122px"/></td>
            </tr>
            <tr>  
                <td class="tabBottomBar" colspan="3" >
                </td>
            </tr>
                </table>
                </td>
            </tr>     
            <tr>
                <td align="left" class="smallBody" colspan="4" valign="top">
                    <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" class="smallBody" colspan="4" valign="top">
                    <asp:Label ID="lblMessage" runat="server" CssClass="smallBodyGreen" Font-Bold="True"></asp:Label></td>
            </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="viewDetails" runat="server">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                    <tr>
                        <td align="left" class="smallBody" colspan="4" style="height: 24px" valign="top">
                            <asp:Button ID="btnEdit" runat="server" CssClass="btnStyle" Text="Edit" Width="80px" Enabled="False" CausesValidation="False" />&nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btnStyle" Enabled="False" Width="80px" /></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 77px; height: 24px" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 130px; height: 24px" valign="top">
                        </td>
                        <td align="center" class="smallBody" style="width: 10px; height: 24px" valign="top">
                        </td>
                        <td align="left" class="smallBody" style="width: 605px; height: 24px" valign="top">
                            &nbsp;
                            <asp:Label ID="lblANdisplay" runat="server" CssClass="smallBody" Font-Bold="True"
                                Text="Please select a user" Visible="False"></asp:Label></td>
                    </tr>
            <tr>
                <td align="right" style="width: 77px; height: 24px" valign="top">
                </td>
                <td align="right" class="smallBody" style="width: 130px; height: 24px" valign="top">
                    Username</td>
                <td align="center" class="smallBody" style="width: 10px; height: 24px" valign="top">
                    :</td>
                <td align="left" class="smallBody" style="width: 605px; height: 24px" valign="top">
                    &nbsp;<asp:TextBox ID="txtUsername" runat="server" CssClass="txtMandatory" MaxLength="20" Enabled="False" ReadOnly="True" BackColor="#E0E0E0" Width="142px"></asp:TextBox></td>
            </tr>
                    <tr>
                        <td align="right" style="width: 77px" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 130px" valign="top">
                    NIC</td>
                        <td align="center" class="smallBody" style="width: 10px" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px" valign="top">
                            &nbsp;<asp:TextBox ID="txtServiceNumber" runat="server" CssClass="txtBox" Enabled="False"
                                MaxLength="20" Width="142px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 77px" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 130px" valign="top">
                            Name</td>
                        <td align="center" class="smallBody" style="width: 10px" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px" valign="top">
                    &nbsp;<asp:TextBox ID="txtFirstName" runat="server" CssClass="txtMandatory" MaxLength="50"
                        Width="260px" Enabled="False"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 77px" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 130px" valign="top">
                    Last Name</td>
                        <td align="center" class="smallBody" style="width: 10px" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px" valign="top">
                    &nbsp;<asp:TextBox ID="txtLastName" runat="server" CssClass="txtBox" MaxLength="50"
                        Width="260px" Enabled="False"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="right" class="smallBody" style="width: 168px;" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 168px;" valign="top">
                            Location</td>
                        <td align="center" class="smallBody" style="width: 10px;" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px;" valign="top">
                            &nbsp;<asp:DropDownList ID="ddlLocation" runat="server" AutoPostBack="True" CssClass="dropDown"
                        Width="265px" Enabled="False">
                    </asp:DropDownList></td>
                    </tr>
                    
                    <tr>
                        <td align="right" class="smallBody" style="width: 168px;" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 168px;" valign="top">
                            Company</td>
                        <td align="center" class="smallBody" style="width: 10px;" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px;" valign="top">
                            &nbsp;<asp:DropDownList ID="ddlDivision" runat="server" CssClass="dropDown" 
                                Enabled="False" Width="265px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 77px" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 130px" valign="top">
                            Role</td>
                        <td align="center" class="smallBody" style="width: 10px" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px" valign="top">
                    &nbsp;<asp:DropDownList ID="ddlUserLevel" runat="server" AutoPostBack="True" CssClass="dropDown"
                                Enabled="False">
                            </asp:DropDownList></td>
                    </tr>
            <tr>
                <td align="right" style="width: 77px" valign="top">
                </td>
                <td align="right" class="smallBody" style="width: 130px" valign="top">
                    User Type</td>
                <td align="center" class="smallBody" style="width: 10px" valign="top">
                    :</td>
                <td align="left" class="smallBody" style="width: 605px" valign="top">
                    &nbsp;<asp:DropDownList ID="ddlUserType" runat="server" CssClass="dropDown" Enabled="False">
                    </asp:DropDownList></td>
            </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px; height: 24px" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px; height: 24px" valign="top">
                </td>
            <td align="center" class="smallBody" style="width: 10px; height: 24px" valign="top">
                </td>
            <td align="left" class="smallBody" style="width: 605px; height: 24px" valign="top">
                <asp:HiddenField ID="txtUserIDHidden" runat="server" />
                <asp:HiddenField ID="txtPrevRole" runat="server" />
                <asp:HiddenField ID="txtPrevUserType" runat="server" />
            </td>
        </tr>
                </table>
            </asp:View>
            <asp:View ID="viewSearch" runat="server">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                    <tr>
                        <td align="left" class="smallBody" colspan="4" style="height: 20px" valign="top">
                            <br />
                            <uc1:FilterBy id="searchAllUsers" runat="server"></uc1:FilterBy></td>
                    </tr>
                    <tr>
                        <td align="left" class="smallBody" colspan="4" style="height: 20px" valign="top">
                            <br />
                            <asp:GridView ID="gvAllUsers" runat="server" CssClass="gridView" AllowPaging="True" AutoGenerateColumns="False" Width="800px" PageSize="15">
                                <HeaderStyle Font-Bold="True" />
                                <Columns>
                                    <asp:BoundField DataField="UserID" HeaderText="UserID" />
                                    <asp:BoundField DataField="UserName" HeaderText="Usename" />
                                    <asp:BoundField DataField="FName" HeaderText="First Name" />
                                    <asp:BoundField DataField="LName" HeaderText="Last Name" />
                                    <asp:BoundField DataField="RoleName" HeaderText="Role" />
                                    <asp:BoundField DataField="RoleType" HeaderText="Role Type" />
                                    <asp:CommandField ShowSelectButton="True" SelectText="Details" />
                                </Columns>
                            </asp:GridView>
                            &nbsp;
                            <br />
                            <asp:HiddenField ID="hfUserTab" runat="server" Value="Active" />
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView></td>
    </tr>
    <tr>
    <td>
    &nbsp;
    </td>
    </tr>
    </Table>
       
    </div>
</asp:Content>

