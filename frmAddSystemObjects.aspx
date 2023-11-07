<%@ page language="VB" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="false" inherits="frmAddSystemObjects, App_Web_vqrj3x4b" title="TJL > User Management > Add System Objects" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register Src="FilterBy.ascx" TagName="FilterBy" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript">
     //Use this script in each page for validation and messages
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
    </script>

 <script type="text/javascript">
  var previousNode = '';
  
  function SelectedObj(idIs, valIs){
      var SelectedNode = document.getElementById(idIs);
      var ObjVal = document.getElementById('<%=txtSelectedObjCode.ClientID%>');
      SelectedNode.style.background='#C6EBFF';
      if (previousNode != ''){
          var SelectedNode = document.getElementById(previousNode);
           SelectedNode.style.background='';           
       }
      previousNode = idIs;
      ObjVal.value=valIs;
  }
   function showParentSelection(ynStat){
       var PanelToShow = document.getElementById('<%=ParentSelectArea.ClientID%>');
       if (ynStat == 'yes'){
            PanelToShow.style.display='block';
       }
       else{
            PanelToShow.style.display='none';
       }
   } 
 </script>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="3" class="head1">Add Objects </td>
  </tr>
    <tr>
        <td  colspan="3">
        </td>
    </tr>
    <tr>
        <td align="left" colspan="3" valign="top">
            <asp:Button ID="btnDetails" runat="server" CssClass="tabActive" Text="Details" Width="122px"/><asp:Button
                ID="btnAllObjects" runat="server" CssClass="tabInactive" Text="All Objects" Width="122px" /></td>
     </tr> 
     <tr>  
                <td class="tabBottomBar" colspan="3" height="10px" >
                </td>
    </tr>
    <tr>
        <td align="left" class="head1" colspan="3" valign="top">
                  <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed"></asp:Label><asp:ValidationSummary
                      ID="vsumUMSObject" runat="server" CssClass="smallBodyRed" DisplayMode="List"
                      ShowMessageBox="True" ValidationGroup="valGroup1" />
        </td>
    </tr>
    <tr>
        <td align="left" class="head1" colspan="3" valign="top">
            <asp:Label ID="lblMessage" runat="server" CssClass="smallBodyGreen" Font-Bold="True"></asp:Label></td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:MultiView ID="mvObjects" runat="server" ActiveViewIndex="0">
                <asp:View ID="viewDetails" runat="server">
                    <table width="800" border="0" cellspacing="0" cellpadding="0">
                        <tr>
    <td colspan="3" style="height: 120px">
      <table width="100%"  border="0" cellspacing="1" cellpadding="1">
          <tr>
              <td colspan="3">
                  <asp:Button ID="btnNew" runat="server" Text="New" CssClass="btnStyle" Width="80px" CausesValidation="False" />
                  <asp:Button ID="btnAddToList" runat="server" CssClass="btnStyle" Text="Save" Width="80px" ValidationGroup="valGroup1" />
                  <asp:Button ID="btnEdit" runat="server" CssClass="btnStyle" Text="Edit" Width="80px" Enabled="False" />&nbsp;<asp:Button
                      ID="btnDelete" runat="server" CssClass="btnStyle" Enabled="False" Text="Remove From System"
                      Width="135px" Visible="False" />
                  <asp:HiddenField ID="hfSaveStatus" runat="server" Value="new" />
              </td>
          </tr>
          <tr>
              <td class="smallBody" colspan="3">
            </td>
          </tr>
        <tr>
          <td class="smallBody" style="width: 123px">Object Name </td>
          <td class="smallBody" style="width: 3px">:</td>
          <td width="389" class="smallBody">&nbsp;<asp:TextBox ID="txtObjectName" runat="server" CssClass="txtMandatory" MaxLength="30"
                  Width="150px" Enabled="False"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvObjectName" runat="server" ErrorMessage="Object Name is Mandatory"
                  ValidationGroup="valGroup1" ControlToValidate="txtObjectName">*</asp:RequiredFieldValidator>
              <asp:HiddenField ID="hfEditObjectCode" runat="server" />
              <asp:HiddenField ID="hfMainOrSub" runat="server" />
          </td>
        </tr>
        <tr>
          <td class="smallBody" style="width: 123px">File Name </td>
          <td class="smallBody" style="width: 3px">:</td>
          <td class="smallBody">&nbsp;<asp:TextBox ID="txtFileName" runat="server" CssClass="txtMandatory" MaxLength="50"
                  Width="200px" Enabled="False"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvFileName" runat="server" ControlToValidate="txtFileName"
                  ErrorMessage="File Name is Mandatory" ValidationGroup="valGroup1">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
          <td class="smallBody" align="left" valign="top" style="width: 123px">Description</td>
          <td class="smallBody" align="left" valign="top" style="width: 3px">:</td>
          <td class="smallBody">&nbsp;<asp:TextBox ID="txtObjectDescription" runat="server" CssClass="txtMultiBox"
                  MaxLength="100" TextMode="MultiLine" Width="314px" Enabled="False"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator
                      ID="rfvDescription" runat="server" ControlToValidate="txtObjectDescription" ErrorMessage="Description is Mandatory"
                      ValidationGroup="valGroup1">*</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                          ID="revDescription" runat="server" ErrorMessage="Description may consist of 100 characters at most."
                          ValidationExpression="[^$]{0,100}" ValidationGroup="valGroup1" ControlToValidate="txtObjectDescription">*</asp:RegularExpressionValidator></td>
        </tr>
          <tr>
              <td align="left" class="smallBody" valign="top" style="width: 123px">
                  Status</td>
              <td align="left" class="smallBody" valign="top" style="width: 3px">
                  :</td>
              <td class="smallBody">
                  <asp:RadioButton ID="rdoActive" runat="server" Checked="True" CssClass="smallBody"
                      GroupName="rdoStatus" Text="Active" />
                  &nbsp;&nbsp;
                  <asp:RadioButton ID="rdoInactive" runat="server" CssClass="smallBody" GroupName="rdoStatus"
                      Text="Inactive" /></td>
          </tr>
          <tr>
              <td align="left" class="smallBody" style="width: 123px" valign="top">
            Is this a sub object?</td>
              <td align="left" class="smallBody" style="width: 3px" valign="top">
                  :</td>
              <td class="smallBody">
                  <asp:RadioButton ID="rdoYes"
                runat="server" GroupName="rdoShowParent" Text="Yes" Enabled="False" />
            &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="rdoNo" runat="server" GroupName="rdoShowParent" Text="No" Checked="True" Enabled="False" /></td>
          </tr>
      </table></td>
                        </tr>
                        <tr>
        <td colspan="3">
