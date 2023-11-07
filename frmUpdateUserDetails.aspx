<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmUpdateUserDetails, App_Web_vqrj3x4b" title="TJL > User Management > Update User Details" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="Validators" Namespace="Sample.Web.UI.Compatibility" TagPrefix="cc1" %>

<%@ Register Src="FilterBy.ascx" TagName="FilterBy" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
    <td align="left" valign="top">
        <table border="0" cellpadding="1" cellspacing="1" width="100%">
            <tr>
                <td class="head1" style="width: 200px">
                    Update User Details<br />
                   
                </td>
            </tr>
            <tr>
                <td align="left" class="smallBody" colspan="4" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                <td align="left" class="smallBody" colspan="4" style="height: 20px" valign="top">
                    <asp:Button id="btnUaserDetails" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabActive" Text="User Details" Width="122px"/><asp:Button id="btnActiveUsers" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" Text="Active Users" Width="122px"/><asp:Button id="btnInactiveUsers" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" Text="Inactive Users" Width="122px"/></td>
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
                                Text="Please select an Active or Inactive user" Visible="False"></asp:Label></td>
                    </tr>
            <tr>
                <td align="right" style="width: 77px; height: 24px" valign="top">
                </td>
                <td align="right" class="smallBody" style="width: 130px; height: 24px" valign="top">
                    Username</td>
                <td align="center" class="smallBody" style="width: 10px; height: 24px" valign="top">
                    :</td>
                <td align="left" class="smallBody" style="width: 605px; height: 24px" valign="top">
                    &nbsp;<asp:TextBox ID="txtUsername" runat="server" CssClass="txtBox" MaxLength="20" Enabled="False" ReadOnly="True" Width="142px"></asp:TextBox></td>
            </tr>
                    <tr>
                        <td align="right" style="width: 77px" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 130px" valign="top">
                            User Status</td>
                        <td align="center" class="smallBody" style="width: 10px" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px" valign="top">
                            &nbsp;<asp:DropDownList ID="ddlStatus" runat="server" CssClass="dropDown" Enabled="False"
                                Width="150px">
                                <asp:ListItem Value="1">Active</asp:ListItem>
                                <asp:ListItem Value="0">Inactive</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td align="right" style="width: 77px" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 130px" valign="top">
                            NIC</td>
                        <td align="center" class="smallBody" style="width: 10px" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px" valign="top">
                    &nbsp;<asp:TextBox ID="txtServiceNumber" runat="server" CssClass="txtBox" MaxLength="20"
                        Width="142px" Enabled="False"></asp:TextBox></td>
                    </tr>
            <tr>
                <td align="right" style="width: 77px" valign="top">
                </td>
                <td align="right" class="smallBody" style="width: 130px" valign="top">
                    Salutation</td>
                <td align="center" class="smallBody" style="width: 10px" valign="top">
                    :</td>
                <td align="left" class="smallBody" style="width: 605px" valign="top">
                    &nbsp;<asp:DropDownList ID="ddlSalutation" runat="server" CssClass="dropDown" Enabled="False" Width="150px">
                    </asp:DropDownList></td>
            </tr>
                  
            <tr>
                <td align="right" style="width: 77px" valign="top">
                </td>
                <td align="right" class="smallBody" style="width: 130px" valign="top">
                    Name
                </td>
                <td align="center" class="smallBody" style="width: 10px" valign="top">
                    :</td>
                <td align="left" class="smallBody" style="width: 605px" valign="top">
                    &nbsp;<asp:TextBox ID="txtFirstName" runat="server" CssClass="txtMandatory" MaxLength="50"
                        Width="260px" Enabled="False"></asp:TextBox>*
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName"
                        CssClass="smallBodyRed" ErrorMessage="Please enter the first name">Please enter the first name</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" style="width: 77px" valign="top">
                </td>
                <td align="right" class="smallBody" style="width: 130px" valign="top">
                    Last Name
                </td>
                <td align="center" class="smallBody" style="width: 10px" valign="top">
                    :</td>
                <td align="left" class="smallBody" style="width: 605px" valign="top">
                    &nbsp;<asp:TextBox ID="txtLastName" runat="server" CssClass="txtBox" MaxLength="50"
                        Width="260px" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 77px;" valign="top">
                </td>
                <td align="right" class="smallBody" style="width: 130px;" valign="top">
                    Designation</td>
                <td align="center" class="smallBody" style="width: 10px;" valign="top">
                    :</td>
                <td align="left" class="smallBody" style="width: 605px;" valign="top">
                    &nbsp;<asp:TextBox ID="txtDesignation" runat="server" CssClass="txtBox" MaxLength="50"
                        Width="260px" Enabled="False"></asp:TextBox></td>
            </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
                E mail</td>
            <td align="center" class="smallBody" style="width: 10px;" valign="top">
                :</td>
            <td align="left" class="smallBody" style="width: 605px;" valign="top">
                &nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="txtBox" MaxLength="100"
                    Width="260px" Enabled="False"></asp:TextBox><cc1:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" controltovalidate="txtEmail"
                    display="Dynamic" errormessage="Invalid Email" validationexpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="smallBodyRed"></cc1:regularexpressionvalidator>
            </td>
        </tr>
          <tr>
                        <td align="right" style="width: 77px" valign="top">
                        </td>
                        <td align="right" class="smallBody" style="width: 130px" valign="top">
                            Company</td>
                        <td align="center" class="smallBody" style="width: 10px" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px" valign="top">
                            <asp:DropDownList ID="ddlDivision" runat="server" CssClass="dropDown" 
                                Enabled="False" Width="265px">
                            </asp:DropDownList>
                        </td>
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
                            Department</td>
                        <td align="center" class="smallBody" style="width: 10px;" valign="top">
                            :</td>
                        <td align="left" class="smallBody" style="width: 605px;" valign="top">
                            
                            <asp:DropDownList ID="ddlTrade" runat="server" CssClass="dropDown" 
                                Enabled="False" Width="266px">
                            </asp:DropDownList>
                        </td>
                    </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
                &nbsp;</td>
            <td align="center" class="smallBody" style="width: 10px;" valign="top">
                </td>
            <td align="left" class="smallBody" style="width: 605px;" valign="top">
                &nbsp;<asp:TextBox ID="txtContactNo" runat="server" CssClass="txtBox" MaxLength="22"
                    Width="260px" Enabled="False" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
                </td>
            <td align="center" class="smallBody" style="width: 10px;" valign="top">
                </td>
            <td align="left" class="smallBody" style="width: 605px; height: 12px" valign="top">
                &nbsp;<asp:TextBox ID="txtNIC" runat="server" CssClass="txtBox" MaxLength="15"
                    Width="260px" Enabled="False" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px" valign="top">
                </td>
            <td align="center" class="smallBody" style="width: 10px" valign="top">
                </td>
            <td align="left" style="width: 605px" valign="top">
                &nbsp;<asp:TextBox ID="txtAddress2" runat="server" CssClass="txtBox" MaxLength="100"
                    Width="260px" Enabled="False" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px" valign="top">
                &nbsp;</td>
            <td align="center" class="smallBody" style="width: 10px" valign="top">
                </td>
            <td align="left" class="smallBody" style="width: 605px" valign="top">
                &nbsp;<asp:TextBox ID="txtAddress3" runat="server" CssClass="txtBox" MaxLength="100"
                    Width="260px" Enabled="False" Visible="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px" valign="top">
                &nbsp;</td>
            <td align="center" class="smallBody" style="width: 10px" valign="top">
                </td>
            <td align="left" class="smallBody" style="width: 605px" valign="top">
                &nbsp;<asp:DropDownList ID="ddlDOBDate" runat="server" CssClass="smallBody" Enabled="False" Visible="False">
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem Value="22"></asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlDOBMonth" runat="server" CssClass="smallBody" Enabled="False" Visible="False">
                    <asp:ListItem Value="01">January</asp:ListItem>
                    <asp:ListItem Value="02">February</asp:ListItem>
                    <asp:ListItem Value="03">March</asp:ListItem>
                    <asp:ListItem Value="04">April</asp:ListItem>
                    <asp:ListItem Value="05">May</asp:ListItem>
                    <asp:ListItem Value="06">June</asp:ListItem>
                    <asp:ListItem Value="07">July</asp:ListItem>
                    <asp:ListItem Value="08">August</asp:ListItem>
                    <asp:ListItem Value="09">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlDOBYear" runat="server" CssClass="smallBody" Enabled="False" Visible="False">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
                </td>
            <td align="center" class="smallBody" style="width: 10px;" valign="top">
                </td>
            <td align="left" class="smallBody" style="width: 605px;" valign="top">
                &nbsp;<asp:RadioButton ID="rdoMale" runat="server" Checked="True" GroupName="radioGender"
                    Text="Male" Enabled="False" Visible="False" />
                <asp:RadioButton ID="rdoFemale" runat="server" GroupName="radioGender" Text="Female" Enabled="False" Visible="False" /></td>
        </tr>
        <tr>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
            </td>
            <td align="right" class="smallBody" style="width: 168px;" valign="top">
                &nbsp;</td>
            <td align="center" class="smallBody" style="width: 10px;" valign="top">
                </td>
            <td align="left" class="smallBody" style="width: 605px;" valign="top">
                &nbsp;<asp:RadioButton ID="rdoMarried" runat="server" Checked="True" GroupName="rdoMaritalStatus"
                    Text="Married" Enabled="False" Visible="False" />
                <asp:RadioButton ID="rdoNotMarried" runat="server" GroupName="rdoMaritalStatus" Text="Not Married" Enabled="False" Visible="False" /></td>
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
                            <asp:GridView ID="gvAllUsers" runat="server" CssClass="gridView" AllowPaging="True" AutoGenerateColumns="False" Width="800px" PageSize="15">
                                <HeaderStyle Font-Bold="True" />
                                <Columns>
                                    <asp:BoundField DataField="UserID" HeaderText="UserID" />
                                    <asp:BoundField DataField="UserName" HeaderText="Usename" />
                                    <asp:BoundField DataField="Salutation" HeaderText="Salutation" />
                                    <asp:BoundField DataField="FName" HeaderText="Name" />
                                    <asp:BoundField DataField="LName" HeaderText="Last Name" />
                                    <asp:BoundField DataField="Designation" HeaderText="Designation" />
                                    <asp:BoundField DataField="SubTradeName" HeaderText="Department" />
                                    <asp:BoundField DataField="LocationID" HeaderText="Location" />
                                    <asp:BoundField DataField="NIC" HeaderText="NIC" Visible="False" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" Visible="False" />
                                    <asp:BoundField DataField="LastVisit" HeaderText="Last Logged In" Visible="False" />
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

