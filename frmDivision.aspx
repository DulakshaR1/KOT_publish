<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmDivision, App_Web_vqrj3x4b" title="Registeration of Company" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Src="FilterBy.ascx" TagName="FilterBy" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script language="javascript" type="text/javascript">
         
    </script>

    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="height: 22px;" class="smallBody" colspan="6">
                <strong class="head1">Administrative Tool&nbsp; &gt;&nbsp; Company<br />
                    <br />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="smallBody" colspan="6">
                <asp:Button ID="btnDetails" runat="server" CssClass="tabActive" Text="Details" CausesValidation="False" Width="122px"/><asp:Button
                    ID="btnactive" runat="server" CssClass="tabInactive" Text="Active" CausesValidation="False" Width="122px"/><asp:Button
                        ID="btnFrmCancel" runat="server" CssClass="tabInactive" Text="Inactive" CausesValidation="False" Width="122px"/></td>
        </tr>
        <tr>
            <td class="tabBottomBar" colspan="6">
            </td>
        </tr>
        <tr>
            <td colspan="6">
                <asp:HiddenField ID="hfStatus" runat="server" Value="INSERT" />
                        <asp:Label ID="lblError" runat="server" CssClass="smallBodyRed"></asp:Label></td>
        </tr>
        <tr>
            <td class="smallBody" colspan="6" style="height: 13px">
                        <asp:Label ID="lblMsg" runat="server" CssClass="smallBodyGreen"></asp:Label></td>
        </tr>
        <tr>
            <td class="smallBody" colspan="6" style="height: 26px">
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <table width="100%" border="0" cellpadding="1" cellspacing="1">
                            <tr>
                                <td class="smallBody" colspan="3">
                                    <asp:Button ID="btnNew" runat="server" CssClass="btnStyle" Text="New" CausesValidation="False"
                                        Width="60px" />
                                    <asp:Button ID="btnEdit" runat="server" CssClass="btnStyle" Enabled="False" Text="Edit"
                                        Width="60px" />
                                    <asp:Button ID="btnSave" runat="server" CssClass="btnStyle" Enabled="False" Text="Save"
                                        Width="60px" /></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px">
                                    <br />
                                </td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Location Name :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    <asp:DropDownList ID="ddlLocation" runat="server" Width="200px" CssClass="dropDown"
                                        Enabled="False">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvLocationname" runat="server" ControlToValidate="ddlLocation"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Company ID :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody" colspan="1">
                                    <asp:TextBox ID="txtDivisionID" runat="server" Width="60px" CssClass="txtMandatory"
                                        Enabled="False" MaxLength="5"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDivisionName" runat="server" ControlToValidate="txtDivisionID"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Company Name :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody" colspan="1">
                                    <asp:TextBox ID="txtDivisionName" runat="server" Width="350px" CssClass="txtMandatory"
                                        Enabled="False" MaxLength="50"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDivisionName"
                                        CssClass="smallBodyRed" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Company Type :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody" colspan="1">
                                    <asp:DropDownList ID="ddlDivisionType" runat="server" Width="200px" CssClass="dropDown"
                                        Enabled="False">
                                        <asp:ListItem Value="FOR">FOR</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDivisionType" runat="server" ControlToValidate="ddlDivisionType"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Description :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    <asp:TextBox ID="txtDescription" runat="server" Width="300px" CssClass="txtBox"
                                        Enabled="False" BackColor="White" MaxLength="80"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    No Of Person's :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    <asp:TextBox ID="txtStrength" runat="server" Width="200px" CssClass="txtMandatory"
                                        Enabled="False" MaxLength="6"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvStrength" runat="server" ControlToValidate="txtStrength"
                                        Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Starting Serial No. :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    <asp:TextBox ID="txtStartingSerial" runat="server" CssClass="txtMandatory" Width="200px" MaxLength="6"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvStartingSerial" runat="server" CssClass="smallBodyRed"
                                        Display="Dynamic" ErrorMessage="*" ControlToValidate="txtStartingSerial"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Status :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="dropDown" Width="200px"
                                        Enabled="False">
                                        <asp:ListItem Value="Active">Active</asp:ListItem>
                                        <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Created By :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    <asp:Label ID="lblCreatedUser" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 170px" align="right">
                                    Created On :</td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    <asp:Label ID="lblCreatedDate" runat="server"></asp:Label></td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table width="100%">
                            <tr>
                                <td class="smallBody" colspan="5" style="height: 16px">
                                    <uc1:FilterBy ID="SearchActiveDivision" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" colspan="5" style="height: 14px" valign="top">
                                    <br />
                                    <asp:GridView ID="GVActive" runat="server" AutoGenerateColumns="False" Width="100%"
                                        AllowPaging="True" CssClass="gridView" PageSize="15">
                                        <Columns>
                                            <asp:BoundField DataField="DivisionID" HeaderText="Company ID" SortExpression="DivisionID">
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="DivisionName" HeaderText="Company Name" />
                                            <asp:BoundField DataField="DivisionType" HeaderText="Company Type" Visible="False">
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="OfficeCommand" HeaderText="Officer Command" Visible="False">
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NoOfPersonnel" HeaderText="Strength" Visible="False">
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LocationID" HeaderText="Location ID" />
                                            <asp:ButtonField CommandName="Select" Text="Details">
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:ButtonField>
                                        </Columns>
                                        <HeaderStyle BackColor="#E0E0E0" BorderColor="#E0E0E0" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView></td>
        </tr>
    </table>
</asp:Content>
