<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmLocation, App_Web_vqrj3x4b" title="Registaration of Locations" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Src="FilterBy.ascx" TagName="FilterBy" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">


</script>

    <table cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td class="smallBody" colspan="2" style="height: 27px">
                &nbsp;<strong class="head1">Administrative Tool &gt; Location<br />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                </strong></td>
        </tr>
        <tr>
            <td class="smallBody" colspan="2" style="height: 6px">
                <strong>
                    <asp:Button ID="BtnDetails" runat="server" CssClass="tabActive" Text="Details" CausesValidation="False" Width="122px"/><asp:Button
                        ID="btnActive" runat="server" CssClass="tabInactive" Text="Active" CausesValidation="False" Width="122px"/><asp:Button
                            ID="btnFrmCancell" runat="server" CssClass="tabInactive" Text="Inactive" CausesValidation="False" Width="122px"/></strong></td>
        </tr>
        <tr>
            <td class="tabBottomBar" colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:HiddenField ID="hfStatus" runat="server" Value="INSERT" />
                    <asp:Label ID="lblError" runat="server" CssClass="smallBodyRed"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2">
                    <asp:Label ID="lblConfMsg" runat="server" CssClass="smallBodyGreen" style="position: static"></asp:Label></td>
        </tr>
        <tr>
            <td class="smallBody" colspan="2" style="height: 21px">
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <table border="0" cellpadding="1" cellspacing="1">
                            <tr>
                                <td class="smallBody" colspan="2">
                                    <asp:Button ID="btnNew" runat="server" CssClass="btnStyle" Text="New" Width="66px" CausesValidation="False" />
                                    <asp:Button
                                            ID="btnSave" runat="server" CssClass="btnStyle" Enabled="False" Text="Save" Width="63px" />
                                    <asp:Button
                                        ID="btnedit" runat="server" Enabled="False" Text="Edit" Width="64px" CssClass="btnStyle" CausesValidation="False" /></td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 169px">
                                    <br />
                                </td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    &nbsp;</td>
                                <td class="smallBody">
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 169px" align="right">
                                    Location ID :</td>
                                <td class="smallBody" colspan="3">
                                    <asp:TextBox ID="txtLocationNo" runat="server" CssClass="txtMandatory" Enabled="False" Width="169px" MaxLength="3"></asp:TextBox>
                                    &nbsp;
                                    <asp:RequiredFieldValidator ID="rfvLocationRef" runat="server" ControlToValidate="txtLocationNo"
                                        Display="Dynamic" EnableClientScript="False" EnableTheming="True" ErrorMessage="*" Style="left: -6px; position: relative; top: 0px; z-index: 100;"></asp:RequiredFieldValidator>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</td>
                                <td class="smallBody" colspan="1">
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 169px" align="right">
                                        Location Name :</td>
                                <td class="smallBody" colspan="3">
                                    <asp:TextBox ID="txtLocationName" runat="server" CssClass="txtMandatory" Width="169px" Enabled="False" MaxLength="30"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLocationName"
                                        Display="Dynamic" ErrorMessage="*" Style="position: relative"></asp:RequiredFieldValidator></td>
                                <td class="smallBody" colspan="1">
                                </td>
                            </tr>
                            <tr>
                                <td align="right" class="smallBody" style="width: 169px">
                                    Address :</td>
                                <td class="smallBody" colspan="4">
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="txtMandatory" Enabled="False"
                                        MaxLength="250" Width="300px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 169px" align="right">
                                    Status :</td>
                                <td class="smallBody" colspan="1">
                                    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="dropDown" Enabled="False"
                                        Style="position: relative" Width="176px">
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Inactive</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                    </td>
                                <td class="smallBody">
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 169px" align="right">
                                    No of Divisions :</td>
                                <td class="smallBody">
                                    <asp:Label ID="lblDivisions" runat="server" CssClass="smallbody"></asp:Label></td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody" align="right">
                                    No of Personnel :</td>
                                <td class="smallBody">
                                    <asp:Label ID="lblPersonnel" runat="server"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 169px" align="right">
                                    Created by :</td>
                                <td class="smallBody">
                                    <asp:Label ID="lblCreatedUser" runat="server"></asp:Label></td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody" align="right">
                                        Created On :</td>
                                <td class="smallBody">
                                    <asp:Label ID="lblCreatedDate" runat="server"></asp:Label></td>
                                        
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 169px">
                                    </td>
                                <td class="smallBody">
                                    </td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                        </td>
                                <td class="smallBody">
                                </td>
                            </tr>
                            <tr>
                                <td class="smallBody" style="width: 169px">
                                </td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                </td>
                                <td class="smallBody">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table style="width: 699px">
                            <tr>
                                <td style="width: 58px; height: 8px">
                                    </td>
                            </tr>
                            <tr>
                                <td style="height: 11px" colspan="1">
                                    <uc1:FilterBy ID="searchActiveLocation" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="1" style="height: 134px" valign="top">
                                    <br />
                                    <asp:GridView ID="GVLocation" runat="server" AutoGenerateColumns="False" Width="815px" CssClass="gridView" AllowPaging="True" AllowSorting="True">
                                        <Columns>
                                            <asp:BoundField DataField="LocationID" HeaderText="Location ID" >
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LocationName" HeaderText="Location Name" >
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Description" HeaderText="Address" />
                                            <asp:ButtonField CommandName="Select" Text="Details" >
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:ButtonField>
                                        </Columns>
                                    </asp:GridView>
                                    &nbsp;&nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table style="width: 759px; height: 76px">
                            <tr>
                                <td class="smallbody" style="height: 6px; width: 61px;">
                                    </td>
                            </tr>
                            <tr>
                                <td class="smallbody" style="height: 1px;" colspan="1">
                                    <uc1:FilterBy ID="searchInactiveLocation" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td class="smallbody" colspan="1" style="height: 106px" valign="top">
                                    &nbsp;<asp:GridView ID="GVCancel" runat="server" AutoGenerateColumns="False" Width="801px" CssClass="gridView" AllowPaging="True" AllowSorting="True">
                                        <Columns>
                                            <asp:BoundField DataField="locationID" HeaderText="Location ID" >
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LocationName" HeaderText="Location Name" >
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="Description" HeaderText="Address" />
                                            <asp:ButtonField CommandName="Select" Text="Details" >
                                                <HeaderStyle BackColor="#E0E0E0" />
                                            </asp:ButtonField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td class="smallbody" style="height: 20px; width: 61px;">
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView></td>
        </tr>
    </table>
</asp:Content>

