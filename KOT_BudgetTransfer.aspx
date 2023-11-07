<%@ page title="" language="C#" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="true" inherits="KOT_BudgetTransfer, App_Web_1f0piase" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
             
           

    
      
       .style2
       {
           width: 268px;
       }
       .style3
       {
           height: 19px;
           width: 268px;
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
                    KOT - Budget Transfer<asp:ScriptManager ID="ScriptManager1" runat="server">
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
                        Text="Budget Transfer" Width="122px" onclick="btnAdditional_Click"/>
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
                <table border="0" cellpadding="1" cellspacing="1" style="width: 800px">
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            <asp:Button ID="btnUpdate" runat="server" CssClass="btnStyle" 
                                onclick="btnUpdate_Click" OnClientClick="showProgress();" Text="Update" 
                                Width="63px" />
                            </td>
                    </tr>
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            <table width="800">
                                <tr>
                                    <td style="vertical-align: top">
                                       <fieldset><legend>Transfer To</legend>
                                           <table width="400">
                                               <tr>
                                                   <td>
                                                       &nbsp;</td>
                                                   <td class="style2">
                                                       &nbsp;</td>
                                               </tr>
                                               <tr>
                                                   <td>
                                                       Department</td>
                                                   <td class="style2">
                                                       <asp:DropDownList ID="ddlDept" runat="server" AutoPostBack="True" 
                                                           CssClass="dropDown" Height="20px" 
                                                           onselectedindexchanged="ddlDept_SelectedIndexChanged" Width="150px">
                                                       </asp:DropDownList>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td>
                                                       Year</td>
                                                   <td class="style2">
                                                       <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" 
                                                           CssClass="dropDown" Height="20px" 
                                                           onselectedindexchanged="ddlYear_SelectedIndexChanged" Width="150px">
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
                                                   <td class="style2">
                                                       <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True" 
                                                           CssClass="dropDown" Height="20px" 
                                                           onselectedindexchanged="ddlMonth_SelectedIndexChanged" Width="150px">
                                                       </asp:DropDownList>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td>
                                                       Current Budget Value</td>
                                                   <td class="style2">
                                                       <asp:Label ID="txtCurBudget" runat="server" CssClass="txtlabel" Width="145px"></asp:Label>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td class="style1">
                                                       Transfered Value</td>
                                                   <td class="style3">
                                                       <asp:Label ID="txtTransVal" runat="server" CssClass="txtlabel" Width="145px"></asp:Label>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td class="style1">
                                                       Additional Value</td>
                                                   <td class="style3">
                                                       <asp:Label ID="txtAddVal" runat="server" CssClass="txtlabel" Width="145px"></asp:Label>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td class="style1">
                                                       Current Balance Value</td>
                                                   <td class="style3">
                                                       <asp:Label ID="txtCurBal" runat="server" CssClass="txtlabel" Width="145px"></asp:Label>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td class="style1">
                                                       Special Notes</td>
                                                   <td class="style3">
                                                       <asp:TextBox ID="txtNotes" runat="server" CssClass="txtBox" Height="50px" 
                                                           MaxLength="20" TextMode="MultiLine" Width="260px"></asp:TextBox>
                                                   </td>
                                               </tr>
                                           </table>
                                        </fieldset></td>
                                    <td style="vertical-align: top">
                                       <fieldset><legend>Transfer From</legend>
                                           <asp:GridView ID="grdFrom" runat="server" AutoGenerateColumns="False" 
                                               CssClass="gridView" ShowHeaderWhenEmpty="True" Width="3px">
                                               <Columns>
                                                   <asp:TemplateField>
                                                       <EditItemTemplate>
                                                           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                       </EditItemTemplate>
                                                       <ItemTemplate>
                                                           <asp:CheckBox ID="ChkSel" runat="server" />
                                                       </ItemTemplate>
                                                   </asp:TemplateField>
                                                   <asp:TemplateField HeaderText="Year" SortExpression="YearId">
                                                       <EditItemTemplate>
                                                           <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("YearId") %>'></asp:TextBox>
                                                       </EditItemTemplate>
                                                       <ItemTemplate>
                                                           <asp:Label ID="Label1" runat="server" Text='<%# Bind("YearId") %>'></asp:Label>
                                                       </ItemTemplate>
                                                       <HeaderStyle Width="50px" />
                                                   </asp:TemplateField>
                                                   <asp:TemplateField HeaderText="Month" SortExpression="MonthId">
                                                       <EditItemTemplate>
                                                           <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MonthId") %>'></asp:TextBox>
                                                       </EditItemTemplate>
                                                       <ItemTemplate>
                                                           <asp:Label ID="Label2" runat="server" Text='<%# Bind("MonthId") %>'></asp:Label>
                                                       </ItemTemplate>
                                                       <HeaderStyle Width="50px" />
                                                   </asp:TemplateField>
                                                   <asp:TemplateField HeaderText="Balance Value" SortExpression="BalanceValue">
                                                       <EditItemTemplate>
                                                           <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("BalanceValue") %>'></asp:TextBox>
                                                       </EditItemTemplate>
                                                       <ItemTemplate>
                                                           <asp:Label ID="Label3" runat="server" Text='<%# Bind("BalanceValue") %>'></asp:Label>
                                                       </ItemTemplate>
                                                   </asp:TemplateField>
                                                   <asp:TemplateField HeaderText="Transfered  Value" SortExpression="BalanceValue">
                                                       <EditItemTemplate>
                                                           <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BalanceValue") %>'></asp:TextBox>
                                                       </EditItemTemplate>
                                                       <ItemTemplate>
                                                           <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("BalanceValue") %>' 
                                                             onkeypress="return isNumberKey(event,this)"   Width="50px"></asp:TextBox>
                                                       </ItemTemplate>
                                                   </asp:TemplateField>
                                                   <asp:TemplateField HeaderText="TransferedValue" 
                                                       SortExpression="TransferedValue" Visible="False">
                                                       <EditItemTemplate>
                                                           <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("TransferedValue") %>'></asp:TextBox>
                                                       </EditItemTemplate>
                                                       <ItemTemplate>
                                                           <asp:Label ID="lblOrgTransVal" runat="server" 
                                                               Text='<%# Bind("TransferedValue") %>'></asp:Label>
                                                       </ItemTemplate>
                                                   </asp:TemplateField>
                                               </Columns>
                                           </asp:GridView>
                                        </fieldset></td>
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
                </table>
            </asp:View>
            <asp:View ID="view1" runat="server">
                <asp:GridView ID="grdTransfer" runat="server" AutoGenerateColumns="False" 
                    CssClass="gridView" ShowHeaderWhenEmpty="True" Width="800px">
                    <Columns>
                        <asp:BoundField DataField="ToYearId" HeaderText="To Year" 
                            SortExpression="ToYearId" />
                        <asp:BoundField DataField="ToMonthId" HeaderText="To Month" 
                            SortExpression="ToMonthId" />
                        <asp:BoundField DataField="NewTransferedValue" HeaderText="Transfered Value" 
                            SortExpression="NewTransferedValue" />
                        <asp:BoundField DataField="FromYear" HeaderText="From Year" 
                            SortExpression="FromYear" />
                        <asp:BoundField DataField="FromMonth" HeaderText="From Month" 
                            SortExpression="FromMonth" />
                        <asp:BoundField DataField="Remarks" HeaderText="Remarks" 
                            SortExpression="Remarks" />
                        <asp:BoundField DataField="UpdatedDate" DataFormatString="{0:yyyy-MM-dd}" 
                            HeaderText="Updated Date" HtmlEncode="False" SortExpression="UpdatedDate">
                        <HeaderStyle Width="100px" />
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






