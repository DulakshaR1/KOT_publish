<%@ page title="Menu" language="C#" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="true" inherits="KOT_Menu, App_Web_1f0piase" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
            Height:460px;
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
            Height:360px;
            Width:565px;
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
                    KOT Menu<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                   
                </td>
            </tr>
            <tr>
                <td align="left" class="MediumBody" colspan="4" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                <td align="left" class="MediumBody" colspan="4" style="height: 20px" valign="top">
                    <asp:Button id="btnCreateMenu" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabActive" 
                        Text="Create Menu" Width="122px" onclick="btnCreateMenu_Click"/>
                    <asp:Button id="btnActiveMenu" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" 
                        Text="Active Menu" Width="122px" onclick="btnActiveMenu_Click"/>
                    <asp:Button id="btnInactiveMenu" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" 
                        Text="Inactive Menu" Width="122px" onclick="btnInactiveMenu_Click"/>
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
                        <td align="left" class="MediumBody" colspan="4" style="height: 24px" 
                            valign="top">
                            <asp:Button ID="btnNew" runat="server" CausesValidation="False" 
                                CssClass="btnStyle" Text="New" Width="66px" onclick="btnNew_Click" />
                            <asp:Button ID="btnSave" runat="server" CssClass="btnStyle" 
                                Text="Save" Width="63px" Visible="False" 
                                OnClientClick="showProgress();" onclick="btnSave_Click"  />
                             
                            &nbsp;<asp:Button 
                                ID="btnUpdate" runat="server" Text="Update" CssClass="btnStyle" Width="80px" 
                                Visible="False" OnClientClick="showProgress();" 
                                onclick="btnUpdate_Click"  />
                           
                            <asp:Button ID="btnClose" runat="server" CausesValidation="False" 
                                CssClass="btnStyle" onclick="btnClose_Click" Text="Close" Width="66px" />
                           
                            <asp:HiddenField ID="hfMenuImg" runat="server" />
                           
                        </td>
                        <td align="left" class="style1" valign="top">
                            <asp:HiddenField ID="HfMenuId" runat="server" />
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
                            Menu No</td>
                        <td align="left" class="style2"  valign="top">
                            <asp:Label ID="lblMenuNo" runat="server" CssClass="txtlabel"  
                                Width="142px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" valign="top"  style="width: 10px">
                            &nbsp;</td>
                        <td align="left"  colspan="4" valign="top">
                            <table style="width: 100%" class="MediumBody">
                                <tr>
                                    <td style="width: 50px; font-weight: 700; font-size: small;">
                                        Details</td>
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
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      <asp:Label ID="Label1" runat="server" style="margin-bottom: 0px" 
                                          Text="Menu Category" Width="100px"></asp:Label>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                      <asp:DropDownList ID="ddlMenuCat" runat="server" CssClass="dropDown" 
                                          Enabled="False" Height="20px" Width="145px" AutoPostBack="True" 
                                          onselectedindexchanged="ddlMenuCat_SelectedIndexChanged">
                                      </asp:DropDownList>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 150px;" valign="top">
                                      <asp:Label ID="lblMealCat" runat="server" style="margin-bottom: 0px" 
                                          Text="Meal Category" Width="100px"></asp:Label>
                                  </td>
                                  <td align="left" class="style2" valign="top">
                                      <asp:CheckBoxList ID="chkMealCat" runat="server" RepeatDirection="Horizontal" 
                                          Width="200px" style="text-align: left">
                                      </asp:CheckBoxList>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;">
                                      Order Before</td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                      <asp:DropDownList ID="ddlOrderBefore" runat="server" CssClass="dropDown" 
                                          Enabled="False" Height="20px" Width="145px">
                                      </asp:DropDownList>
                                  </td>
                                  <td align="left" class="MediumBody" style="width: 150px;" valign="top">
                                      Meal Type</td>
                                  <td align="left" class="style2" valign="top">
                                      <asp:CheckBoxList ID="ddlMealType" runat="server" RepeatDirection="Horizontal" 
                                          style="text-align: left" Width="250px">
                                      </asp:CheckBoxList>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" colspan="3">
                                      <table style="width: 100%">
                                          <tr>
                                              <td style="width: 130px; font-weight: 700; font-size: small;">
                                                  Menu Available On</td>
                                              <td>
                                                  <hr style="background-color: #99CC99; height:1px; border: 1;"/>
                                              </td>
                                          </tr>
                                      </table>
                                  </td>
                                  <td align="left" class="style2" valign="top">
                                      <table style="width: 100%">
                                          <tr>
                                              <td style="width: 50px; font-weight: 700; font-size: small;">
                                                  Picture</td>
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
                                  <td align="left" class="MediumBody" colspan="3">
                                      <table>
                                          <tr>
                                              <td>
                                                  <asp:Panel ID="Panel6" runat="server" BorderColor="Silver" BorderWidth="2px" 
                                                      Height="170px" Width="150px">
                                                      <asp:GridView ID="grdDays" runat="server" AutoGenerateColumns="False" 
                                                          CssClass="gridView" ShowHeaderWhenEmpty="True" Width="150px">
                                                          <Columns>
                                                             <asp:TemplateField>
                                                                  <EditItemTemplate>
                                                                      <asp:CheckBox ID="CheckBox4" runat="server" />
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:CheckBox ID="CheckBox5" runat="server" />
                                                                  </ItemTemplate>
                                                                  <HeaderStyle Width="5px" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="DayId" SortExpression="DayId" Visible="False">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DayId") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="Label1" runat="server" Text='<%# Bind("DayId") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                              </asp:TemplateField>
                                                              <asp:TemplateField SortExpression="DayName">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DayName") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="Label2" runat="server" Text='<%# Bind("DayName") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                              </asp:TemplateField>
                                                          </Columns>
                                                      </asp:GridView>
                                                  </asp:Panel>
                                              </td>
                                              <td>
                                                  <table>
                                                      <tr>
                                                          <td>
                                                              <asp:ImageButton ID="btnAddDays" runat="server" BorderColor="Silver" 
                                                                  BorderWidth="1px" Enabled="False" ImageUrl="~/images/img/next.gif" 
                                                                  ToolTip="Add New Materials" Width="40px" onclick="btnAddDays_Click" />
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td>
                                                              &nbsp;</td>
                                                      </tr>
                                                      <tr>
                                                          <td>
                                                              <asp:ImageButton ID="btnRemoveDays" runat="server" BorderColor="Silver" 
                                                                  BorderWidth="1px" Enabled="False" ImageUrl="~/images/img/prev.gif" 
                                                                  ToolTip="Remove Selected Items" Width="40px" 
                                                                  onclick="btnRemoveDays_Click" />
                                                          </td>
                                                      </tr>
                                                  </table>
                                              </td>
                                              <td>
                                                  <asp:Panel ID="Panel7" runat="server" BorderColor="Silver" BorderWidth="2px" 
                                                      Height="170px" Width="150px">
                                                      <asp:GridView ID="grdSelDays" runat="server" AutoGenerateColumns="False" 
                                                          CssClass="gridView" ShowHeaderWhenEmpty="True" Width="150px">
                                                          <Columns>
                                                              <asp:TemplateField>
                                                                  <EditItemTemplate>
                                                                      <asp:CheckBox ID="CheckBox4" runat="server" />
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:CheckBox ID="CheckBox55" runat="server" />
                                                                  </ItemTemplate>
                                                                  <HeaderStyle Width="5px" />
                                                              </asp:TemplateField>
                                                              <asp:TemplateField HeaderText="DayId" SortExpression="DayId" Visible="False">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DayId") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="Label11" runat="server" Text='<%# Bind("DayId") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                              </asp:TemplateField>
                                                              <asp:TemplateField SortExpression="DayName">
                                                                  <EditItemTemplate>
                                                                      <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DayName") %>'></asp:TextBox>
                                                                  </EditItemTemplate>
                                                                  <ItemTemplate>
                                                                      <asp:Label ID="Label22" runat="server" Text='<%# Bind("DayName") %>'></asp:Label>
                                                                  </ItemTemplate>
                                                              </asp:TemplateField>
                                                          </Columns>
                                                      </asp:GridView>
                                                  </asp:Panel>
                                              </td>
                                          </tr>
                                      </table>
                                  </td>
                                  <td align="left" class="style2" valign="top">
                                      <table align="center">
                                          <tr>
                                              <td align="center">
                                                  <asp:Image ID="MenuImg" runat="server" Height="135px" Width="120px" 
                                                      style="text-align: center" />
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <asp:FileUpload ID="FileUploadMenuImg" runat="server" 
                                                      style="text-align: center" />
                                              </td>
                                          </tr>
                                      </table>
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
                                                      BorderWidth="1px" ImageUrl="~/images/ContextMenu/plus.png" 
                                                      onclick="btnAdd_Click1" onclientclick="showProgress();" 
                                                      ToolTip="Add New Materials" Enabled="False" />
                                              </td>
                                              <td>
                                                  <asp:ImageButton ID="btnDel" runat="server" BorderColor="Silver" 
                                                      BorderWidth="1px" Enabled="False" ImageUrl="~/images/ContextMenu/delete.png" 
                                                      ToolTip="Remove Selected Items" onclick="btnDel_Click" />
                                              </td>
                                          </tr>
                                      </table>
                                  </td>
                              </tr>
                    <tr>
                        <td align="left"  style="width: 10px" valign="top">
                            &nbsp;</td>
                        <td align="left" class="MediumBody" valign="top" colspan="4">
                            <asp:GridView ID="grdSelecItem" runat="server" AutoGenerateColumns="False" 
                                CssClass="gridView" ShowHeaderWhenEmpty="True" Width="500px">
                                <Columns>
                                    <asp:TemplateField>
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox10" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox11" runat="server" />
                                        </ItemTemplate>
                                        <HeaderStyle Width="5px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ItemId" SortExpression="ItemId" Visible="False">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemId") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ItemId") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Item Description" SortExpression="ItemDesc">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ItemDesc") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ItemDesc") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    
                    <tr>
                        <td align="left" class="MediumBody" valign="top">
                            &nbsp;</td>
                        <td align="left" class="MediumBody" valign="top" colspan="4">
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="Menu Description" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMenuDesc" runat="server" CssClass="txtBox" MaxLength="100" 
                                             ReadOnly="True" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label28" runat="server" Text="Table Service Price" Width="120px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTablePrice" runat="server" CssClass="txtBox" MaxLength="20" 
                                            onkeypress="return isNumberKey(event,this)" ReadOnly="True" Width="110px">0</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Remarks</td>
                                    <td>
                                        <asp:TextBox ID="txtRemarks" runat="server" CssClass="txtBox" MaxLength="250" 
                                            ReadOnly="True" Width="250px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label27" runat="server" Text="Counter Service Price" 
                                            Width="120px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCounterPrice" runat="server" CssClass="txtBox" 
                                            MaxLength="20" onkeypress="return isNumberKey(event,this)" ReadOnly="True" 
                                            Width="110px">0</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Status</td>
                                    <td>
                                        <asp:RadioButtonList ID="optMenuStatus" runat="server" 
                                            RepeatDirection="Horizontal" Width="130px">
                                            <asp:ListItem Selected="True" Value="1">Active</asp:ListItem>
                                            <asp:ListItem Value="0">Inactive</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
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
                                                    margin-left: 3px; padding-top: 3px; text-align:center; width:550px;height:25px; background-color: #5D4BD8;-webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px; ">
                                            <asp:Label ID="LblPopTitle2" runat="server" CssClass="popupTitleNameMat" 
                                                Width="550px">Select Items</asp:Label>
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
                                                            <asp:Panel ID="Panel5" runat="server" Height="275px" 
                                                                Width="550px" ScrollBars="Both">
                                                                <table>
                                                                    <tr>
                                                                        <td>
                                                                            <table border="0" cellpadding="2" cellspacing="2" style="width: 540px">
                                                                                <%-- <tr>
                                  <td align="left" style="width: 10px" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 200px;" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="MediumBody" style="width: 150px;" valign="top">
                                      &nbsp;</td>
                                  <td align="left" class="style2" valign="top">
                                      &nbsp;</td>
                              </tr>--%>
                                                                                <tr>
                                                                                    <td align="left" valign="top">
                                                                                        <asp:GridView ID="grdItem" runat="server" AutoGenerateColumns="False" 
                                                                                            CssClass="gridView" ShowHeaderWhenEmpty="True" Width="500px" 
                                                                                            ShowHeader="False">
                                                                                            <Columns>
                                                                                                <asp:TemplateField>
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:CheckBox ID="CheckBox6" runat="server" />
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:CheckBox ID="CheckBox7" runat="server" />
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle Width="5px" />
                                                                                                    <ItemStyle Width="5px" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="ItemId" SortExpression="ItemId" 
                                                                                                    Visible="False">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ItemId") %>'></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("ItemId") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle Width="5px" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Item Description" SortExpression="ItemDesc">
                                                                                                    <EditItemTemplate>
                                                                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ItemDesc") %>'></asp:TextBox>
                                                                                                    </EditItemTemplate>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="Label22" runat="server" Text='<%# Bind("ItemDesc") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle Width="495px" />
                                                                                                    <ItemStyle Width="495px" />
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

            <asp:View ID="viewSearch" runat="server">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            <table>
                                <tr>
                                    <td>
                                        <table width="900">
                                            <tr>
                                                <td style="width: 200px;">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td class="style1">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td class="style2">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grdActive" runat="server" 
                                            AutoGenerateColumns="False" CssClass="gridView" PageSize="15" 
                                            Width="800px" AllowPaging="True" 
                                            onpageindexchanging="grdActive_PageIndexChanging">
                                            <HeaderStyle Font-Bold="True" />
                                            <Columns>

                                                                                                
                                         <%--  <asp:TemplateField>
                                                <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                          
                                            <a href="#"  onclick="showReport('<%#Eval("NPLId") %>');" >  
                                            <img src="images/viewIcon.png" Height="15px"  border="0px" id="btnEdit"  />  </a>
                                        </ItemTemplate>
                                                </asp:TemplateField>--%>

                                                <asp:TemplateField ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                                            CommandArgument="<%# Container.DataItemIndex %>" CommandName="Select" 
                                                            ImageUrl="~/images/edit.png" onclick="LinkButton1_Click" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="10px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="MenuId" SortExpression="MenuId" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("MenuId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MenuId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="MenuNo" HeaderText="Menu No" 
                                                    SortExpression="MenuNo" />
                                                <asp:BoundField DataField="MenuDesc" HeaderText="Menu Description" 
                                                    SortExpression="MenuDesc" />
                                                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" 
                                                    SortExpression="CreatedBy" />
                                                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" 
                                                    SortExpression="CreatedDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="MenuCatDesc" HeaderText="Menu Category" 
                                                    SortExpression="MenuCatDesc" />
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="view1" runat="server">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            <table>
                                <tr>
                                    <td>
                                        <table width="900">
                                            <tr>
                                                <td style="width: 200px;">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td class="style1">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td class="style2">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grdInactive" runat="server" AllowPaging="True" 
                                            AutoGenerateColumns="False" CssClass="gridView" PageSize="15" Width="800px">
                                            <HeaderStyle Font-Bold="True" />
                                            <Columns>
                                                <%--  <asp:TemplateField>
                                                <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                          
                                            <a href="#"  onclick="showReport('<%#Eval("NPLId") %>');" >  
                                            <img src="images/viewIcon.png" Height="15px"  border="0px" id="btnEdit"  />  </a>
                                        </ItemTemplate>
                                                </asp:TemplateField>--%>
                                                <asp:TemplateField ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                                            CommandArgument="<%# Container.DataItemIndex %>" CommandName="Select" 
                                                            ImageUrl="~/images/edit.png" onclick="LinkButton2_Click" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="10px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="MenuId" SortExpression="MenuId" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MenuId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label23" runat="server" Text='<%# Bind("MenuId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="MenuNo" HeaderText="Menu No" 
                                                    SortExpression="MenuNo" />
                                                <asp:BoundField DataField="MenuDesc" HeaderText="Menu Description" 
                                                    SortExpression="MenuDesc" />
                                                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" 
                                                    SortExpression="CreatedBy" />
                                                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" 
                                                    SortExpression="CreatedDate" />
                                                <asp:BoundField DataField="MenuCatDesc" HeaderText="Menu Category" 
                                                    SortExpression="MenuCatDesc" />
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label24" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                            <br />
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