</td>
                        </tr>
                        <tr>
        <td colspan="3" style="height: 462px">
        <DIV style="DISPLAY: none" id="ParentSelectArea" runat="server">
        <asp:UpdateProgress id="UProgress1" runat="server">
                    <ProgressTemplate>
                    <div class="smallBody">
                        <IMG SRC="images/loading.gif" /> Updating...
                    </div>
                    </ProgressTemplate>    
               </asp:UpdateProgress>
            <asp:UpdatePanel id="updSystemObjects" runat="server" UpdateMode="Always">
            <ContentTemplate>
<TABLE style="WIDTH: 450px" cellSpacing=0 cellPadding=0 border=0>
    <TBODY><TR><TD style="WIDTH: 449px; HEIGHT: 19px" class="smallBody" colSpan=3>Please select the parent node:</TD><TD style="HEIGHT: 19px" class="smallBody" colSpan=1></TD></TR><TR><TD style="WIDTH: 449px; HEIGHT: 409px" vAlign=top align=left colSpan=3><DIV style="BORDER-RIGHT: gray thin solid; BORDER-TOP: gray thin solid; OVERFLOW:scroll; BORDER-LEFT: gray thin solid; WIDTH: 300px; BORDER-BOTTOM: gray thin solid; HEIGHT: 400px"><asp:TreeView id="tvObjects" runat="server" Width="300px" Enabled="False" OnSelectedNodeChanged="tvObjects_SelectedNodeChanged" BorderColor="Silver" Height="400px" ImageSet="Arrows" ShowLines="True" ExpandDepth="1" NodeIndent="10" AutoGenerateDataBindings="False">
                                    <ParentNodeStyle Font-Bold="False" />
                                    <HoverNodeStyle Font-Underline="True" ForeColor="Gray" />
                                    <SelectedNodeStyle Font-Underline="True" ForeColor="Black" HorizontalPadding="0px"
                                        VerticalPadding="0px" BackColor="#E0E0E0" />
                                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px"
                                        NodeSpacing="0px" VerticalPadding="0px" />
                                    <RootNodeStyle Font-Bold="True" />
                                </asp:TreeView> <asp:TextBox id="txtSelectedObjCode" runat="server" Width="0px" Height="0px" BorderStyle="None"></asp:TextBox></DIV></TD></TR></TBODY></TABLE>
</ContentTemplate>
          </asp:UpdatePanel></DIV>
        </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="viewObjectList" runat="server">
                <table width="800" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <br />
                        <asp:GridView ID="gvAllObjects" runat="server" CssClass="gridView" AutoGenerateColumns="False" Width="800px">
                            <HeaderStyle BackColor="Silver" Font-Bold="True" />
                            <Columns>
                                <asp:BoundField DataField="ObjectCode" HeaderText="ObjectCode" >
                                    <ItemStyle Width="0px" />
                                    <HeaderStyle Width="0px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="ObjID" HeaderText="ObjID" />
                                <asp:BoundField DataField="SubObjID" HeaderText="SubObjID" />
                                <asp:BoundField DataField="ObjName" HeaderText="ObjName" />
                                <asp:BoundField DataField="SubObjName" HeaderText="SubObjName" />
                                <asp:BoundField DataField="ObjectFileName" HeaderText="ObjectFileName" />
                                <asp:BoundField DataField="ObjectName" HeaderText="Object Name" />
                                <asp:BoundField DataField="Description" HeaderText="Description" />
                                <asp:BoundField DataField="Status" HeaderText="Status" >
                                    <ItemStyle Width="80px" />
                                </asp:BoundField>
                                <asp:CommandField SelectText="Details" ShowSelectButton="True" >
                                    <ItemStyle HorizontalAlign="Right" Width="60px" />
                                </asp:CommandField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                </table>
                </asp:View>
            </asp:MultiView></td>
    </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
</asp:Content>

