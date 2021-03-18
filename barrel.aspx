<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="left" Src="Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="bottom" Src="Bottom.ascx" %>
<%@ Page CodeBehind="barrel.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="CMT.barrel" %>
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
			.tabletitle { FONT-SIZE: 10pt; COLOR: #ffffff; FONT-FAMILY: Arial, Helvetica, sans-serif }
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
									<!----topbar----->
									<uc1:top id="ucTop" runat="server"></uc1:top>
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
																				<td class="texttitle">BARREL ADJUSTMENT</td>
																			</tr>
																			<tr>
																				<td class="textsubtitle"><strong>SS&amp;W% and Price Adjustment</strong></td>
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
																					One of the tangible benefits of having CMT, Inc. as the first purchaser of your 
																					oil is the fact that CMT, Inc. is able to buy your oil regardless of SS&amp;W 
																					content, thereby, removing the burden of treating unmerchantable oil from the 
																					producer. Due to the rising cost of hazardous waste disposal, effective 
																					February 1, 2006, the below table will be utilized to determine the SS&amp;W 
																					price deduction for all purchased oil:
																					<br>
																					<br>
																					<div align="center">
																						<table cellspacing="1" cellpadding="3" border="0" width="470" ID="Table12">
																							<tr>
																								<td colspan="5" bgcolor="#770000" class="tabletitle" align="center"><strong>S&amp;W 
																										PRICE DEDUCTION</strong></td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#979caf"><strong>S&amp;W%</strong></td>
																								<td class="text" align="center" bgcolor="#979caf"><strong>PRICE ADJUSTMENT</strong></td>
																								<td class="text" align="center" bgcolor="#979caf"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#979caf"><strong>S&amp;W%</strong></td>
																								<td class="text" align="center" bgcolor="#979caf"><strong>PRICE ADJUSTMENT</strong></td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">0 - 1</td>
																								<td class="text" align="center" bgcolor="#ddddee">None*</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">25.0 - 25.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$25.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">1.1 - 1.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">75 cents</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">26.0 - 26.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$26.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">2.0 - 2.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$1.50</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">27.0 - 27.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$27.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">3.0 - 3.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$2.25</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">28.0 - 28.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$28.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">4.0 - 4.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$3.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">29.0 - 29.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$29.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">5.0 - 5.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$3.75</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">30.0 - 30.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$30.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">6.0 - 6.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$4.50</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">31.0 - 31.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$31.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">7.0 - 7.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$5.25</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">32.0 - 32.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$32.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">8.0 - 8.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$6.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">33.0 - 33.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$33.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">9.0 - 9.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$6.75</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">34.0 - 34.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$34.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">10.0 - 10.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$10.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">35.0 - 35.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$35.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">11.0 - 11.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$11.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">36.0 - 36.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$36.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">12.0 - 12.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$12.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">37.0 - 37.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$37.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">13.0 - 13.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$13.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">38.0 - 38.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$38.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">14.0 - 14.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$14.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">39.0 - 39.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$39.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">15.0 - 15.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$15.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">40.0 - 40.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$40.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">16.0 - 16.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$16.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">41.0 - 41.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$41.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">17.0 - 17.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$17.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">42.0 - 42.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$42.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">18.0 - 18.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$18.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">43.0 - 43.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$43.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">19.0 - 19.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$19.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">44.0 - 44.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$44.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">20.0 - 20.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$20.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">45.0 - 45.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$45.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">21.0 - 21.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$21.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">46.0 - 46.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$46.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">22.0 - 22.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$22.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">47.0 - 47.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$47.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">23.0 - 23.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$23.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">48.0 - 48.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$48.00</td>
																							</tr>
																							<tr>
																								<td class="text" align="center" bgcolor="#ddddee">24.0 - 24.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$24.00</td>
																								<td class="text" align="center" bgcolor="#ddddee"><img src="graphics/clear.gif" alt="" width="40" height="1" border="0"></td>
																								<td class="text" align="center" bgcolor="#ddddee">49.0 - 49.9</td>
																								<td class="text" align="center" bgcolor="#ddddee">$49.00</td>
																							</tr>
																						</table>
																					</div>
																					*Merchantable Oil
																					<br>
																					<br>
																					Please note that CMT, Inc. policy is that if CMT, Inc. is picking up your oil 
																					in the field, and your S&amp;W is higher than 40%, CMT, Inc. will not pay you 
																					for that load. For any additional information please contact us at 
																					cmtinfo@crudetransport.com.
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
		<script type="text/javascript">
		DoHeight( );
		</script>
	</body>
</HTML>
