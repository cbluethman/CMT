<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="bottom" Src="Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="left" Src="Left.ascx" %>
<%@ Page CodeBehind="about.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="CMT.about" %>
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
	<body onload="preloadImages(); " background="graphics/back.gif">
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
																				<td class="texttitle">ABOUT CMT, INC.</td>
																			</tr>
																			<tr>
																				<td class="textsubtitle"><strong>Products and Services</strong></td>
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
																					<strong>CMT, INC. PROVIDES:</strong><br>
																					<table cellspacing="0" cellpadding="0" border="0" ID="Table12">
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Customized service on physical barrels</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Different payment options</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Minimize credit risk</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Timely pickup of crude</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Maximize use of tankage</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Eliminate issues around shipments</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Handle stranded barrels with ease</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Locally owned and operated</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Hedging strategies</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Overflow volume</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Diversity of purchasers</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Physical and paper advantages</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Various market opportunities</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Ability to capture differentials</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Markets with NCRA, Frontier, Coffeyville, ConocoPhillips, Sunoco</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Use of Teppco Cushing if needed</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Fixed Sales Price—Short Term</td>
																						</tr>
																					</table>
																					<br>
																					<strong>BUSINESS PROFILE:</strong><br>
																					<table cellspacing="0" cellpadding="0" border="0" ID="Table13">
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>20 years in the transportation and crude oil purchasing business</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Operation of a minimum fleet of 35 trucks on a daily basis</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Transports and Bobtails are available to cater to the specific needs of the 
																								marginal well producers</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Delivery to major refineries in Oklahoma and Kansas creates a competitive and 
																								stable market in the changing energy environment</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>"Quick Service - Quick Pay"</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Full working interest and Royalty Distribution</td>
																						</tr>
																						<tr>
																							<td valign="top"><img src="graphics/bullet.gif" alt="" width="3" height="16" border="0" align="middle"></td>
																							<td>&nbsp;&nbsp;</td>
																							<td>Handle joint interest billing and deduction of operating expenses from working 
																								interest</td>
																						</tr>
																					</table>
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
									<!----end page----->
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<!----end full page layout----->
		</div>
	</body>
	<script type="text/javascript">
		DoHeight( );
	</script>
</HTML>
