<%@ Control Language="c#" AutoEventWireup="false" Codebehind="CSSMenu.ascx.cs" Inherits="CMT.CSSMenu" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<div id="navlist">
	<asp:Repeater id="repUL" runat="server">
		<HeaderTemplate>
			<ul>
		</HeaderTemplate>
		<ItemTemplate>
			<li>
				<a target="_parent" href='<%# DataBinder.Eval(Container.DataItem, "BindMe1") %>'>
					<%# DataBinder.Eval(Container.DataItem, "BindMe2") %>
				</a>
			</li>
		</ItemTemplate>
		<FooterTemplate>
			</ul>
		</FooterTemplate>
	</asp:Repeater>
</div>
