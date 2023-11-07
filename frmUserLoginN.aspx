<%@ page language="VB" autoeventwireup="false" inherits="frmUserLoginN, App_Web_0syuegnt" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>TJL</title>
    <link rel="SHORTCUT ICON"  href="http://oritsl/orit/images/logoIcon.png" />
    <link href="styles/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        #Contentlogin {
	
	background-image: url(images/backLogin.png);
	background-repeat: no-repeat;
	background-position: center top;
	width: 800px;
	height: 450px;
	margin-right: auto;
	margin-left: auto;
	overflow: auto;
}
        .style1
        {
            width: 207px;
            height: 78px;
        }
        .style2
        {
/*heading Normal*/
	        font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            color: #000000;
            font-weight: bold;
            height: 78px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
         <br />
          <br />
        <div id="Contentlogin" align="center">
            <!--From Sart-->
            <asp:Label ID="lblMessageCapabilities" runat="server" CssClass="smallBodyRed" Font-Bold="False"></asp:Label><br />
            <table border="0" cellpadding="3" cellspacing="2" 
                style="vertical-align: middle;" class="smallBody">
                <tbody>
                    <tr>
                        <td colspan="1" class="style1">
                        </td>
                        <td class="style2" colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td class="smallBody" style="width: 207px">
                            &nbsp;</td>
                        <td class="smallBody" style="color: #FFFF00; font-weight: bold;" align="left" 
                            colspan="3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="smallBody" style="width: 207px">
                        </td>
                        <td class="smallBody" style="width: 71px; color: White;" align="left">
                            <strong>User Name</strong></td>
                        <td class="smallBody" align="left">
                            <strong style="color: White">:</strong></td>
                        <td style="width: 368px" align="left">
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="txtBox" MaxLength="20"
                                Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                                CssClass="smallBodyRed" ErrorMessage="Username is Mandatory" SetFocusOnError="True"
                                ValidationGroup="valGroup1">*</asp:RequiredFieldValidator>
                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Custom,Numbers,LowercaseLetters,UppercaseLetters"
                                TargetControlID="txtUsername" ValidChars='#@|\/_-.&() -"+'>
                            </cc1:FilteredTextBoxExtender>
                        </td>
                    </tr>
                    <tr>
                        <td class="smallBody" style="width: 207px">
                        </td>
                        <td class="smallBody" style="width: 71px; color: White;" align="left">
                            <strong>Password</strong></td>
                        <td class="smallBody" align="left">
                            <strong style="color: White">:</strong></td>
                        <td style="width: 368px" align="left">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="txtBox" MaxLength="20"
                                TextMode="Password" Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                CssClass="smallBodyRed" ErrorMessage="Password is Mandatory" SetFocusOnError="True"
                                ValidationGroup="valGroup1">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td class="smallBody" style="width: 207px">
                        </td>
                        <td class="smallBody" style="width: 71px; color: White;" align="left">
                            <strong>Company</strong></td>
                        <td class="smallBody" align="left">
                            <strong style="color: White">:</strong></td>
                        <td class="smallBody" style="width: 368px" align="left">
                            <table border="0" cellpadding="0" cellspacing="0" width="320">
                                <tr>
                                    <td align="left" valign="top" width="150">
                                        <asp:UpdatePanel ID="updLoginScreen" runat="server" UpdateMode="Always">
                                            <ContentTemplate>
                                               <asp:DropDownList ID="ddlDivision" runat="server" CssClass="txtBox" 
                                                    Width="142px">
                                                </asp:DropDownList>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="ddlLocation" EventName="SelectedIndexChanged" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td align="left" valign="top">
                                        <asp:UpdateProgress ID="UProgress1" runat="server">
                                            <ProgressTemplate>
                                                <div class="smallBody">
                                                    <img src="images/loading.gif" />
                                                    Updating...
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="smallBody" style="width: 207px">
                            &nbsp;</td>
                        <td class="smallBody" style="width: 71px; color: White;" align="left">
                            <strong>Location</strong></td>
                        <td class="smallBody" align="left">
                            <strong style="color: White">:</strong></td>
                        <td class="smallBody" style="width: 368px" align="left">
                            <asp:DropDownList ID="ddlLocation" 
                                runat="server" AutoPostBack="True" CssClass="txtBox" Width="142px" 
                                EnableTheming="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr height="0">
                        <td align="left">
                        </td> <td align="left">
                        </td> <td align="left">
                        </td>
                        <td class="smallBody" style="width: 368px" align="left">
                            <asp:Label ID="lblBrowserMessage" runat="server" CssClass="whitelink" 
                                Font-Bold="True" Width="175px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 207px">
                        </td>
                        <td style="width: 71px" align="left">
                            &nbsp;
                        </td>
                        <td style="width: 8px" align="left">
                            &nbsp;
                        </td>
                        <td class="smallBody" style="width: 368px" align="left">
                            &nbsp;<asp:Button ID="btnLogIn" runat="server" CssClass="btnStyle" Text="Log In"
                                ValidationGroup="valGroup1" /></td>
                    </tr>
                    <tr>
                        <td style="width: 207px; height: 21px">
                        </td>
                        <td style="width: 71px; height: 21px" align="left">
                            &nbsp;</td>
                        <td style="width: 8px; height: 21px" align="left">
                        </td>
                        <td class="smallBody" style="width: 368px; height: 21px" align="left">
                            <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed" 
                                ForeColor="Red" Width="175px"></asp:Label>
                            <asp:ValidationSummary
                                ID="valsLogin" runat="server" CssClass="smallBodyRed" DisplayMode="List" ShowMessageBox="True"
                                ValidationGroup="valGroup1" Width="175px" />
                        </td>
                    </tr>
                </tbody>
            </table>
            <!--From Ends-->
        </div>
    
    </div>
    </form>

</body>
</html>
