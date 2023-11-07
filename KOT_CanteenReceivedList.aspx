<%@ page title="Canteen Update" language="C#" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="true" inherits="KOT_CanteenReceivedList, App_Web_1f0piase" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
                    KOT Request Approval List<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                   
                </td>
            </tr>
            <tr>
                <td align="left" class="MediumBody" colspan="4" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                <td align="left" class="MediumBody" colspan="4" style="height: 20px" valign="top">
                    <asp:Button id="btnPendingRequest" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabActive" 
                        Text="Received List" Width="122px" onclick="btnPendingRequest_Click"/>
                    <asp:Button id="btnStarted" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" 
                        Text="Started" Width="122px" onclick="btnStarted_Click"/>
                    <asp:Button id="btnCompleted" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" 
                        Text="Completed/ Rejected" Width="122px" onclick="btnCompleted_Click"/>
                    <asp:Button id="btnPending" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" 
                        Text="Pending  Approval" Width="122px" onclick="btnPending_Click"/>
                    <asp:Button id="btnCancel" runat="server"
                        BorderStyle="Solid" CausesValidation="False" CssClass="tabInactive" 
                        Text="Cancelled" Width="122px" onclick="btnCancel_Click"/>
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
                                        <table width="900">
                                            <tr>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Request Date</td>
                                                            <td>
                                                                <asp:TextBox ID="txtReqDatePend" runat="server" CssClass="txtBox" 
                                                        Width="122px"></asp:TextBox>
                                                    <cc1:CalendarExtender ID="Calend" runat="server" Format="yyyy-MM-dd" 
                                                        PopupButtonID="ImgBtnPend" TargetControlID="txtReqDatePend"></cc1:CalendarExtender></td>
                                                            <td>
                                                               <asp:ImageButton ID="ImgBtnPend" runat="server" Height="17px" 
                                                        ImageUrl="~/images/calender.jpg" Width="20px" /></td>
                                                            <td>
                                                                <asp:Button ID="btnSearchPend" runat="server" CssClass="btnStyle" 
                                                                    onclick="btnSearchPend_Click" OnClientClick="showProgress();" 
                                                                    Text="Search" Width="63px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="style2">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grdPending" runat="server" 
                                            AutoGenerateColumns="False" CssClass="gridView" PageSize="15" 
                                            Width="800px" AllowPaging="True">
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
                                                            ImageUrl="~/images/edit.png" 
                                                            style="height: 16px" onclick="LinkButton1_Click" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="10px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="RequestId" SortExpression="RequestId" 
                                                    Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RequestId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblReqId" runat="server" Text='<%# Bind("RequestId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="RequestNo" HeaderText="Request No" 
                                                    SortExpression="RequestNo" />
                                                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" 
                                                    SortExpression="CreatedBy" />
                                                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" 
                                                    SortExpression="CreatedDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                                    SortExpression="RequestDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestTime" HeaderText="Request Time" 
                                                    SortExpression="RequestTime" />
                                                <asp:BoundField DataField="NoOfPax" HeaderText="No of Pax" 
                                                    SortExpression="NoOfPax" />
                                                <asp:BoundField DataField="MenuCatDesc" HeaderText="Menu Category" 
                                                    SortExpression="MenuCatDesc" />
                                                <asp:BoundField DataField="MealTypeDesc" HeaderText="Meal Type" 
                                                    SortExpression="MealTypeDesc" />
                                                <asp:BoundField DataField="ServiceTypeDesc" HeaderText="Type Of Service" 
                                                    SortExpression="ServiceTypeDesc" />

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
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Request Date</td>
                                                            <td>
                                                                <asp:TextBox ID="txtReqDateStart" runat="server" CssClass="txtBox" 
                                                                    Width="122px"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="txtReqDateStart_CalendarExtender" runat="server" 
                                                                    Format="yyyy-MM-dd" PopupButtonID="ImgBtnStart" 
                                                                    TargetControlID="txtReqDateStart" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnStart" runat="server" Height="17px" 
                                                                    ImageUrl="~/images/calender.jpg" Width="20px" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnSearchStart" runat="server" CssClass="btnStyle" 
                                                                    onclick="btnSearchStart_Click" OnClientClick="showProgress();" 
                                                                    Text="Search" Width="63px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grdStarted" runat="server" 
                                            AutoGenerateColumns="False" CssClass="gridView" PageSize="15" 
                                            Width="800px" AllowPaging="True">
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
                                                            ImageUrl="~/images/edit.png" 
                                                            style="height: 16px" onclick="LinkButton1_Click1" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="10px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="RequestId" SortExpression="RequestId" 
                                                    Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RequestId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblReqId" runat="server" Text='<%# Bind("RequestId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="RequestNo" HeaderText="Request No" 
                                                    SortExpression="RequestNo" />
                                                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" 
                                                    SortExpression="CreatedBy" />
                                                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" 
                                                    SortExpression="CreatedDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                                    SortExpression="RequestDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestTime" HeaderText="Request Time" 
                                                    SortExpression="RequestTime" />
                                                <asp:BoundField DataField="NoOfPax" HeaderText="No of Pax" 
                                                    SortExpression="NoOfPax" />
                                                <asp:BoundField DataField="MenuCatDesc" HeaderText="Menu Category" 
                                                    SortExpression="MenuCatDesc" />
                                                <asp:BoundField DataField="MealTypeDesc" HeaderText="Meal Type" 
                                                    SortExpression="MealTypeDesc" />
                                                <asp:BoundField DataField="ServiceTypeDesc" HeaderText="Type Of Service" 
                                                    SortExpression="ServiceTypeDesc" />

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
            <asp:View ID="view2" runat="server">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            <table>
                                <tr>
                                    <td>
                                        <table width="900">
                                            <tr>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Request Date</td>
                                                            <td>
                                                                <asp:TextBox ID="txtReqDateComp" runat="server" CssClass="txtBox" 
                                                                    Width="122px"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="txtReqDateComp_CalendarExtender" runat="server" 
                                                                    Format="yyyy-MM-dd" PopupButtonID="ImgBtnComp" 
                                                                    TargetControlID="txtReqDateComp" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnComp" runat="server" Height="17px" 
                                                                    ImageUrl="~/images/calender.jpg" Width="20px" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnSearchComp" runat="server" CssClass="btnStyle" 
                                                                    onclick="btnSearchComp_Click" OnClientClick="showProgress();" 
                                                                    Text="Search" Width="63px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td class="style2">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridCompleted" runat="server" 
                                            AutoGenerateColumns="False" CssClass="gridView" PageSize="15" 
                                            Width="800px" AllowPaging="True" 
                                            onrowdatabound="GridCompleted_RowDataBound">
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
                                                            ImageUrl="~/images/edit.png" 
                                                            style="height: 16px" onclick="LinkButton1_Click2" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="10px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="RequestId" SortExpression="RequestId" 
                                                    Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RequestId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblReqId" runat="server" Text='<%# Bind("RequestId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="RequestNo" HeaderText="Request No" 
                                                    SortExpression="RequestNo" />
                                                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" 
                                                    SortExpression="CreatedBy" />
                                                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" 
                                                    SortExpression="CreatedDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                                    SortExpression="RequestDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestTime" HeaderText="Request Time" 
                                                    SortExpression="RequestTime" />
                                                <asp:BoundField DataField="NoOfPax" HeaderText="No of Pax" 
                                                    SortExpression="NoOfPax" />
                                                <asp:BoundField DataField="MenuCatDesc" HeaderText="Menu Category" 
                                                    SortExpression="MenuCatDesc" />
                                                <asp:BoundField DataField="MealTypeDesc" HeaderText="Meal Type" 
                                                    SortExpression="MealTypeDesc" />
                                                <asp:BoundField DataField="ServiceTypeDesc" HeaderText="Type Of Service" 
                                                    SortExpression="ServiceTypeDesc" />

                                                <asp:TemplateField HeaderText="Status">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblStatus" runat="server"></asp:Label>
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
            <asp:View ID="view3" runat="server">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            <table>
                                <tr>
                                    <td>
                                        <table width="900">
                                            <tr>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Request Date</td>
                                                            <td>
                                                                <asp:TextBox ID="txtReqDateCancel" runat="server" CssClass="txtBox" 
                                                                    Width="122px"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="txtReqDateCancel_CalendarExtender" runat="server" 
                                                                    Format="yyyy-MM-dd" PopupButtonID="ImgBtnCancel" 
                                                                    TargetControlID="txtReqDateCancel" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnCancel" runat="server" Height="17px" 
                                                                    ImageUrl="~/images/calender.jpg" Width="20px" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnSearchCancel" runat="server" CssClass="btnStyle" 
                                                                    onclick="btnSearchCancel_Click" OnClientClick="showProgress();" 
                                                                    Text="Search" Width="63px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grdCancel" runat="server" 
                                            AutoGenerateColumns="False" CssClass="gridView" PageSize="15" 
                                            Width="800px" AllowPaging="True">
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
                                                            ImageUrl="~/images/edit.png" 
                                                            style="height: 16px" onclick="LinkButton1_Click2" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="10px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="RequestId" SortExpression="RequestId" 
                                                    Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RequestId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblReqId" runat="server" Text='<%# Bind("RequestId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="RequestNo" HeaderText="Request No" 
                                                    SortExpression="RequestNo" />
                                                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" 
                                                    SortExpression="CreatedBy" />
                                                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" 
                                                    SortExpression="CreatedDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                                    SortExpression="RequestDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestTime" HeaderText="Request Time" 
                                                    SortExpression="RequestTime" />
                                                <asp:BoundField DataField="NoOfPax" HeaderText="No of Pax" 
                                                    SortExpression="NoOfPax" />
                                                <asp:BoundField DataField="MenuCatDesc" HeaderText="Menu Category" 
                                                    SortExpression="MenuCatDesc" />
                                                <asp:BoundField DataField="MealTypeDesc" HeaderText="Meal Type" 
                                                    SortExpression="MealTypeDesc" />
                                                <asp:BoundField DataField="ServiceTypeDesc" HeaderText="Type Of Service" 
                                                    SortExpression="ServiceTypeDesc" />

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
            <asp:View ID="view4" runat="server">
                <table border="0" cellpadding="1" cellspacing="1" style="width: 680px">
                    <tr>
                        <td align="left" class="MediumBody" style="height: 20px" valign="top">
                            <table>
                                <tr>
                                    <td>
                                        <table width="900">
                                            <tr>
                                                <td>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                Request Date</td>
                                                            <td>
                                                                <asp:TextBox ID="txtReqDatePending" runat="server" CssClass="txtBox" 
                                                                    Width="122px"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" 
                                                                    Format="yyyy-MM-dd" PopupButtonID="ImageButton1" 
                                                                    TargetControlID="txtReqDatePending" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" 
                                                                    ImageUrl="~/images/calender.jpg" Width="20px" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnSearchNotApproed" runat="server" CssClass="btnStyle" 
                                                                    onclick="btnSearchNotApproed_Click" OnClientClick="showProgress();" 
                                                                    Text="Search" Width="63px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grdPendingApprove" runat="server" 
                                            AutoGenerateColumns="False" CssClass="gridView" PageSize="15" 
                                            Width="800px" AllowPaging="True">
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
                                                            ImageUrl="~/images/edit.png" 
                                                            style="height: 16px" onclick="LinkButton1_Click3" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="10px" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField HeaderText="RequestId" SortExpression="RequestId" 
                                                    Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RequestId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblReqId" runat="server" Text='<%# Bind("RequestId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="RequestNo" HeaderText="Request No" 
                                                    SortExpression="RequestNo" />
                                                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" 
                                                    SortExpression="CreatedBy" />
                                                <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" 
                                                    SortExpression="CreatedDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                                    SortExpression="RequestDate" DataFormatString="{0:yyyy-MM-dd}" />
                                                <asp:BoundField DataField="RequestTime" HeaderText="Request Time" 
                                                    SortExpression="RequestTime" />
                                                <asp:BoundField DataField="NoOfPax" HeaderText="No of Pax" 
                                                    SortExpression="NoOfPax" />
                                                <asp:BoundField DataField="MenuCatDesc" HeaderText="Menu Category" 
                                                    SortExpression="MenuCatDesc" />
                                                <asp:BoundField DataField="MealTypeDesc" HeaderText="Meal Type" 
                                                    SortExpression="MealTypeDesc" />
                                                <asp:BoundField DataField="ServiceTypeDesc" HeaderText="Type Of Service" 
                                                    SortExpression="ServiceTypeDesc" />

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





