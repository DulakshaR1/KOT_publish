<%@ page language="C#" autoeventwireup="true" inherits="KOT_PendingList, App_Web_rthhukvm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pending KOT</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical" onrowdatabound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="CreatedBy" HeaderText="Created By" 
                    SortExpression="CreatedBy" />
                <asp:BoundField DataField="CreatedDate" DataFormatString="{0:yyyy-MM-dd}" 
                    HeaderText="Created Date" SortExpression="CreatedDate" />
                <asp:BoundField DataField="RequestDate" DataFormatString="{0:yyyy-MM-dd}" 
                    HeaderText="Request Date" SortExpression="RequestDate" />
                <asp:BoundField DataField="RequestNo" HeaderText="Request No" 
                    SortExpression="RequestNo" />
                <asp:BoundField DataField="ReqValue" HeaderText="Req Value" ReadOnly="True" 
                    SortExpression="ReqValue" />
                <asp:BoundField DataField="HODApprovedBy" HeaderText="HOD Approval By" 
                    SortExpression="HODApprovedBy" />
                <asp:BoundField DataField="HODApprovedDate" HeaderText="HOD Approved Date" 
                    SortExpression="HODApprovedDate" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT CreatedBy, CreatedDate, RequestDate, RequestNo, ISNULL(SUM(RequestValue), 0) AS ReqValue, HODApprovedBy, HODApprovedDate FROM KOT_RequestHeader WHERE (Status IN (0, 1)) AND (RequestId &lt;&gt; 0) AND (KOTDeptId = @DeptId) GROUP BY CreatedBy, CreatedDate, RequestDate, RequestNo, HODApprovedBy, HODApprovedDate, RequestValue ORDER BY CreatedDate">
            <SelectParameters>
                <asp:QueryStringParameter Name="DeptId" QueryStringField="deptid" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
