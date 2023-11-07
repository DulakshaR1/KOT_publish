<%@ page title="KOT Reports" language="C#" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="true" inherits="KOT_Reports, App_Web_1f0piase" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
                    KOT Reports<asp:ScriptManager ID="ScriptManager1" runat="server">
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
                        Text="Report" Width="122px" onclick="btnPendingRequest_Click"/>
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
                                                                Request Date
                                                            </td>
                                                            <td>
                                                                From</td>
                                                            <td>
                                                                <asp:TextBox ID="txtReqDateFrom" runat="server" CssClass="txtBox" Width="122px"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="Calend" runat="server" Format="yyyy-MM-dd" 
                                                                    PopupButtonID="ImgBtnFrom" TargetControlID="txtReqDateFRom" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnFrom" runat="server" Height="17px" 
                                                                    ImageUrl="~/images/calender.jpg" Width="20px" />
                                                            </td>
                                                            <td>
                                                                To</td>
                                                            <td>
                                                                <asp:TextBox ID="txtReqDateTo" runat="server" CssClass="txtBox" Width="122px"></asp:TextBox>
                                                                <cc1:CalendarExtender ID="txtReqDateTo_CalendarExtender" runat="server" 
                                                                    Format="yyyy-MM-dd" PopupButtonID="ImgBtnTo" TargetControlID="txtReqDateTo" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnTo" runat="server" Height="17px" 
                                                                    ImageUrl="~/images/calender.jpg" Width="20px" />
                                                            </td>
                                                            <td>
                                                                Department</td>
                                                            <td>
                                                                <asp:DropDownList ID="ddlDept" runat="server" AutoPostBack="True" 
                                                                    CssClass="dropDown" Height="20px" Width="150px">
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnSearch" runat="server" CssClass="btnStyle" 
                                                                    onclick="btnSearch_Click" OnClientClick="showProgress();" Text="Search" 
                                                                    Width="63px" />
                                                            </td>
                                                            <td>
                                                                <asp:Button ID="btnDownload" runat="server" CssClass="btnStyle" 
                                                                    onclick="btnDownload_Click" Text="Download" 
                                                                    Width="63px" />
                                                            </td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="grdReport0" runat="server" AutoGenerateColumns="False" 
                                            CssClass="gridView" ondatabound="OnDataBound" PageSize="15" Width="800px">
                                            <Columns>
                                                <asp:BoundField DataField="Dept" HeaderText="Department" 
                                                    SortExpression="Dept" />
                                                <asp:BoundField DataField="RequestDate" HeaderText="Request Date" 
                                                    SortExpression="RequestDate" />
                                                <asp:BoundField DataField="RequestNo" HeaderText="KOT No" 
                                                    SortExpression="RequestNo" />
                                                <asp:BoundField DataField="RequestValue" HeaderText="Total Value (LKR)" 
                                                    SortExpression="RequestValue" />
                                                <asp:BoundField DataField="CreatedBy" HeaderText="Requested By" 
                                                    SortExpression="CreatedBy" />
                                                <asp:TemplateField HeaderText="RequestId" SortExpression="RequestId" 
                                                    Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("RequestId") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("RequestId") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="MenuDesc" HeaderText="Menu Desc" 
                                                    SortExpression="MenuDesc" />
                                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                <asp:BoundField DataField="ReqQty" HeaderText="Req Qty" 
                                                    SortExpression="ReqQty" />
                                            </Columns>
                                            <HeaderStyle Font-Bold="True" />
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
    <td runat="server">
    &nbsp;
                                        </td>
    </tr>
    </Table>
 
    </div>

</asp:Content>





