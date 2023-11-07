<%@ control language="VB" autoeventwireup="true" inherits="ctrlHomeContentArea, App_Web_0syuegnt" %>

<asp:TreeView ID="tvNavigation" runat="server" ImageSet="Arrows" Height="227px" NodeWrap="True" Width="352px" ExpandDepth="0" MaxDataBindDepth="3">
    <ParentNodeStyle Font-Bold="False" CssClass="navigationParent" />
    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
        VerticalPadding="0px" />
    <NodeStyle HorizontalPadding="5px"
        NodeSpacing="0px" VerticalPadding="0px" CssClass="navigationChild" />
    <LeafNodeStyle CssClass="navigationChild" />
    <RootNodeStyle CssClass="navigationParent" />
    <LevelStyles>
        <asp:TreeNodeStyle Font-Bold="True" Font-Size="Small" Font-Underline="False" ForeColor="Black" />
        <asp:TreeNodeStyle Font-Bold="True" Font-Size="Smaller" Font-Underline="False" ForeColor="Black" />
        <asp:TreeNodeStyle Font-Underline="False" ForeColor="Black" />
    </LevelStyles>
</asp:TreeView>
<asp:GridView ID="gvMainObjects" runat="server" ShowHeader="False" AutoGenerateColumns="False" CellPadding="5" CellSpacing="5" BorderStyle="None" BorderWidth="0px" HorizontalAlign="Left" Visible="False">
    <Columns>
        <asp:BoundField DataField="0" HeaderText="0" HtmlEncode="False" >
            <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="1" HeaderText="1" HtmlEncode="False" >
            <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="2" HeaderText="2" HtmlEncode="False" >
            <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="3" HeaderText="3" HtmlEncode="False" >
            <ItemStyle Width="150px" />
        </asp:BoundField>
    </Columns>
</asp:GridView>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<asp:Label ID="lblErrorMessages" runat="server" ForeColor="Red"></asp:Label>
