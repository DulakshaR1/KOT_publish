<%@ page title="KOT Request Approval" language="C#" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="true" inherits="KOT_RequestApprove, App_Web_1f0piase" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
           font-family: Arial, Helvetica, sans-serif;
           font-size: 10px;
           color: #000000;
           width: 10px;
           height: 18px;
       }
       .style2
       {
           font-family: Arial, Helvetica, sans-serif;
           font-size: 10px;
           color: #000000;
           width: 200px;
           height: 18px;
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
                    KOT Request Approval<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                   
                </td>
            </tr>
            <tr>
                <td align="left" class="MediumBody" colspan="4" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                <td align="left" class="MediumBody" colspan="4" style="height: 20px" valign="top">
                    <asp:Button id="btnCreateRequest" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabActive" 
                        Text="Approval " Width="122px" onclick="btnCreateRequest_Click"/>
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
            <asp:View ID="viewDetails" runat="server">
                
                  <table>
                    <tr>
                        <td>
                          <table border="0" cellpadding="2" cellspacing="1" style="width: 650px">
                    <tr>
                        <td align="left" class="MediumBody" colspan="5" style="height: 24px" 
                            valign="top">
                            <asp:Button ID="btnHODApprove" runat="server" CssClass="btnStyle" 
                                Text="Approve" Width="63px" Visible="False" 
                                OnClientClick="showProgress();" onclick="btnHODApprove_Click"  />
                             
                            &nbsp;<asp:Button 
                                ID="btnHODReject" runat="server" Text="Reject" CssClass="btnStyle" Width="80px" 
                                Visible="False" OnClientClick="showProgress();" 
                                onclick="btnHODReject_Click"  />
                           
                            <asp:Button ID="btnCFTApprove" runat="server" CssClass="btnStyle" 
                                onclick="btnCFTApprove_Click" OnClientClick="showProgress();" 
                                Text="Approve" Visible="False" Width="63px" />
                            <asp:Button ID="btnCFTReject" runat="server" CssClass="btnStyle" 
                                onclick="btnCFTReject_Click" OnClientClick="showProgress();" Text="Reject" 
                                Visible="False" Width="80px" />
                           
                            <asp:Button ID="btnStart" runat="server" CssClass="btnStyle" 
                                onclick="btnStart_Click" OnClientClick="showProgress();" Text="Start" 
                                Visible="False" Width="63px" />
                           
                            <asp:HiddenField ID="hfMenuImg" runat="server" />
                            <asp:Button ID="btnComplete" runat="server" CssClass="btnStyle" 
                                OnClientClick="showProgress();" Text="Complete" Visible="False" 
                                Width="63px" onclick="btnComplete_Click" />
                                <asp:Button ID="btnCompleteAndConfirm" runat="server" CssClass="btnStyle" 
                                OnClientClick="showProgress();" Text="Complete &amp; Send to Confirmation" 
                                Visible="False" Width="175px" onclick="btnCompleteAndConfirm_Click" />
                                                            <asp:Button ID="btnCancel" runat="server" CssClass="btnStyle" 
                                onclick="btnCancel_Click" 
    OnClientClick="showProgress();" Text="Cancel" 
                                Visible="False" Width="63px" />
                            
                            <asp:HiddenField ID="hfStatus" runat="server" />
                            
                           
                            <asp:Button ID="btnClose" runat="server" CausesValidation="False" 
                                CssClass="btnStyle" onclick="btnClose_Click" Text="Close" Width="66px" />
                           
                            <asp:HiddenField ID="HfTotValue" runat="server" Value="0" />
                            <asp:HiddenField ID="HfReqId" runat="server" />
                            <asp:HiddenField ID="HfTotValueCurrent" runat="server" Value="0" />
                            <asp:HiddenField ID="hfDeptId" runat="server" Value="0" />
                            <asp:HiddenField ID="hfLocId" runat="server" Value="0" />
                           
                            <asp:HiddenField ID="hfKOTDeptId" runat="server" Value="0" />
                           
                        </td>
                    </tr>
            <tr>
                <td align="left"   style="width: 10px" class="MediumBody" height: 24px" valign="top">
                </td>
                <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                    Created By</td>
                <td align="left" class="MediumBody"  height: 24px" valign="top" style="width: 200px;">
                    <asp:Label ID="lblReqBy" runat="server" CssClass="txtlabel"  
                        Width="145px" ></asp:Label>
                </td>
                <td align="left" class="MediumBody" style="width: 150px;" height: 24px">
                    Create Date</td>
                <td align="left" class="style2"  height: 24px" 
                    valign="top">
                    <asp:Label ID="lblCreateDate" runat="server" CssClass="txtlabel"  Width="142px"></asp:Label>
                </td>
            </tr>
                    <tr>
                        <td align="left"  style="width: 10px" valign="top">
                        </td>
                        <td align="left" class="MediumBody" style="width: 200px;">
                            Department</td>
                        <td align="left" class="MediumBody"  valign="top" style="width: 200px;">
                            <asp:Label ID="lblDept" runat="server" CssClass="txtlabel"  Width="145px"></asp:Label>
                        </td>
                        <td align="left" class="MediumBody" style="width: 150px;">
                            Request No</td>
                        <td align="left" class="style2"  valign="top">
                            <asp:Label ID="lblReqNo" runat="server" CssClass="txtlabel"  
                                Width="142px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top"  style="width: 10px">
                            &nbsp;</td>
                        <td align="left"  colspan="4" valign="top">
                            <table style="width: 100%" class="MediumBody">
                                <tr>
                                    <td style="font-weight: 700; font-size: small;">
                                        <hr style="background-color: #99CC99; height:1px; border: 1;"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      Request Date</td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:TextBox ID="txtReqDate" runat="server" CssClass="txtBox" ReadOnly="True" 
                                                        Width="122px"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="Calend" runat="server" Format="yyyy-MM-dd" 
                                                        PopupButtonID="ImgBtn0" TargetControlID="txtReqDate"></cc1:CalendarExtender>
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="ImgBtn0" runat="server" Enabled="False" Height="17px" 
                                                        ImageUrl="~/images/calender.jpg" Width="20px" />
                                                </td>
                                            </tr>
                                        </table>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 150px;" valign="top">
                                      Request Time</td>
                                  <td align="left" class="smallBody"  valign="top">
                            <asp:DropDownList ID="ddlHour" runat="server" CssClass="dropDown" 
                                Width="40px" Enabled="False">
                                <asp:ListItem>1</asp:ListItem>
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
                            </asp:DropDownList> :
                            <asp:DropDownList ID="ddlMinute" runat="server" CssClass="dropDown" 
                                Width="40px" Enabled="False">
                                <asp:ListItem Value="0">00</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>35</asp:ListItem>
                                <asp:ListItem>40</asp:ListItem>
                                <asp:ListItem>45</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>55</asp:ListItem>
                            </asp:DropDownList> :
                            <asp:DropDownList ID="ddlAMPM" runat="server" CssClass="dropDown" 
                                Width="50px" Enabled="False">
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      <asp:Label ID="Label32" runat="server" style="margin-bottom: 0px" 
                                          Text="Menu Category" Width="100px"></asp:Label>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                      <asp:DropDownList ID="ddlMenuCat" runat="server" AutoPostBack="True" 
                                          CssClass="dropDown" Enabled="False" Height="20px" 
                                          onselectedindexchanged="ddlMenuCat_SelectedIndexChanged" Width="150px">
                                      </asp:DropDownList>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 150px;" valign="top">
                                      <asp:Label ID="lblMealCat" runat="server" Height="18px" 
                                          style="margin-bottom: 0px" Text="Meal Category" Width="100px"></asp:Label>
                                  </td>
                                  <td align="left" class="style2" valign="top">
                                      <asp:CheckBoxList ID="chkMealCat" runat="server" Enabled="False" 
                                          RepeatDirection="Horizontal" style="text-align: left" Width="200px">
                                      </asp:CheckBoxList>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      No Of Pax</td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                      <asp:TextBox ID="txtNoOfPax" runat="server" CssClass="txtBox" MaxLength="20" 
                                          onkeypress="return isNumberKey(event,this)" ReadOnly="True" Width="145px">0</asp:TextBox>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 150px;" valign="top">
                                      Meal Type</td>
                                  <td align="left" class="style2" valign="top">
                                      <asp:DropDownList ID="ddlMealType" runat="server" CssClass="dropDown" 
                                          Enabled="False" Height="20px" Width="150px">
                                      </asp:DropDownList>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      Type Of Taste</td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                      <asp:DropDownList ID="ddlTypeOfTaste" runat="server" CssClass="dropDown" 
                                          Enabled="False" Height="20px" Width="150px">
                                      </asp:DropDownList>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 150px;" valign="top">
                                      Visitor Type</td>
                                  <td align="left" class="style2" valign="top">
                                      <asp:DropDownList ID="ddlVisitorType" runat="server" CssClass="dropDown" 
                                          Enabled="False" Height="20px" Width="150px">
                                      </asp:DropDownList>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      Venue</td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                      <asp:DropDownList ID="ddlVenue" runat="server" CssClass="dropDown" 
                                          Enabled="False" Height="20px" Width="150px">
                                      </asp:DropDownList>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 150px;" valign="top">
                                      <asp:Label ID="lblMealCat2" runat="server" style="margin-bottom: 0px" 
                                          Text="Type Of Service" Width="100px"></asp:Label>
                                  </td>
                                  <td align="left" class="style2" valign="top">
                                      <asp:RadioButtonList ID="chkTypeOfService" runat="server" Enabled="False" 
                                          RepeatDirection="Horizontal" style="text-align: left" Width="200px">
                                      </asp:RadioButtonList>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      Reason</td>
                                  <td align="left" class="MediumBody" colspan="3" valign="top">
                                      <asp:TextBox ID="txtReason" runat="server" CssClass="txtBox" 
                                          MaxLength="20"  ReadOnly="True" 
                                          Width="460px"></asp:TextBox>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      Remarks</td>
                                  <td align="left" class="MediumBody" colspan="3" valign="top">
                                      <asp:TextBox ID="txtRemark" runat="server" CssClass="txtBox" 
                                          MaxLength="20"  ReadOnly="True" 
                                          Width="460px"></asp:TextBox>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" colspan="4">
                                      <asp:Panel ID="PanelBudget" runat="server" Visible="False">
                                          <table width="100%">
                                              <tr>
                                                  <td>
                                                      <table class="MediumBody" style="width: 100%">
                                                          <tr>
                                                              <td style="width: 100px; font-weight: 700; font-size: small;">
                                                                  Budget</td>
                                                              <td>
                                                                  <hr 
                                                                  style="background-color: #99CC99; height:1px; border: 1;" />
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td>
                                                      <asp:GridView ID="grdBudget" runat="server" AutoGenerateColumns="False" 
                                                          CssClass="gridView" onrowdatabound="grdBudget_RowDataBound" 
                                                          ShowHeaderWhenEmpty="True" Width="610px">
                                                          <Columns>
                                                              <asp:TemplateField HeaderText="Monthly Budget" SortExpression="BudgetValue">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("BudgetValue") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblMonthlyBudget" runat="server" 
                                                                          Text='<%# Bind("BudgetValue") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="Transfered" SortExpression="TransferedValue">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox14" runat="server" 
                                                                          Text='<%# Bind("TransferedValue") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblTransfered" runat="server" 
                                                                          Text='<%# Bind("TransferedValue") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="Additional" SortExpression="AdditionalValue">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox15" runat="server" 
                                                                          Text='<%# Bind("AdditionalValue") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblAdditional" runat="server" 
                                                                          Text='<%# Bind("AdditionalValue") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="Total Budget">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblTotBudget" runat="server" Text='<%# Bind("TotBudget") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="Allocated">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblAllocated" runat="server" Text='<%# Bind("Allocated") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="Available" SortExpression="BalanceValue">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("BalanceValue") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblAvailable" runat="server" Text='<%# Bind("BalanceValue") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="Requested">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblRequested" runat="server" Text='<%# Bind("Requested") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="Pending">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblPending" runat="server" Text='<%# Bind("Pending") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="Balance">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblBalance" runat="server" Text='<%# Bind("Balance") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                                  <ItemStyle HorizontalAlign="Right" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="YearId" SortExpression="YearId" Visible="False">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("YearId") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblYear" runat="server" Text='<%# Bind("YearId") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="MonthId" SortExpression="MonthId" 
                                                                  Visible="False">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MonthId") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="lblMonth" runat="server" Text='<%# Bind("MonthId") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                              </asp:TemplateField>
                                                          </Columns>
                                                      </asp:GridView>
                                                  </td>
                                              </tr>
                                          </table>
                                      </asp:Panel>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" colspan="4" valign="top">
                                      <table style="width: 100%" class="MediumBody">
                                <tr>
                                    <td style="width: 80px; font-weight: 700; font-size: small;">
                                        Menu Items</td>
                                    <td>
                                        <hr style="background-color: #99CC99; height:1px; border: 1;"/>
                                    </td>
                                </tr>
                            </table>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" colspan="4" bgcolor="#DDEEE3">
                                      <table>
                                          <tr>
                                              <td>
                                                  &nbsp;</td>
                                              <td>
                                                  <asp:ImageButton ID="btnAdd" runat="server" BorderColor="Silver" 
                                                      BorderWidth="1px" ImageUrl="~/images/ContextMenu/plus.png" onclientclick="showProgress();" 
                                                      ToolTip="Add New Materials" Enabled="False" style="height: 18px" 
                                                      onclick="btnAdd_Click" />
                                              </td>
                                              <td>
                                                  <asp:ImageButton ID="btnDel" runat="server" BorderColor="Silver" 
                                                      BorderWidth="1px" Enabled="False" ImageUrl="~/images/ContextMenu/delete.png" 
                                                      ToolTip="Remove Selected Items" 
                                                      style="width: 17px" onclick="btnDel_Click" />
                                              </td>
                                              <td>
                                                  <asp:ImageButton ID="btnRefesh" runat="server" BorderColor="Silver" 
                                                      BorderWidth="1px" Enabled="False" Height="16px" 
                                                      ImageUrl="~/images/refresh.png" ToolTip="Refesh" Width="16px" 
                                                      onclick="btnRefesh_Click" />
                                                 </td>
                                          </tr>
                                      </table>
                                  </td>
                              </tr>
                    <tr>
                        <td align="left"  style="width: 10px" valign="top">
                            &nbsp;</td>
                        <td align="left" class="MediumBody" valign="top" colspan="4">
                            <asp:GridView ID="grdSelectedMenu" runat="server" AutoGenerateColumns="False" 
                                CssClass="dropDownMedium" ShowHeaderWhenEmpty="True" Width="600px" 
                                onrowdatabound="grdSelectedMenu_RowDataBound" ShowFooter="True">
                                <Columns>
                                    <asp:TemplateField>
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox14" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox15" runat="server" />
                                        </ItemTemplate>
                                        <HeaderStyle Width="5px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="MenuId" SortExpression="MenuId" Visible="False">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("MenuId") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label27" runat="server" Text='<%# Bind("MenuId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="MenuImage" SortExpression="MenuImage" 
                                        Visible="False">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("MenuImage") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label28" runat="server" Text='<%# Bind("MenuImage") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Image">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="MenuImg0" runat="server" Height="100px" 
                                                style="text-align: center" Width="100px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Menu No" SortExpression="MenuNo">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MenuNo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("MenuNo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Menu Description" SortExpression="MenuDesc">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MenuDesc") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("MenuDesc") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Menu Items">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:GridView ID="grdItems0" runat="server" AutoGenerateColumns="False" 
                                                BorderWidth="0px" CssClass="gridViewMedium" ShowHeader="False">
                                                <Columns>
                                                    <asp:BoundField DataField="ItemDesc" HeaderText="ItemDesc" 
                                                        SortExpression="ItemDesc" />
                                                </Columns>
                                            </asp:GridView>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Price" SortExpression="Price">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" CssClass="txtBoxMedium" 
                                                Text='<%# Bind("Quantity") %>' onkeypress="return isNumberKey(event,this)" Width="50px"></asp:TextBox>
                                        </ItemTemplate>
                                        <ItemStyle HorizontalAlign="Right" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Value (Rs)" SortExpression="Value">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Value") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblValue" runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <FooterStyle HorizontalAlign="Right" BackColor="Yellow" />
                                        <ItemStyle HorizontalAlign="Right" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="LblStatus" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Assign To" SortExpression="AssignTo">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("AssignTo") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("AssignTo") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      </td>
                                  <td align="left" class="MediumBody" colspan="4" valign="top">
                                      <asp:Panel ID="PanelHODApprove" runat="server" Visible="False">
                                       

                                            <table width="100%">
                                              <tr>
                                                  <td>
                                                      <table class="MediumBody" style="width: 100%">
                                                          <tr>
                                                              <td style="width: 100px; font-weight: 700; font-size: small;">
                                                                  HOD Approval</td>
                                                              <td>
                                                                  <hr 
                                                                  style="background-color: #99CC99; height:1px; border: 1;" />
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                              <tr>
                                              <td>
                                                  <table class="MediumBody">
                                                      <tr>
                                                          <td>
                                                              Approved By</td>
                                                          <td>
                                                              <asp:DropDownList ID="ddlHOD" runat="server" 
                                                                  CssClass="dropDown" Enabled="False" Height="20px" Width="150px">
                                                              </asp:DropDownList>
                                                          </td>
                                                          <td>
                                                              <asp:Label ID="Label29" runat="server" Width="100px"></asp:Label>
                                                          </td>
                                                          <td>
                                                              <asp:Label ID="lblHodAppDate" runat="server" Width="90px" Visible="False">Approved Date</asp:Label>
                                                              &nbsp;</td>
                                                          <td>
                                                              <asp:Label ID="lblHODApprovedDate" runat="server" CssClass="txtlabel" 
                                                                  Width="142px" Visible="False"></asp:Label>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td>
                                                              <asp:Label ID="lblHodRemarks" runat="server" Width="80px" Visible="False">Remarks</asp:Label>
                                                          </td>
                                                          <td colspan="4">
                                                              <asp:TextBox ID="txtHODRemark" runat="server" CssClass="txtBox" MaxLength="20" 
                                                                  ReadOnly="True" Width="500px" Visible="False"></asp:TextBox>
                                                          </td>
                                                      </tr>
                                                  </table>
                                                  </td>
                                              </tr>
                                          </table>
                                      </asp:Panel>
                                  </td>
                              </tr>
                    
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" colspan="4" valign="top">
                                      <asp:Panel ID="PanelCFTApprove" runat="server" Visible="False">
                                         <table width="100%">
                                              <tr>
                                                  <td>
                                                      <table class="MediumBody" style="width: 100%">
                                                          <tr>
                                                              <td style="width: 100px; font-weight: 700; font-size: small;">
                                                                  CFT Approval</td>
                                                              <td>
                                                                  <hr 
                                                                  style="background-color: #99CC99; height:1px; border: 1;" />
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td>
                                                      <table class="MediumBody">
                                                          <tr>
                                                              <td>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  Approved By</td>
                                                              <td>
                                                                  <asp:Label ID="lblCFTApprove" runat="server" CssClass="txtlabel" Width="142px"></asp:Label>
                                                              </td>
                                                              <td>
                                                                  <asp:Label ID="Label30" runat="server" Width="100px"></asp:Label>
                                                              </td>
                                                              <td>
                                                                  <asp:Label ID="lblCFTAppDate" runat="server" Visible="False" Width="90px">Approved Date</asp:Label>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  <asp:Label ID="lblCFTApprovedDate" runat="server" CssClass="txtlabel" 
                                                                      Visible="False" Width="142px"></asp:Label>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  <asp:Label ID="lblCFTRemarks" runat="server" Visible="False" Width="80px">Remarks</asp:Label>
                                                              </td>
                                                              <td colspan="4">
                                                                  <asp:TextBox ID="txtCFTRemark" runat="server" CssClass="txtBox" MaxLength="20" 
                                                                      ReadOnly="True" Visible="False" Width="500px"></asp:TextBox>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                          </table>
                                      </asp:Panel>
                                  </td>
                              </tr>
                    
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" colspan="4" valign="top">
                                      <asp:Panel ID="PanelCanteen" runat="server" Visible="False">
                                          <table width="100%">
                                              <tr>
                                                  <td>
                                                      <table class="MediumBody" style="width: 100%">
                                                          <tr>
                                                              <td style="width: 100px; font-weight: 700; font-size: small;">
                                                                  Canteen</td>
                                                              <td>
                                                                  <hr 
                                                                  style="background-color: #99CC99; height:1px; border: 1;" />
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td>
                                                      <table class="MediumBody">
                                                          <tr>
                                                              <td>
                                                                  Start By</td>
                                                              <td>
                                                                  <asp:Label ID="txtCantStartBy" runat="server" CssClass="txtlabel" 
                                                                      Width="142px"></asp:Label>
                                                              </td>
                                                              <td>
                                                                  <asp:Label ID="Label31" runat="server" Width="100px"></asp:Label>
                                                              </td>
                                                              <td>
                                                                  <asp:Label ID="lblCantCompleteBy" runat="server" Visible="False" Width="90px">Complete By</asp:Label>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  <asp:Label ID="txtCantCompleteBy" runat="server" CssClass="txtlabel" 
                                                                      Visible="False" Width="142px"></asp:Label>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  <asp:Label ID="lblCantStartDate" runat="server" Visible="False" 
                                                                      Width="80px">Start Date</asp:Label>
                                                              </td>
                                                              <td>
                                                                  <asp:Label ID="txtCantStartDate" runat="server" CssClass="txtlabel" 
                                                                      Width="142px" Visible="False"></asp:Label>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  <asp:Label ID="lblCantCompleteDate" runat="server" Visible="False" Width="90px">Complete Date</asp:Label>
                                                              </td>
                                                              <td>
                                                                  <asp:Label ID="txtCantCompleteDate" runat="server" CssClass="txtlabel" 
                                                                      Visible="False" Width="142px"></asp:Label>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  <asp:Label ID="lblCantRemarks" runat="server" Visible="False" Width="80px">Remarks</asp:Label>
                                                              </td>
                                                              <td colspan="4">
                                                                  <asp:TextBox ID="txtCantRemarks" runat="server" CssClass="txtBox" MaxLength="20" 
                                                                      ReadOnly="True" Visible="False" Width="500px"></asp:TextBox>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                          </table>
                                      </asp:Panel>
                                  </td>
                              </tr>
                    
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" colspan="4" valign="top">
                                      <asp:Panel ID="PanelConReject" runat="server" Visible="False">
                                          <table width="100%">
                                              <tr>
                                                  <td>
                                                      <table class="MediumBody" style="width: 100%">
                                                          <tr>
                                                              <td style="width: 100px; font-weight: 700; font-size: small;">
                                                                  Final Confirm</td>
                                                              <td>
                                                                  <hr 
                                                                  style="background-color: #99CC99; height:1px; border: 1;" />
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td>
                                                      <table class="MediumBody">
                                                          <tr>
                                                              <td>
                                                                  <asp:Label ID="lblConRejectDate" runat="server" Visible="False" Width="80px">Rejected Date</asp:Label>
                                                              </td>
                                                              <td>
                                                                  <asp:Label ID="txtConRejectedDate" runat="server" CssClass="txtlabel" 
                                                                      Visible="False" Width="142px"></asp:Label>
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  &nbsp;</td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  <asp:Label ID="lblConRejectReason" runat="server" Visible="False" Width="80px">Reason</asp:Label>
                                                              </td>
                                                              <td colspan="4">
                                                                  <asp:TextBox ID="txtConRejectReason" runat="server" CssClass="txtBox" 
                                                                      MaxLength="20" ReadOnly="True" Visible="False" Width="500px"></asp:TextBox>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                          </table>
                                      </asp:Panel>
                                  </td>
                              </tr>
                    
                </table></td>
                    </tr>
                      <tr>
                          <td>
                              <asp:LinkButton ID="lnkFakeMat" runat="server"></asp:LinkButton>
                                    <cc1:ModalPopupExtender ID="popup" runat="server" 
                                        BackgroundCssClass="modalBackground" CancelControlID="btnCancel1" 
                                        DropShadow="false" PopupControlID="pnlItemMaterial" 
                                  TargetControlID="lnkFakeMat"></cc1:ModalPopupExtender>
                                    <asp:Panel ID="pnlItemMaterial" runat="server" CssClass="ItemPanelMat">
                            <table class="popupTitleMat">
                                <tr>
                                    <td>
                                        <div style="padding-right: 3px; padding-left: 3px; margin-bottom: 5px; padding-bottom: 3px;
                                                    margin-left: 3px; padding-top: 3px; text-align:center; width:780px;height:25px; background-color: #5D4BD8;-webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px; ">
                                            <asp:Label ID="LblPopTitle2" runat="server" CssClass="popupTitleNameMat" 
                                                Width="600px">Select Items</asp:Label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <asp:Panel ID="Panel5" runat="server" Height="510px" 
                                                                Width="780px" ScrollBars="Both">
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                            <table border="0" cellpadding="2" cellspacing="2" style="width: 780px">
                                                                                 <tr>
                                  <td align="left" valign="top">
                                      <table>
                                          <tr>
                                              <td>
                                                  Menu Category</td>
                                              <td>
                                                  <asp:RadioButtonList ID="OptMenulCat" runat="server" 
                                                      RepeatDirection="Horizontal" style="text-align: left" Width="600px" 
                                                      AutoPostBack="True" onselectedindexchanged="OptMenulCat_SelectedIndexChanged">
                                                  </asp:RadioButtonList>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <asp:Label ID="lblMealCategory" runat="server" Height="18px" 
                                                      style="margin-bottom: 0px" Text="Meal Category" Width="100px"></asp:Label>
                                              </td>
                                              <td>
                                                  <asp:RadioButtonList ID="optMealCategory" runat="server" 
                                                      RepeatDirection="Horizontal" style="text-align: left" Width="300px" 
                                                      AutoPostBack="True" 
                                                      onselectedindexchanged="optMealCategory_SelectedIndexChanged">
                                                  </asp:RadioButtonList>
                                              </td>
                                          </tr>
                                      </table>
                                                                                     </td>
                              </tr>
                                                                                <tr>
                                                                                    <td align="left" valign="top">
                                                                                        <asp:GridView ID="grdAllMenu" runat="server" AutoGenerateColumns="False" 
                                                                                            CssClass="dropDownMedium" onrowdatabound="grdAllMenu_RowDataBound" 
                                                                                            ShowHeaderWhenEmpty="True" Width="600px">
                                                                                            <Columns>
                                                                                                <asp:TemplateField>
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:CheckBox ID="CheckBox12" runat="server" />
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:CheckBox ID="CheckBox13" runat="server" />
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle Width="5px" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="MenuId" SortExpression="MenuId" Visible="False">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("MenuId") %>'></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label25" runat="server" Text='<%# Bind("MenuId") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="MenuImage" SortExpression="MenuImage" 
                                                                                                    Visible="False">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox23" runat="server" Text='<%# Bind("MenuImage") %>'></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label26" runat="server" Text='<%# Bind("MenuImage") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Image">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Image ID="MenuImg" runat="server" Height="100px" 
                                                                                                            style="text-align: center" Width="100px" />
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Menu No" SortExpression="MenuNo">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox24" runat="server" Text='<%# Bind("MenuNo") %>'></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label33" runat="server" Text='<%# Bind("MenuNo") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Menu Description" SortExpression="MenuDesc">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox25" runat="server" Text='<%# Bind("MenuDesc") %>'></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label34" runat="server" Text='<%# Bind("MenuDesc") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Menu Items">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:GridView ID="grdItems" runat="server" AutoGenerateColumns="False" 
                                                                                                            BorderWidth="0px" CssClass="gridViewMedium" ShowHeader="False">
                                                                                                            <Columns>
                                                                                                                <asp:BoundField DataField="ItemDesc" HeaderText="ItemDesc" 
                                                                                                                    SortExpression="ItemDesc" />
                                                                                                            </Columns>
                                                                                                        </asp:GridView>
                                                                                                    </ItemTemplate>
                                                                                                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox27" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label35" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Assign To">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:DropDownList ID="ddlAssignTo" runat="server" CssClass="dropDown" 
                                                                                                            Width="100px">
                                                                                                        </asp:DropDownList>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                            </Columns>
                                                                                        </asp:GridView>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="left" valign="top">
                                                                                        &nbsp;</td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <table>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="btnCancel1" runat="server" CssClass="btnStyle" Height="25px" 
                                                        Text="Cancel" Width="150px" 
                                                        CausesValidation="False" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnAddItems" runat="server" CssClass="btnStyle" Font-Bold="True" 
                                                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                                                        Height="25px"  Text="Add" ValidationGroup="popup" 
                                                        Width="150px" CausesValidation="true" 
                                                        OnClientClick="return clientValidate();" onclick="btnAddItems_Click" />
                                                   <%-- <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
                                                        ConfirmText="Are you sure you want to save this?" TargetControlID="btnSave"></cc1:ConfirmButtonExtender>--%>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
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





