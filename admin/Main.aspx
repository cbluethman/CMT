<%@ Register TagPrefix="cmt" TagName="cssmenu" Src="CSSMenu.ascx" %>
<%@ Page language="c#" Codebehind="Main.aspx.cs" AutoEventWireup="false" Inherits="CMT.admin.Main" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Main</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="../styles/DynMenu.css">
		<!--[if IE 5]>
		<style>
		#navlist a
		{
			height: 1em;
			float: left;
			clear: both;
			width: 100%;
		}
		</style>
		<![endif]-->
		<!--[if IE 6]>
		<STYLE>
		#navlist a
		{
			HEIGHT: 1em
		}
		</STYLE>
		<![endif]-->
	</HEAD>
	<body background="../graphics/back.gif">
		<form id="frmMain" method="post" runat="server">
			<cmt:cssmenu id="cssmenu" RunAt="Server"></cmt:cssmenu>
		</form>
	</body>
</HTML>
