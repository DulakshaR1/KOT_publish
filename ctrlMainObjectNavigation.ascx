<%@ control language="VB" autoeventwireup="true" inherits="ctrlMainObjectNavigation, App_Web_0syuegnt" %>
<asp:TreeView ID="tvNavigation" runat="server" ExpandDepth="0" Height="350px" ImageSet="Arrows"
    MaxDataBindDepth="3" NodeWrap="True" Width="352px">
    <ParentNodeStyle CssClass="navigationParent" Font-Bold="False" />
    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
    <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
        VerticalPadding="0px" />
    <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px"
        NodeSpacing="0px" VerticalPadding="0px" />
    <LeafNodeStyle CssClass="navigationChild" />
    <RootNodeStyle CssClass="navigationParent" />
    <LevelStyles>
        <asp:TreeNodeStyle Font-Bold="True" Font-Size="Small" Font-Underline="False" ForeColor="Black" />
        <asp:TreeNodeStyle Font-Bold="True" Font-Size="Smaller" Font-Underline="False" ForeColor="Black" />
        <asp:TreeNodeStyle Font-Underline="False" ForeColor="Black" />
    </LevelStyles>
</asp:TreeView>
<asp:Label ID="lblErrorMessages" runat="server" ForeColor="Red"></asp:Label>
