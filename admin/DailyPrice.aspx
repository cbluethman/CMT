<%@ Register TagPrefix="cmt" TagName="cssmenu" Src="CSSMenu.ascx" %>
<%@ Page language="c#" Codebehind="DailyPrice.aspx.cs" AutoEventWireup="false" Inherits="CMT.admin.DailyPrice" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>DailyPrice</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="../styles/DynMenu.css">
		<link rel="stylesheet" href="../styles/main.css"> <!--[if IE 5]>
		<style>
		#navlist a
		{
			height: 1em;
			float: left;
			clear: both;
			width: 100%;
		}
		</style>
		<![endif]-->  <!--[if IE 6]>
<STYLE>#navlist A {
	HEIGHT: 1em
}
</STYLE>
<![endif]-->
	</HEAD>
	<BODY background="../graphics/back.gif">
		<form id="frmDailyPrice" method="post" runat="server">
			<div class="mainfont">
				<cmt:cssmenu id="cssmenu" RunAt="Server"></cmt:cssmenu>
				<table>
					<tr>
						<TD>Date
							<asp:textbox id="txtDate" runat="server" Width="70px" CssClass="text"></asp:textbox><A onclick="window.dateField=document.frmDailyPrice.txtDate;calendar=window.open('../calendar.htm','cal','WIDTH=200,HEIGHT=250');"
								href="#"><IMG height="16" src="../graphics/calendar.gif" width="16" border="0"></A>
							<asp:Button id="btnDelete" runat="server" Text="<-- Delete this date"></asp:Button>
						</TD>
					</tr>
					<tr>
						<td>
							<asp:DataGrid id="dgCrudeType" runat="server" AutoGenerateColumns="False">
								<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
								<Columns>
									<asp:BoundColumn Visible="False" DataField="CrudeTypeId"></asp:BoundColumn>
									<asp:BoundColumn DataField="Description" HeaderText="Crude Type"></asp:BoundColumn>
									<asp:TemplateColumn HeaderText="Price">
										<ItemTemplate>
											<asp:TextBox id="txtPrice" runat="server" width="70px"></asp:TextBox>
											<asp:RegularExpressionValidator id="revPrice" runat="server" ValidationExpression="\d*\.\d\d" ForeColor="Yellow"
												ErrorMessage="Must be in 99.99 format" ControlToValidate="txtPrice" Display="Dynamic"></asp:RegularExpressionValidator>
										</ItemTemplate>
									</asp:TemplateColumn>
								</Columns>
							</asp:DataGrid>
							Price must be in 99.99 format
						</td>
					</tr>
					<tr>
						<td align="center" colspan="2">
							<asp:Button id="btnSave" runat="server" Text="Save"></asp:Button>
						</td>
					</tr>
				</table>
			</div>
		</form>
		</FORM>
	</BODY>
</HTML>
