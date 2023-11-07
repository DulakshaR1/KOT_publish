<%@ control language="VB" autoeventwireup="true" inherits="ctrlNavgation, App_Web_0syuegnt" %>
<link href="Styles/Site.css" rel="stylesheet" type="text/css" />
<div style="overflow: auto; width: 150px">
<asp:Label ID="lblErrorMessages" runat="server" ForeColor="Red" CssClass="smallBodyRed"></asp:Label>
<asp:TreeView ID="tvNavigation" runat="server" ImageSet="Simple" NodeIndent="10" NodeWrap="True" Width="150px">
    <ParentNodeStyle Font-Bold="False" CssClass="navigationParent" />
    <HoverNodeStyle Font-Underline="True" ForeColor="#DD5555" />
    <SelectedNodeStyle Font-Underline="True" ForeColor="#DD5555" HorizontalPadding="0px"
        VerticalPadding="0px" CssClass="navigationChild" />
    <NodeStyle CssClass="navigationChild" HorizontalPadding="0px"
        NodeSpacing="0px" VerticalPadding="0px" />
    <LeafNodeStyle CssClass="navigationChild" />
    <RootNodeStyle CssClass="navigationParent" Font-Italic="False" />
</asp:TreeView></div>
