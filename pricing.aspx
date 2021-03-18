<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="bottom" Src="Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="left" Src="Left.ascx" %>
<%@ Page CodeBehind="pricing.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="CMT.pricing" %>
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
			.tabletext { FONT-SIZE: 9pt; COLOR: #333333; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textcontact { FONT-SIZE: 9pt; COLOR: #41526a; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textlegal { FONT-SIZE: 7pt; COLOR: #9ca1b4; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.tabletitle { FONT-SIZE: 10pt; COLOR: #ffffff; FONT-FAMILY: Arial, Helvetica, sans-serif }
			A:link { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:active { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:visited { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:hover { COLOR: #ffcc66; TEXT-DECORATION: none }
			</STYLE>
	</HEAD>
	<body onload="preloadImages(); " background="graphics/back.gif">
		<form id="frmPricing" method="post" runat="server">
			<div CLASS="table">
				<!----start full page layout (centers main table)----->
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr align="center" class="text">
						<td valign="top">
							<table width="750" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" id="tblContent">
								<tr>
									<td valign="top" bgcolor="#ffffff">
										<!----start page----->
										<!----topbar----->
										<uc1:top id="ucTop" runat="server"></uc1:top>
										<!----logo/photo----->
										<table cellspacing="0" cellpadding="0" border="0">
											<tr>
												<td valign="top">
													<!----start left column and menu----->
													<uc1:left id="ucLeft" runat="server"></uc1:left>
													<!----end left column and menu----->
												</td>
												<td valign="top">
													<!----start content----->
													<table width="506" cellspacing="0" cellpadding="0" border="0">
														<tr>
															<td bgcolor="#ffffff" valign="top">
																<!----start upper content area----->
																<table cellspacing="0" cellpadding="0" border="0" width="506">
																	<tr>
																		<td colspan="3"><img src="graphics/clear.gif" alt="" width="1" height="12" border="0"></td>
																	</tr>
																	<tr>
																		<td><img src="graphics/clear.gif" alt="" width="17" height="1" border="0"></td>
																		<td width="470" valign="top">
																			<!----start content----->
																			<table cellspacing="0" cellpadding="0" border="0">
																				<tr>
																					<td class="texttitle">PRICING INFORMATION</td>
																				</tr>
																				<tr>
																					<td class="textsubtitle"><strong>Daily, Monthly and Averages</strong></td>
																				</tr>
																				<tr>
																					<td align="center"><asp:DropDownList ID="ddlYearMonth" Runat="server" AutoPostBack="True"></asp:DropDownList></td>
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
																						Effective as of 12:01 a.m. on the dates shown below, subject to change without 
																						notice, CMT, Inc. posts the following prices it will pay per barrel of 42 U.S. 
																						gallons of merchantable crude oil.
																						<br>
																						<br>
																						<div align="center">
																							<table cellspacing="1" cellpadding="3" border="0" width="470">
																								<tr>
																									<td colspan="8" bgcolor="#770000" class="tabletitle" align="center"><strong>MONTHLY 
																											PRICE BULLETIN FOR
																											<%= MonthYear %>
																										</strong>
																									</td>
																								</tr>
																							</table>
																							<asp:PlaceHolder ID="phPrice" Runat="server"></asp:PlaceHolder>
																							<br>
																							<br>
																							<table cellspacing="1" cellpadding="3" border="0" width="470">
																								<tr>
																									<td colspan="8" bgcolor="#770000" class="tabletitle" align="center"><strong>MONTHLY 
																											PRICE AVERAGE FOR
																											<%= MonthYear %>
																										</strong>
																									</td>
																								</tr>
																							</table>
																							<asp:PlaceHolder ID="phAvgPrice" Runat="server"></asp:PlaceHolder>
																						</div>
																						<br>
																						<br>
																						THE PRICES SHOWN ARE SUBJECT TO THE TERMS AND CONDITIONS SET FORTH IN CMT, INC. 
																						DIVISION ORDERS, GENERAL PROVISIONS OR OTHER CONTRACTUAL AGREEMENTS. PRICES ARE 
																						SHOWN FOR 40.0 DEGREE GRAVITY EXCEPT AS NOTED IN THE GRAVITY ADJUSTMENT AND ARE 
																						ALSO BASED ON THE USE OF 100% TANK TABLES OR MUTUALLY ACCEPTABLE METHOD WITH 
																						THE FULL DEDUCTION FOR SEDIMENT AND WATER (S&amp;W). THE FOREGOING SCHEDULE OF 
																						PRICES IS SUBJECT TO DEDUCTION WITHOUT NOTICE FOR TRUCKING, SHORT LOADS, 
																						REJECTS, MARKET ADJUSTMENTS AND OTHER RELATED CHARGES ON CRUDE OIL PURCHASED 
																						FROM LEASES.
																						<br>
																						<br>
																						GRAVITY ADJUSTMENT SCALE:<br>
																						$0.15 per 1/10 point from 40 gravity down to 25 gravity. No further penalty for 
																						gravity below 25. (Maximum penalty $2.25)
																						<br>
																						<br>
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
	</body>
	<script type="text/javascript">
		DoHeight( );
	</script>
</HTML>
