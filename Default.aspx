<%@ Page language="c#" Codebehind="Default.aspx.cs" AutoEventWireup="false" Inherits="CMT.Default" %>
<%@ Register TagPrefix="uc1" TagName="left" Src="Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Crude Marketing & Transportation, Inc.</title>
		<csscriptdict>
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
			.textprice { FONT-WEIGHT: bold; FONT-SIZE: 20pt; COLOR: #ffffff; LINE-HEIGHT: 10pt; FONT-FAMILY: Arial, Helvetica, sans-serif; LETTER-SPACING: 0.1em }
			.textdate { FONT-WEIGHT: bold; FONT-SIZE: 10pt; COLOR: #981b1e; LINE-HEIGHT: 10pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.texttitle { FONT-WEIGHT: bold; FONT-SIZE: 16pt; COLOR: #990000; LINE-HEIGHT: 16pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textsubtitle { FONT-SIZE: 11pt; COLOR: #41526a; LINE-HEIGHT: 16pt; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.text { FONT-SIZE: 10pt; COLOR: #333333; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textcontact { FONT-SIZE: 9pt; COLOR: #41526a; FONT-FAMILY: Arial, Helvetica, sans-serif }
			.textlegal { FONT-SIZE: 7pt; COLOR: #9ca1b4; FONT-FAMILY: Arial, Helvetica, sans-serif }
			A:link { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:active { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:visited { COLOR: #9ca1b4; TEXT-DECORATION: none }
			A:hover { COLOR: #ffcc66; TEXT-DECORATION: none }
			</STYLE>
	</HEAD>
	<body onload="preloadImages(); " background="graphics/back.gif">
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
												<table width="244" cellspacing="0" cellpadding="0" border="0">
													<tr>
														<td bgcolor="#979caf" align="right" valign="top">
															<table cellspacing="0" cellpadding="0" border="0">
																<tr>
																	<td><img src="graphics/clear.gif" alt="" width="244" height="11" border="0"></td>
																</tr>
																<tr>
																	<td background="graphics/guageback.gif" align="right" valign="top">
																		<table cellspacing="0" cellpadding="0" border="0">
																			<tr>
																				<td align="right" class="textdate">Today's Price:
																					<%= LastDate %>
																					<img src="graphics/clear.gif" width="1" height="24" border="0"></td>
																				<td rowspan="3" align="right" valign="top"><img src="graphics/clear.gif" alt="" width="53" height="107" border="0"></td>
																			</tr>
																			<tr>
																				<td class="textprice" align="right" valign="top"><%= CurrentPrice %><img src="graphics/clear.gif" alt="" width="12" height="1" border="0"></td>
																			</tr>
																			<tr>
																				<td align="right" valign="top"><a onmouseover="changeImages('more','graphics/moreon.gif');return true" onmouseout="changeImages('more','graphics/moreoff.gif');return true"
																						href="pricing.aspx"><img id="more" src="graphics/moreoff.gif" alt="More" width="42" height="13" border="0"></a></td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td><uc1:left id="ucLeft" runat="server"></uc1:left></td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
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
																				<td class="texttitle">WELCOME</td>
																			</tr>
																			<tr>
																				<td class="textsubtitle"><strong>to Crude Marketing &amp; Transportation, Inc.</strong></td>
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
																					CMT, Inc. began in Northeastern Oklahoma and Kansas and has been in the 
																					transportation and crude oil business for over 20 years.
																					<br>
																					<br>
																					During that period, CMT, Inc. and the oil industry have experienced many market 
																					changes that have affected both the producer and the purchaser.
																					<br>
																					<br>
																					Our focus is and will continue to be providing a competitive market for 
																					producers with a service level that is superior to our competitors. Our 
																					dedicated professionals are always available to customize your service needs.
																					<br>
																					<br>
																					<br>
																					<br>
																					<strong><font color="#880000">CMT, Inc. will continue to provide you with...</font></strong>
																					<br>
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
															<!----start Quick Service/Pay boxes----->
															<table width="506" cellspacing="0" cellpadding="0" border="0">
																<tr>
																	<td><img src="graphics/service1.gif" alt="Quick service...Just call in your load" width="208"
																			height="71" border="0"></td>
																	<td><img src="graphics/service2.gif" alt="Quick pay...and receive a payment" width="45" height="71"
																			border="0"></td>
																	<td><img src="graphics/pay1.gif" alt="" width="199" height="71" border="0"></td>
																	<td><img src="graphics/pay2.gif" alt="" width="54" height="71" border="0"></td>
																</tr>
																<tr>
																	<td><img src="graphics/service3.gif" alt="" width="208" height="16" border="0"></td>
																	<td><a onmouseover="changeImages('more2','graphics/more2on.gif');return true" onmouseout="changeImages('more2','graphics/more2off.gif');return true"
																			href="callinload.aspx"><img id="more2" src="graphics/more2off.gif" alt="more2" width="45" height="16" border="0"></a></td>
																	<td><img src="graphics/pay3.gif" alt="" width="199" height="16" border="0"></td>
																	<td><a onmouseover="changeImages('more3','graphics/more3on.gif');return true" onmouseout="changeImages('more3','graphics/more3off.gif');return true"
																			href="about.aspx"><img id="more3" src="graphics/more3off.gif" alt="more3" width="54" height="16" border="0"></a></td>
																</tr>
															</table>
															<!----end Quick Service/Pay boxes----->
														</td>
													</tr>
												</table>
												<!----end content----->
											</td>
										</tr>
									</table>
									<!----start bottom----->
									<table cellspacing="0" cellpadding="0" border="0" width="750">
										<tr>
											<td height="40px" align="center" class="textcontact">
												<strong>Drumright, 
													OK:&nbsp;&nbsp;800.543.2968&nbsp;&nbsp;&nbsp;&nbsp;•&nbsp;&nbsp;&nbsp;Humboldt, 
													KS:&nbsp;&nbsp;800.444.8394&nbsp;&nbsp;&nbsp;&nbsp;•&nbsp;&nbsp;&nbsp;Tulsa, 
													OK:&nbsp;&nbsp;918.585.6790&nbsp;&nbsp;&nbsp;&nbsp;•&nbsp;&nbsp;&nbsp;Ratliff 
													City, OK:&nbsp;&nbsp;580.856.2187</strong>
											</td>
										</tr>
										<tr>
											<td align="center" class="textcontact">
												<strong><a href="mailto:cmtinfo@crudetransport.com"><FONT COLOR="#770000" onMouseOver="this.style.color = '#cc9900';" onMouseOut="this.style.color = '#770000';">
															cmtinfo@crudetransport.com</FONT></a></strong>
											</td>
										</tr>
										<tr>
											<td bgcolor="#770000"><img src="graphics/clear.gif" alt="" width="1" height="5" border="0"></td>
										</tr>
										<tr>
											<td bgcolor="#000000" class="textlegal"><img src="graphics/clear.gif" alt="" width="26" height="32" border="0" align="absMiddle">Copyright&nbsp;©&nbsp;<%= System.DateTime.Now.Year %>&nbsp;Crude 
												Marketing &amp; Transportation, Inc. All Rights Reserved.</td>
										</tr>
									</table>
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
	</body>
</HTML>
