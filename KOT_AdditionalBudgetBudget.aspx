<%@ page title="" language="C#" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="true" inherits="KOT_AdditionalBudgetBudget, App_Web_1f0piase" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script language="javascript" type="text/javascript">

        function showProgress() {

            $find('ContentPlaceHolder1_mdlPopup').show();

        }
        function isNumberKey(evt, obj) {

            var charCode = (evt.which) ? evt.which : event.keyCode
            var value = obj.value;
            var dotcontains = value.indexOf(".") != -1;
            if (dotcontains)
                if (charCode == 46) return false;
            if (charCode == 46) return true;
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }

        function ViewOrder() {

            var label = $('#ContentPlaceHolder1_lblReqNo').text();


            window.open("Upload/ConOrders/" + label + ".pdf");

        }
</script>
   <style type="text/css">
      .tblDetails
        {
            width: 800px;
            border:1px solid #E0E0FF;
             padding: 0px;
             
        }
       
        .Signature
        {
            width: 192px;
            height: 104px;
        }
        
        .modalBackground1 
        { 
            background-color: Gray; 
            filter: alpha(opacity=60); 
            opacity: 0.60; 
        }

        .updateProgress 
        { 
            border-width: 5px; 
            border-style: solid; 
            background-color: #FFFFFF; 
            position: absolute; 
            height: 50px; 
            width: 290px; 
        }
        
       .modalBackground
        {

            background-color:#414141;
            filter:alpha(opacity=70);
            opacity:0.7;
        }
        
         .ItemPanel
        {
           
            background-color: #cce6ff;
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            Height:600px;
            Width:800px;
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
    
        
        }
  
       .popupTitleName
        {
           color: #FFFFFF;
           font-size:x-large; 
           font-weight:bold;
        }
        
        .popupTitleNameMat
        {
           color: #FFFFFF;
           font-size:x-large; 
           font-weight:bold;
        }
         .ItemPanelMat
        {
           
            background-color: #cce6ff;
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            Height:600px;
            Width:800px;
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
    
        
        }
  .SAPLogin
        {
           
            background-color: #ffffff;
            border-style: solid;
            border-color: inherit;
            border-width: 1px;
            Height:260px;
            Width:570px;
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
    
        
        }
       .popupTitleNameMat
        {
           color: #FFFFFF;
           font-size:x-large; 
           font-weight:bold;
        }
      
           

    
      
       .style1
       {
           height: 19px;
       }
             
           

    
      
       </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 

    <div>
  <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                                            BackgroundCssClass="modalBackground" PopupControlID="pnlPopup" 
                                            TargetControlID="pnlPopup" />

                                            <cc1:ModalPopupExtender ID="mdlPopup" runat="server" 
                                            BackgroundCssClass="modalBackground" PopupControlID="pnlPopup" 
                                            TargetControlID="pnlPopup" />
                                        <asp:Panel ID="pnlPopup" runat="server" CssClass="updateProgress">
                                            <div ID="imageDiv">
                                                <div style="float: left; margin: 9px">
                                                    <img src="images/loading.gif" width="32px" height="32px" />
                                                </div>
                                                <div style="padding-top: 17.5px; font-family: Arial,Helvetica,sans-serif; font-size: 12px;">
                                                    Please wait....
                                                </div>
                                            </div>
                                        </asp:Panel>

    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
    <td align="left" valign="top">
        <table border="0" cellpadding="1" cellspacing="1" width="100%">
            <tr>
                <td class="head1" style="width: 200px">
                    KOT - Additional Budget<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                   
                </td>
            </tr>
            <tr>
                <td align="left" class="MediumBody" colspan="4" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                <td align="left" class="MediumBody" colspan="4" style="height: 20px" valign="top">
                    <asp:Button id="btnAdditional" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabActive" 
                        Text="Additional Budget" Width="122px" onclick="btnAdditional_Click"/>
                    <asp:Button id="btnLog" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" 
                        Text="Log" Width="122px" onclick="btnLog_Click"/>
                    </td>
            </tr>
            <tr>  
                <td class="tabBottomBar" colspan="3"  >
                </td>
            </tr>
                </table>
                </td>
            </tr>     
            <tr>
                <td align="left" class="MediumBody" colspan="4" valign="top">
                    <asp:Label ID="lblErrorMessages" runat="server" CssClass="MediumBodyRed"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" class="MediumBody" colspan="4" valign="top">
                    <asp:Label ID="lblMessage" runat="server" CssClass="MediumBodyGreen" Font-Bold="True"></asp:Label></td>
            </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">

            <asp:View ID="viewSearch" runat="server">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnUpdate" runat="server" CssClass="btnStyle" 
                                            onclick="btnUpdate_Click" OnClientClick="showProgress();" Text="Update" 
                                            Width="63px" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        Company</td>
                                    <td>
                                        <asp:DropDownList ID="ddlLocation" runat="server" AutoPostBack="True" 
                                            CssClass="dropDown" onselectedindexchanged="ddlLocation_SelectedIndexChanged" 
                                            Width="175px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Department</td>
                                    <td>
                                        <asp:DropDownList ID="ddlDept" runat="server" CssClass="dropDown" Height="20px" 
                                            Width="150px" AutoPostBack="True" 
                                            onselectedindexchanged="ddlDept_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Year</td>
                                    <td>
                                        <asp:DropDownList ID="ddlYear" runat="server" CssClass="dropDown" Height="20px" 
                                            Width="150px" AutoPostBack="True" 
                                            onselectedindexchanged="ddlYear_SelectedIndexChanged">
                                            <asp:ListItem Value="0">&lt;&lt; Select &gt;&gt;</asp:ListItem>
                                            <asp:ListItem>2018</asp:ListItem>
                                            <asp:ListItem>2019</asp:ListItem>
                                            <asp:ListItem>2020</asp:ListItem>
                                            <asp:ListItem>2021</asp:ListItem>
                                            <asp:ListItem>2022</asp:ListItem>
                                            <asp:ListItem>2023</asp:ListItem>
                                            <asp:ListItem>2024</asp:ListItem>
                                            <asp:ListItem>2025</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Month</td>
                                    <td>
                                        <asp:DropDownList ID="ddlMonth" runat="server" CssClass="dropDown" 
                                            Height="20px" Width="150px" AutoPostBack="True" 
                                            onselectedindexchanged="ddlMonth_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Current Budget Value</td>
                                    <td>
                                        <asp:Label ID="txtCurBudget" runat="server" CssClass="txtlabel" Width="145px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Transfered Value</td>
                                    <td class="style1">
                                        <asp:Label ID="txtTransVal" runat="server" CssClass="txtlabel" Width="145px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Additional Value</td>
                                    <td class="style1">
                                        <asp:Label ID="txtAddVal" runat="server" CssClass="txtlabel" Width="145px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Current Balance Value</td>
                                    <td class="style1">
                                        <asp:Label ID="txtCurBal" runat="server" CssClass="txtlabel" Width="145px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        &nbsp;</td>
                                    <td class="style1">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        New Additional Value</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtNewVal" runat="server" CssClass="txtBox" MaxLength="20" 
                                            onkeypress="return isNumberKey(event,this)" Width="145px">0</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                        Special Notes</td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtNotes" runat="server" CssClass="txtBox" MaxLength="20" 
                                            Width="460px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            </td>
                    </tr>
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="view1" runat="server">
                <asp:GridView ID="grdBudget" runat="server" AutoGenerateColumns="False" 
                    CssClass="gridView" ShowHeaderWhenEmpty="True" Width="800px">
                    <Columns>
                        <asp:BoundField DataField="YearId" HeaderText="Year" SortExpression="YearId">
                        <HeaderStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MonthId" HeaderText="Month" SortExpression="MonthId">
                        <HeaderStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="NewValue" HeaderText="Additional Value" 
                            SortExpression="NewValue">
                        <HeaderStyle Width="50px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                            SortExpression="Remarks" />
                        <asp:BoundField DataField="UpdatedDate" DataFormatString="{0:yyyy-MM-dd}" 
                            HeaderText="Updated Date" HtmlEncode="False" SortExpression="UpdatedDate">
                        <HeaderStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UpdatedBy" HeaderText="Updated By" 
                            SortExpression="UpdatedBy">
                        <HeaderStyle Width="50px" />
                        </asp:BoundField>
                    </Columns>
                </asp:GridView>
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





