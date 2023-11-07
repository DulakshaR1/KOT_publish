<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmBaseRolePrivileges, App_Web_vqrj3x4b" title="TJL > User Management > Manage Base Role Privileges" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <script type="text/javascript" language="javascript">
   function adOperation(OpClientID, OpID){
        var OpClient = document.getElementById(OpClientID);
        var OpDatabase = document.getElementById(OpID);
        var HidFld = document.getElementById('<%=txtHidCheckBoxVals.ClientID%>');   
        var OpDatabaseStr = HidFld.value; 
        if (OpClient.checked == true){
        OpDatabaseStr= OpDatabaseStr + OpID + '=1';
        HidFld.value = OpDatabaseStr + ','; 
        }
        else{
        OpDatabaseStr= OpDatabaseStr + OpID + '=9';
        HidFld.value = OpDatabaseStr + ','; 
        }
    }
    
    function Proc(wtd){
        var p;
        p = document.getElementById('prgs');
        if (wtd=='hide'){
            p.style.visibility='hidden';
        }
        if (wtd=='show'){
            p.style.visibility='visible';
        }
    }      
 </script>

    <table border="0" cellpadding="1" cellspacing="1"  width="100%">
        <tr>
            <td class="head1" style="height: 20px">
                Base Role Permissions </td>
        </tr>
        <tr>
            <td>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="left" valign="top">
                        <asp:Button ID="btnDetails" CssClass="tabActive" runat="server" 
                            Text="Role Permissions" CausesValidation="False" Width="122px" />
                    </td>
                </tr>
                <tr height="10px">
                    <td class="tabBottomBar" ></td>
                </tr>
            </table>
                <table border="0" cellpadding="0" cellspacing="0" width="800">
        <tr>
            <td style="width: 571px; height: 17px">
                <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 571px" align="left" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="800">
                    <tr>
                        <td align="left" valign="top">
                            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                                <asp:View ID="View1" runat="server">
                                    <table border="0" cellpadding="0" cellspacing="0" width="800" style="height: 543px">
                                        <tr align="left" valign="top">
                                            <td style="width: 630px; height: 550px">
                                                <br />
                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 662px">
                                                    <tr>
                                                        <td class="head2" colspan="5" style="height: 19px">
                                                            1. Add Objects to a Role<br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="head3" style="height: 19px" width="165">
                                                            Role</td>
                                                        <td style="width: 22px; height: 19px">
                                                            &nbsp;</td>
                                                        <td style="height: 19px" width="28">
                                                            &nbsp;</td>
                                                        <td class="head3" style="height: 19px" width="248">
                                                            System Functions
                                                        </td>
                                                        <td style="width: 152px; height: 19px">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left" valign="top">
                                                            <div style="overflow: auto; width: 150px; height: 200px; border-style:solid; border-color:Gray; border-width:thin">
                                                                <asp:TreeView ID="tvRoles" runat="server" BorderColor="Silver"
                                                                    ExpandDepth="0" Height="200px" ImageSet="Arrows" Width="125px">
                                                                    <ParentNodeStyle Font-Bold="False" />
                                                                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                                                                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                                                                        VerticalPadding="0px" />
                                                                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px"
                                                                        NodeSpacing="0px" VerticalPadding="0px" />
                                                                </asp:TreeView>
                                                            </div>
                                                        </td>
                                                        <td style="font-size: 12pt; width: 22px; font-family: Times New Roman">
                                                            &nbsp;</td>
                                                        <td style="font-size: 12pt; font-family: Times New Roman">
                                                            &nbsp;</td>
                                                        <td align="left" class="smalBody" valign="top">
                                                            <div style="overflow: auto; width: 275px; height: 200px; border-style:solid; border-color:Gray; border-width:thin">
                                                                <asp:TreeView ID="tvObjects" runat="server" BorderColor="Silver"
                                                                    Height="200px" ImageSet="Arrows" ShowCheckBoxes="All" ShowLines="True" Width="250px" NodeIndent="10">
                                                                    <ParentNodeStyle Font-Bold="False" />
                                                                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                                                                    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                                                                        VerticalPadding="0px" />
                                                                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px"
                                                                        NodeSpacing="0px" VerticalPadding="0px" />
                                                                    <RootNodeStyle Font-Bold="True" />
                                                                </asp:TreeView>
                                                            </div>
                                                        </td>
                                                        <td style="font-size: 12pt; width: 152px; font-family: Times New Roman">
                                                            &nbsp;<asp:Button ID="btnAddObjectToRole" runat="server" Text="Add" CssClass="btnStyle" Width="70px" CausesValidation="False" /></td>
                                                    </tr>
                                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                                        <td class="smallBody" colspan="5" style="height: 5px">
                                                        </td>
                                                    </tr>
                                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                                        <td class="smallBody" colspan="5">
                                                            Role Selected:
                                                            <asp:Label ID="lblRole" runat="server"></asp:Label></td>
                                                    </tr>
                                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                                        <td class="smallBody" colspan="5" style="height: 14px">
                                                            User Type:
                                                            <asp:Label ID="lblUserType" runat="server"></asp:Label></td>
                                                    </tr>
                                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                                        <td class="smallBody" colspan="5">
                                                            <br />
                                                            Allocated Privileges :
                                                            <asp:Label ID="lblPrivilageMessage" runat="server"></asp:Label><br />
                                                            <asp:Label ID="lblDeleteMessage" runat="server" CssClass="smallBodyGreen" Font-Bold="True"></asp:Label><br />
                                                        </td>
                                                    </tr>
                                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                                        <td colspan="5" align="left" valign="top">
                                                            <asp:GridView ID="gvBaseRoleObjects" runat="server" AutoGenerateColumns="False" CssClass="gridView" AllowPaging="True" PageSize="5" >
                                                                <Columns>
                                                                    <asp:BoundField DataField="RoleID" HeaderText="RoleID" />
                                                                    <asp:BoundField DataField="SysID" HeaderText="SystemID" />
                                                                    <asp:BoundField DataField="ObjectCode" HeaderText="ObjectCode" />
                                                                    <asp:BoundField DataField="ObjID" HeaderText="ObjectID" />
                                                                    <asp:BoundField DataField="SubObjID" HeaderText="SubObjID" />
                                                                    <asp:BoundField DataField="RoleName" HeaderText="Role" />
                                                                    <asp:BoundField DataField="RoleType" HeaderText="User Type" />
                                                                    <asp:BoundField DataField="SysName" HeaderText="SysName" />
                                                                    <asp:BoundField DataField="ObjectName" HeaderText="Objects and Sub Objects">
                                                                        <HeaderStyle Width="400px" />
                                                                    </asp:BoundField>
                                                                    <asp:CommandField CausesValidation="False" ShowCancelButton="False"
                                                                        ShowDeleteButton="True" DeleteText="Remove" />
                                                                </Columns>
                                                                <HeaderStyle CssClass="head3" />
                                                            </asp:GridView>
                                                        </td>
                                                    </tr>
                                                    <tr style="font-size: 12pt; font-family: Times New Roman">
                                                        <td align="right" colspan="5" style="height: 19px">
                                                            <asp:Button ID="btnPrivileges" runat="server" Text="Select Permissions >" CssClass="btnStyle" CausesValidation="False" /></td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td class="head1" colspan="5" style="width: 780px; height: 20px">
                                                2.
                                                Permissions</td>
                                        </tr>
                                        <tr>
                                            <td class="smallBody" colspan="5" style="width: 780px; height: 20px">
                                                <br />
                                                <asp:Button ID="btnBack" runat="server" Text="< Back" CssClass="btnStyle" Width="80px" CausesValidation="False" />&nbsp;
                                                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btnStyle" Width="80px" /></td>
                                        </tr>
                                        <tr>
                                            <td class="smallBody" colspan="5" style="width: 780px; height: 20px">
                                    <asp:Label ID="lblMessage" runat="server" CssClass="smallBodyGreen" Font-Bold="True"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td class="smallBody" colspan="5" style="width: 780px; height: 12px;">
                                                Role Selected:
                                                <asp:Label ID="lblRole2" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td class="smallBody" colspan="5" style="width: 780px">
                                                User Type:
                                                <asp:Label ID="lblUserType2" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="5" style="width: 780px">
                                                &nbsp;&nbsp;
                                                <br />
                                                <asp:GridView ID="gvPrivileges" runat="server" CssClass="gridView">
                                                    <HeaderStyle CssClass="head3" HorizontalAlign="Left" />
                                                </asp:GridView>
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                    <asp:TextBox ID="txtHidCheckBoxVals" runat="server" BackColor="White" BorderColor="White"
                                        BorderStyle="None" Height="0px" TextMode="Password" Width="0px"></asp:TextBox></asp:View>
                            </asp:MultiView></td>
                    </tr>
                </table>
                </td>
        </tr>
    </table></td>
        </tr>
        </table>
</asp:Content>

