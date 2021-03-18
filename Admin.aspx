<%@ Page language="c#" Codebehind="Admin.aspx.cs" AutoEventWireup="false" Inherits="CMT.Admin" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Admin</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" href="styles/main.css">
	</HEAD>
	<body onload="javascript:document.frmAdmin.txtUserID.focus()" background="graphics/back.gif">
		<form id="frmAdmin" method="post" runat="server">
			<div class="mainfont">
				<table border="0" align="center">
					<tr>
						<td align="center" colspan="2"><img src="graphics/logo.gif" alt="Crude Marketing & Transportation, Inc." width="175"
								height="115" border="0"></A>
						</td>
					</tr>
					<tr>
						<td>
							UserID:
						</td>
						<td>
							<asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td>
							Password:
						</td>
						<td>
							<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td colspan="2" valign="top" align="center">
							<asp:Button ID="btnLogin" runat="server" Text="Login" Width="50px" />
							<asp:Button ID="btnReset" runat="server" Text="Reset" Width="50px" /></td>
					</tr>
					<asp:Panel ID="pnlInvalid" Runat="server">
						<TR>
							<TD style="COLOR: yellow" align="center" colSpan="2">Invalid Login/Password!</TD>
						</TR>
					</asp:Panel>
				</table>
			</div>
		</form>
	</body>
</HTML>
