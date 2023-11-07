<%@ page title="" language="C#" masterpagefile="~/ERMSMasterPage.master" autoeventwireup="true" inherits="SystemSetting, App_Web_1f0piase" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <script src="Scripts/jquery-1.4.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        function CheckOtherIsCheckedByGVID(spanChk) {
            var IsChecked = spanChk.checked;
            if (IsChecked) {
                spanChk.parentElement.parentElement.style.backgroundColor = '#228b22';
                spanChk.parentElement.parentElement.style.color = 'white';
            }
            var CurrentRdbID = spanChk.id;
            var Chk = spanChk;
            Parent = document.getElementById("<%=GridView1.ClientID%>");
            var items = Parent.getElementsByTagName('input');
            for (i = 0; i < items.length; i++) {
                if (items[i].id != CurrentRdbID && items[i].type == "radio") {
                    if (items[i].checked) {
                        items[i].checked = false;
                        items[i].parentElement.parentElement.style.backgroundColor = 'white'
                        items[i].parentElement.parentElement.style.color = 'black';
                    }
                }
            }
        }  
</script>  
    <script language="javascript" type="text/javascript">

        function showProgress() {

            $find('ContentPlaceHolder1_mdlPopup').show();

        } 
</script>
   <style type="text/css">
      .modalBackground 
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
      
       .style1
       {
           font-family: Arial, Helvetica, sans-serif;
           font-size: 10px;
           color: #000000;
           height: 15px;
       }
      
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script language="javascript" type="text/javascript">
         
    </script>
    <div>
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
    <tr>
    <td align="left" valign="top">
        <table border="0" cellpadding="1" cellspacing="1" width="100%">
            <tr>
                <td class="head1" style="width: 200px">
                    System Settings<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                   
                </td>
            </tr>
            <tr>
                <td align="left" class="smallBody" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                <td align="left" class="smallBody" colspan="4" style="height: 20px" valign="top">
                    &nbsp;</td>
            </tr>
            <tr>  
                <td class="tabBottomBar" colspan="3" >
                </td>
            </tr>
                </table>
                </td>
            </tr>     
            <tr>
                <td align="left" class="style1" valign="top">
                    <asp:Label ID="lblErrorMessages" runat="server" CssClass="smallBodyRed"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" class="smallBody" valign="top">
                    <asp:Label ID="lblMessage" runat="server" CssClass="smallBodyGreen" Font-Bold="True"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" class="smallBody" valign="top">
                    <fieldset> <legend> RFC Settings</legend>
                            <asp:Button ID="btnSave" runat="server" CssClass="btnStyle" 
                                Text="Update" Width="63px" Height="18px" onclick="btnSave_Click" />
                        <br />   <br />
                                        <asp:GridView ID="GridView1" runat="server" 
                                            AutoGenerateColumns="False" CssClass="gridView" 
                                            Width="500px" ShowHeaderWhenEmpty="True" 
                            DataKeyNames="RefID" DataSourceID="SqlDataSource1" 
                            onrowdatabound="GridView1_RowDataBound">
                                            <Columns>
                                                <asp:TemplateField HeaderText="RefID" InsertVisible="False" 
                                                    SortExpression="RefID">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("RefID") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("RefID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="AccountName" HeaderText="AccountName" 
                                                    SortExpression="AccountName" />
                                                <asp:TemplateField HeaderText="AppS" SortExpression="AppS">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("AppS") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="txtBox" 
                                                            Text='<%# Bind("AppS") %>'></asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="SysNo" HeaderText="SysNo" SortExpression="SysNo" />
                                                <asp:BoundField DataField="SysID" HeaderText="SysID" SortExpression="SysID" />
                                                <asp:TemplateField HeaderText="Client" SortExpression="Client">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Client") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="txtBox" 
                                                            Text='<%# Bind("Client") %>'></asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="UName" SortExpression="UName">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UName") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="txtBox" 
                                                            Text='<%# Bind("UName") %>'></asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="txtBox" 
                                                            Text='<%# Bind("Password") %>'></asp:TextBox>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Status" SortExpression="Status" Visible="False">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                       <asp:TemplateField>
                                                    <EditItemTemplate>
                                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                                    </EditItemTemplate>
                                                           <ItemTemplate>
                                                               <asp:RadioButton ID="RadioButton1" runat="server" GroupName="pp" onclick="javascript:CheckOtherIsCheckedByGVID(this);"/>
                                                           </ItemTemplate>
                                                    <HeaderStyle Width="10px" />
                                                </asp:TemplateField>
                                            </Columns>
                                            <HeaderStyle Font-Bold="True" />
                                        </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [RFC_Account]"></asp:SqlDataSource>
                    </fieldset></td>
            </tr>
        </table>
        </td>
    </tr>
    <tr>
    <td>
    &nbsp;
                            </td>
    </tr>
    </Table>
       
    </div>
</asp:Content>



