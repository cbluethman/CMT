<%@ Page CodeBehind="job.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="CMT.job" %>
<%@ Register TagPrefix="uc1" TagName="left" Src="Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="bottom" Src="Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="JobForm" Src="~/ascx/JobForm.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Crude Marketing & Transportation, Inc.</title>
		<script type="text/javascript" src="CMT.js"></script>
		<csscriptdict import>
			<script type="text/javascript" src="CSScriptLib.js"></script>
		</csscriptdict>
		<csactiondict>
			<script type="text/javascript"><!--
var preloadFlag = false;
function preloadImages() {
	if (document.images) {
		pre_profileon = newImage('graphics/profileon.gif');
		preloadFlag = true;
	}
}
// --></script>
		</csactiondict>
		<STYLE TYPE="text/css">
			.table { Z-INDEX: 1; LEFT: 0px; POSITION: absolute; TOP: 0px }
			.texthome { FONT-SIZE: 7pt; COLOR: #979caf; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textprice { FONT-WEIGHT: bold; FONT-SIZE: 20pt; COLOR: #ffffff; FONT-FAMILY: Arial, Helvetica, sans-serif; LETTER-SPACING: 0.1em }
			.texttitle { FONT-WEIGHT: bold; FONT-SIZE: 16pt; COLOR: #990000; LINE-HEIGHT: 16pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textsubtitle { FONT-SIZE: 11pt; COLOR: #41526a; LINE-HEIGHT: 16pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.text { FONT-SIZE: 10pt; COLOR: #333333; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textcontact { FONT-SIZE: 9pt; COLOR: #41526a; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textlegal { FONT-SIZE: 7pt; COLOR: #9ca1b4; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.bullet { FONT-SIZE: 12pt; COLOR: #770000; FONT-FAMILY: Arial, Helvetica, sans-serif }
			A:link { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:active { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:visited { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:hover { COLOR: #ffcc66; TEXT-DECORATION: none }
			</STYLE>
	</HEAD>
	<body onload="preloadImages();var a = document.getElementById( 'ucJobForm_txtFirstName' ); if ( a ) a.focus( );"
		background="graphics/back.gif">
		<form id="frmJob" method="post" runat="server">
			<div CLASS="table">
				<!----start full page layout (centers main table)----->
				<table border="0" cellpadding="0" cellspacing="0" width="100%" ID="Table1">
					<tr align="center" class="text">
						<td valign="top">
							<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" ID="tblContent">
								<tr>
									<td valign="top" bgcolor="#ffffff">
										<!----start page----->
										<uc1:top id="ucTop" runat="server"></uc1:top>
										<!----topbar----->
										<!----logo/photo----->
										<table cellspacing="0" cellpadding="0" border="0" ID="Table6">
											<tr>
												<td valign="top">
													<!----start left column and menu----->
													<uc1:left id="ucLeft" runat="server"></uc1:left>
													<!----end left column and menu----->
												</td>
												<td valign="top">
													<!----start content----->
													<table width="506" cellspacing="0" cellpadding="0" border="0" ID="Table9">
														<tr>
															<td bgcolor="#ffffff" valign="top">
																<!----start upper content area----->
																<table cellspacing="0" cellpadding="0" border="0" width="506" ID="Table10">
																	<tr>
																		<td colspan="3"><img src="graphics/clear.gif" alt="" width="1" height="12" border="0"></td>
																	</tr>
																	<tr>
																		<td><img src="graphics/clear.gif" alt="" width="17" height="1" border="0"></td>
																		<td width="470" valign="top">
																			<!----start content----->
																			<table cellspacing="0" cellpadding="0" border="0" ID="Table11">
																				<tr>
																					<td class="texttitle">JOBS</td>
																				</tr>
																				<tr>
																					<td class="textsubtitle"><strong>Work for CMT</strong></td>
																				</tr>
																				<tr>
																					<td><img src="graphics/clear.gif" alt="" width="1" height="6" border="0"></td>
																				</tr>
																				<tr>
																					<td><img src="graphics/red.gif" alt="" width="470" height="1" border="0"></td>
																				</tr>
																				<tr>
																					<td><img src="graphics/clear.gif" alt="" width="1" height="8" border="0"></td>
																				</tr>
																				<tr>
																					<td class="text">
																						<asp:Panel ID="pnlMain" Runat="server" Visible="False">
																							<A href="job.aspx?Id=01">Crude Oil Gauger/Drivers</A><BR>
																							<BR>
																							<DIV align="center">Equal Opportunity Employer</DIV>
																						</asp:Panel>
																						<asp:Panel ID="pnlJobs" Runat="server" Visible="False">
																							<asp:Panel id="pnl01" Visible="False" Runat="server"><STRONG>Crude Oil Gauger/Drivers</STRONG><BR><BR>Crude Marketing & Transportation, Inc. has immediate opening 
                                for crude oil gauger/drivers. Must have Class A 
                                CDL and 2 years tanker experience; Hazmat 
                                endorsement and crude oil measuring/working also 
                                required. No nights. Driver will keep truck at 
                                own location. Competitive salary, with benefits 
                                after 30 days. Fax resume to 918-584-4128, email 
                                to <A href="mailto://HR@NBIServices.com">HR@NBIServices.com</A> 
                                or call 1-866-415-1897.<BR>Equal Opportunity 
                                Employer <BR></asp:Panel>
																							<BR>
																							<BR>
																							<BR>
																							<DIV align="center">
																								<asp:ImageButton id="ibtnApply" Runat="server" ImageUrl="graphics/apply_today.gif"></asp:ImageButton>
																								<asp:ImageButton id="ibtnUpload" Visible="False" Runat="server" ImageUrl="graphics/upload_resume.gif"></asp:ImageButton></DIV>
																						</asp:Panel>
																						<asp:Panel ID="pnlApply" Visible="False" Runat="server">
																							<TABLE id="tblApply" runat="server">
																								<TR>
																									<TD>
																										<uc1:JobForm id="ucJobForm" runat="server"></uc1:JobForm></TD>
																								</TR>
																								<TR>
																									<TD align="center" colSpan="2">
																										<asp:Button id="btnSend" runat="server" Text="Send"></asp:Button></TD>
																								</TR>
																							</TABLE>
																						</asp:Panel>
																					</td>
																				</tr>
																			</table>
																			<!----end content----->
																		</td>
																		<td><img src="graphics/clear.gif" alt="" width="19" height="1" border="0"></td>
																	</tr>
																</table>
																<!----start upper content area----->
															</td>
														</tr>
													</table>
													<!----end content----->
												</td>
											</tr>
										</table>
										<!----start bottom----->
										<uc1:bottom id="ucBottom" runat="server"></uc1:bottom>
										<!----end bottom----->
										<!----end page----->
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<!----end full page layout----->
			</div>
		</form>
		<script type="text/javascript">
		DoHeight( );
		</script>
	</body>
</HTML>
