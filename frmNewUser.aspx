<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmNewUser, App_Web_vqrj3x4b" title="TJL > User Management > Create New user" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="Validators" Namespace="Sample.Web.UI.Compatibility" TagPrefix="cc2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" language="javascript">
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
            <td class="head1" colspan="3" style="height: 20px">
                Add New User<asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td colspan="3">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="left" valign="top">
                        <asp:Button ID="btnDetails" CssClass="tabActive" runat="server" Text="New User" 
                            CausesValidation="False" Width="122px" />
                    </td>
                </tr>
                <tr height="10px">
                    <td class="tabBottomBar" ></td>
                </tr>
            </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
            <tr>
                <td align="left" rowspan="1" valign="top">
                    <asp:Button ID="btnNewUSR" runat="server" CausesValidation="False" CssClass="btnStyle"
                        Text="New User" /></td>
            </tr>
            <tr>
                <td align="left" rowspan="" valign="top">
                    <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed" ForeColor="Red"></asp:Label><asp:ValidationSummary
                        ID="vsumNewUser" runat="server" CssClass="smallBodyRed" DisplayMode="List" ShowMessageBox="True"
                        ValidationGroup="valGroup1" />
                    <asp:ValidationSummary ID="vsumServiceNo" runat="server" CssClass="smallBodyRed"
                        DisplayMode="List" ShowMessageBox="True" ValidationGroup="valiGroup2" />
                </td>
            </tr>
            <tr>
                <td align="left" valign="top">
                                        <asp:Label ID="lblMessage" runat="server" CssClass="smallBodyGreen" Font-Bold="True"></asp:Label></td>
            </tr>
        </table>      
        <table border="0" cellpadding="0" cellspacing="0" style="width: 690px">
            <tr>
                <td align="center" valign="top">
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">                           
                            <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                                <tr>
                                    <td align="left" colspan="4" valign="top" class="head2" style="height: 14px">
                                        1. User Details</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 24px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px; height: 24px" valign="top">
                                        Username</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 24px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px; height: 24px" valign="top">
                                        <asp:TextBox ID="txtUsername" runat="server" MaxLength="20" CssClass="txtMandatory" Enabled="False"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername"
                                            CssClass="smallBodyRed" ErrorMessage="Please enter a username" ValidationGroup="valGroup1">*</asp:RequiredFieldValidator><cc1:FilteredTextBoxExtender
                                                ID="FilteredTextBoxExtender3" runat="server" FilterType="Custom,Numbers,LowercaseLetters,UppercaseLetters"
                                                TargetControlID="txtUsername" ValidChars='#@|\/_-.&() -"+'>
                                            </cc1:FilteredTextBoxExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 24px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px; height: 24px" valign="top">
                                        Password</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 24px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px; height: 24px" valign="top">
                                        <asp:TextBox ID="txtPassword" runat="server" MaxLength="30" TextMode="Password" CssClass="txtMandatory" Enabled="False"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword"
                                            CssClass="smallBodyRed" ErrorMessage="Please enter a password" ValidationGroup="valGroup1">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px" valign="top">
                                        Re-enter Password
                                    </td>
                                    <td align="center" class="smallBody" style="width: 10px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px" valign="top">
                                        <asp:TextBox ID="txtRePassword" runat="server" MaxLength="30" TextMode="Password" CssClass="txtMandatory" Enabled="False"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                                            ControlToValidate="txtRePassword" CssClass="smallBodyRed" ErrorMessage="Please confirm your password" ValidationGroup="valGroup1" Display="Dynamic">*</asp:CompareValidator><asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRePassword"
                                                Display="Dynamic" ErrorMessage="Please Re-enter  the password" ValidationGroup="valGroup1">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 20px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px; height: 20px" valign="top">
                                        &nbsp;</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 20px" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="smallBody" style="width: 486px; height: 20px" valign="top">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px" valign="middle">
                                        NIC</td>
                                    <td align="center" class="smallBody" style="width: 10px" valign="middle">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px" valign="middle">
                                        <asp:TextBox ID="txtServiceNumber" runat="server" MaxLength="10" Width="123px" CssClass="txtMandatory" Enabled="False"></asp:TextBox><asp:Button ID="btnGetDetailsUsingServiceNo" runat="server" CssClass="btnStyle"
                                                Text="..." ValidationGroup="valiGroup2" Enabled="False" Visible="False" />
                                        <asp:RequiredFieldValidator ID="rfvServiceNo" runat="server" ControlToValidate="txtServiceNumber"
                                            CssClass="smallBodyRed" Display="Dynamic" ErrorMessage="Please enter NIC"
                                            SetFocusOnError="True" ValidationGroup="valGroup1">*</asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                                ID="rfvServiceNumberBTN" runat="server" ControlToValidate="txtServiceNumber"
                                                Display="Dynamic" ErrorMessage="Please enter NIC" SetFocusOnError="True"
                                                ValidationGroup="valiGroup2">*</asp:RequiredFieldValidator>
                                        <cc2:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtServiceNumber"
                                            Display="Dynamic" ErrorMessage="Invalid NIC" ValidationExpression="^\d{9}[v|V]$"
                                            ValidationGroup="valiGroup1"></cc2:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px" valign="top">
                                        Salutation</td>
                                    <td align="center" class="smallBody" style="width: 10px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px" valign="top">
                                        &nbsp;<asp:DropDownList ID="ddlSalutation" runat="server" CssClass="smallBody">
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
                                    <td align="left" class="smallBody" style="width: 486px" valign="top">
                                        <asp:TextBox ID="txtFirstName" runat="server" MaxLength="50" Width="260px" CssClass="txtMandatory" Enabled="False"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName"
                                            CssClass="smallBodyRed" ErrorMessage="Please enter the first name" ValidationGroup="valGroup1">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px" valign="top">
                                        Last Name (Optional)
                                    </td>
                                    <td align="center" class="smallBody" style="width: 10px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px" valign="top">
                                        <asp:TextBox ID="txtLastName" runat="server" MaxLength="50" Width="260px" CssClass="txtBox" Enabled="False"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLastName"
                                            CssClass="smallBodyRed" ErrorMessage="Please enter the last name" ValidationGroup="valGroup1" Enabled="False">*</asp:RequiredFieldValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px;" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px;" valign="top">
                                        Designation</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 24px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px;" valign="top">
                                        <asp:TextBox ID="txtDesignation" runat="server" MaxLength="50" Width="260px" CssClass="txtBox"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 22px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px; height: 22px" valign="top">
                                        E mail</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 22px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px; height: 22px" valign="top">
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txtBox" MaxLength="50" Width="260px"></asp:TextBox><cc2:RegularExpressionValidator
                                            ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail"
                                            Display="Dynamic" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                            ValidationGroup="valiGroup1"></cc2:RegularExpressionValidator></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 22px" valign="top">
                                        &nbsp;</td>
                                    <td align="right" class="smallBody" style="width: 130px; height: 22px" 
                                        valign="top">
                                        Company</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 22px" 
                                        valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px; height: 22px" 
                                        valign="top">
                                        <asp:DropDownList ID="ddlDivision" runat="server" CssClass="dropDown" 
                                            Enabled="False" Width="265px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 22px" valign="top">
                                        &nbsp;</td>
                                    <td align="right" class="smallBody" style="width: 130px; height: 22px" 
                                        valign="top">
                                        Location</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 22px" 
                                        valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px; height: 22px" 
                                        valign="top">
                                        <asp:DropDownList ID="ddlLocation" runat="server" AutoPostBack="True" 
                                            CssClass="dropDown" Enabled="False" Width="265px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 22px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 130px; height: 22px" valign="top">
                                        Department
                                    </td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 22px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px; height: 22px" valign="top">
                                        <asp:DropDownList ID="ddlDepat" runat="server" Width="265px" CssClass="dropDown">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 22px" valign="top">
                                        &nbsp;</td>
                                    <td align="right" class="smallBody" style="width: 130px; height: 22px" 
                                        valign="top">
                                        KOT Department</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 22px" 
                                        valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 486px; height: 22px" 
                                        valign="top">
                                        <asp:DropDownList ID="ddlKOTDept" runat="server" CssClass="dropDown" 
                                            Width="265px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 77px; height: 6px" valign="top">
                                    </td>
                                    <td align="right" style="width: 130px; height: 6px" valign="top">
                                    </td>
                                    <td align="center" style="width: 10px; height: 6px" valign="top">
                                    </td>
                                    <td align="right" style="width: 486px; height: 6px" valign="top">
                                        &nbsp;<asp:Button ID="btnv1Next" runat="server" Text="Next >" CssClass="btnStyle" Width="80px" Enabled="False" ValidationGroup="valGroup1" /></td>
                                </tr>
                            </table>
                            <br />
                        </asp:View>
                        <asp:View ID="View2" runat="server">                          
                            <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                                <tr>
                                    <td align="left" colspan="4" valign="top" class="head2" style="height: 14px">
                                        1.2.Oprional User Details</td>
                                </tr>
                                <tr>
                                    <td align="right" class="smallBody" style="width: 168px; height: 24px" valign="top">
                                    </td>
                                    <td align="right" class="smallBody" style="width: 168px; height: 24px" valign="top">
                                        NIC</td>
                                    <td align="center" class="smallBody" style="width: 10px; height: 24px" valign="top">
                                        :</td>
                                    <td align="left" class="smallBody" style="width: 602px; height: 24px" valign="top">
                                        &nbsp;<asp:TextBox ID="txtNIC" runat="server" MaxLength="15" Width="260px" CssClass="txtBox"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 168px; height: 24px;" valign="top" class="smallBody">
                                    </td>
                                    <td align="right" style="width: 168px; height: 24px;" valign="top" class="smallBody">
                                        Contact Number
                                    </td>
                                    <td align="center" style="width: 10px; height: 24px;" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px; height: 24px;" valign="top" class="smallBody">
                                        &nbsp;<asp:TextBox ID="txtContactNo" runat="server" MaxLength="22" Width="260px" CssClass="txtBox"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 168px; height: 12px;" valign="top" class="smallBody">
                                    </td>
                                    <td align="right" style="width: 168px; height: 12px;" valign="top" class="smallBody">
                                        Address (Line 1)
                                    </td>
                                    <td align="center" style="width: 10px; height: 12px;" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px; height: 12px;" valign="top" class="smallBody">
                                        &nbsp;<asp:TextBox ID="txtAddress1" runat="server" MaxLength="100" Width="260px" CssClass="txtBox"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 168px" valign="top" class="smallBody">
                                    </td>
                                    <td align="right" style="width: 168px" valign="top" class="smallBody">
                                        (Line 2)</td>
                                    <td align="center" style="width: 10px" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px" valign="top" class="smallBody">
                                        &nbsp;<asp:TextBox ID="txtAddress2" runat="server" MaxLength="100" Width="260px" CssClass="txtBox"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 168px" valign="top" class="smallBody">
                                    </td>
                                    <td align="right" style="width: 168px" valign="top" class="smallBody">
                                        (Line 3)
                                    </td>
                                    <td align="center" style="width: 10px" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px" valign="top" class="smallBody">
                                        &nbsp;<asp:TextBox ID="txtAddress3" runat="server" MaxLength="100" Width="260px" CssClass="txtBox"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 168px" valign="top" class="smallBody">
                                    </td>
                                    <td align="right" style="width: 168px" valign="top" class="smallBody">
                                        Date of Birth
                                    </td>
                                    <td align="center" style="width: 10px" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px" valign="top" class="smallBody">
                                        &nbsp;<asp:DropDownList ID="ddlDOBDate" runat="server" CssClass="dropDown">
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
                                        <asp:DropDownList ID="ddlDOBMonth" runat="server" CssClass="dropDown">
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
                                        <asp:DropDownList ID="ddlDOBYear" runat="server" CssClass="dropDown">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 168px; height: 20px" valign="top" class="smallBody">
                                    </td>
                                    <td align="right" style="width: 168px; height: 20px" valign="top" class="smallBody">
                                        Gender</td>
                                    <td align="center" style="width: 10px; height: 20px" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px; height: 20px" valign="top" class="smallBody">
                                        &nbsp;<asp:RadioButton ID="rdoMale" runat="server" Checked="True" GroupName="radioGender"
                                            Text="Male" />
                                        <asp:RadioButton ID="rdoFemale" runat="server" GroupName="radioGender" Text="Female" /></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 168px; height: 19px" valign="top" class="smallBody">
                                    </td>
                                    <td align="right" style="width: 168px; height: 19px" valign="top" class="smallBody">
                                        Marital Status
                                    </td>
                                    <td align="center" style="width: 10px; height: 19px" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px; height: 19px" valign="top" class="smallBody">
                                        &nbsp;<asp:RadioButton ID="rdoMarried" runat="server" Checked="True" Text="Married" GroupName="rdoMaritalStatus" />
                                        <asp:RadioButton ID="rdoNotMarried" runat="server" Text="Not Married" GroupName="rdoMaritalStatus" /></td>
                                </tr>
                                <tr>
                                    <td align="left" style="width: 168px; height: 19px" valign="top">
                                        <asp:Button ID="btnv2Back" runat="server" Text="< Back" CssClass="btnStyle" Width="80px" CausesValidation="False" /></td>
                                    <td align="right" style="width: 168px; height: 19px" valign="top">
                                    </td>
                                    <td align="center" style="width: 10px; height: 19px" valign="top">
                                    </td>
                                    <td align="right" style="width: 602px; height: 19px" valign="top">
                                        &nbsp;<asp:Button ID="btnv2Next" runat="server" Text="Next >" CssClass="btnStyle" Width="80px" CausesValidation="False" /></td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View3" runat="server">                           
                            <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                                <tr>
                                    <td align="left" colspan="3" style="height: 19px" valign="top" class="head2">
                                        2. System Access Level</td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 83px; height: 18px;" valign="top" class="smallBody">
                                        Role
                                    </td>
                                    <td align="center" style="width: 10px; height: 18px;" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px; height: 18px;" valign="top" class="smallBody">
                                        &nbsp;<asp:DropDownList ID="ddlUserLevel" runat="server" AutoPostBack="True" CssClass="dropDown">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 83px; height: 20px" valign="top" class="smallBody">
                                        User Type</td>
                                    <td align="center" style="width: 10px; height: 20px" valign="top" class="smallBody">
                                        :</td>
                                    <td align="left" style="width: 602px; height: 20px" valign="top" class="smallBody">
                                        &nbsp;<asp:DropDownList ID="ddlUserType" runat="server" CssClass="dropDown">
                                        </asp:DropDownList></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 83px; height: 20px" valign="top" class="smallBody">
                                    </td>
                                    <td align="center" style="width: 10px; height: 20px" valign="top" class="smallBody">
                                    </td>
                                    <td align="left" style="width: 602px; height: 20px" valign="top" class="smallBody">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 83px; height: 20px" valign="top">
                                    </td>
                                    <td align="center" style="width: 10px; height: 20px" valign="top">
                                    </td>
                                    <td align="left" style="width: 602px; height: 20px" valign="top">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 680px">
                                <tr>
                                    <td align="left" style="width: 168px; height: 24px" valign="top">
                                        <asp:Button ID="btnv3Back" runat="server" Text="< Back" CssClass="btnStyle" Width="80px" CausesValidation="False" /></td>
                                    <td align="right" style="width: 168px; height: 24px" valign="top">
                                        &nbsp;
                                    </td>
                                    <td align="center" style="width: 10px; height: 24px" valign="top">
                                        &nbsp;</td>
                                    <td align="right" style="width: 602px; height: 24px" valign="top">
                                        &nbsp;<asp:Button ID="btnRegister" runat="server" Text="Register User" CssClass="btnStyle" />
                                        <asp:Button ID="btnAccessControl" runat="server" Text="Control Accessibility >" Visible="False" CssClass="btnStyle" CausesValidation="False" /></td>
                                </tr>
                                <tr>
                                    <td align="right" style="width: 168px" valign="top">
                                    </td>
                                    <td align="right" style="width: 168px" valign="top">
                                    </td>
                                    <td align="center" style="width: 10px" valign="top">
                                    </td>
                                    <td align="left" style="width: 602px" valign="top">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="4" valign="top">
                                        </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View4" runat="server">                           
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 680px">
                                <tr>
                                    <td align="left" colspan="3" style="height: 19px; width: 680px;" valign="top" class="head2">
                                        Access Control</td>
                                </tr>                                
                                <tr>
                                    <td align="left" class="smallBody" colspan="3" style="width: 680px; height: 19px"
                                        valign="top">
                                        A new user has been created. Pleas select the appropriate permissions for this user.</td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="3" valign="top" style="width: 680px">
                                        <br />
                                        <asp:GridView ID="gvProfile" runat="server" CssClass="gridView">
                                            <HeaderStyle CssClass="head3" />
                                        </asp:GridView>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3" valign="top" style="width: 680px">
                                        &nbsp;<asp:TextBox ID="txtHidPerms" runat="server" BorderStyle="None" Height="0px"
                                            Width="0px"></asp:TextBox></td>
                                </tr>
                            </table>
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 680px">
                                <tr>
                                    <td align="left" style="width: 168px" valign="top">
                                        <asp:Button ID="btnBack4" runat="server" Text="< Back" CssClass="btnStyle" Width="80px" CausesValidation="False" /></td>
                                    <td align="right" style="width: 168px" valign="top">
                                    </td>
                                    <td align="center" style="width: 10px" valign="top">
                                    </td>
                                    <td align="right" style="width: 602px" valign="top">
                                        &nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btnStyle" Width="80px" CausesValidation="False" /></td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="4" valign="top">
                                        </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table></td>
        </tr>
    </table>
</asp:Content>

