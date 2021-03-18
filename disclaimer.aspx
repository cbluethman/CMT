<%@ Page CodeBehind="disclaimer.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="CMT.disclaimer" %>
<%@ Register TagPrefix="uc1" TagName="bottom" Src="Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="left" Src="Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
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
			<!--
.table			{ position: absolute; left: 0px; top: 0px; z-index: 1}
.texthome		{ font-family: Arial, Helvetica, sans-serif; font-size: 7pt; color:#979CAF;}
.textprice		{ font-family: Arial, Helvetica, sans-serif; font-size: 20pt; font-weight: bold; letter-spacing: 0.1em; color:#ffffff;}
.texttitle	 	{ font-family: Arial, Helvetica, sans-serif; font-size: 16pt; font-weight: bold; line-height: 16pt; color:#990000;}
.textsubtitle	{ font-family: Arial, Helvetica, sans-serif; font-size: 11pt; line-height: 16pt; color:#41526A;}
.text			{ font-family: Arial, Helvetica, sans-serif; font-size: 10pt; color:#333333;}
.text2			{ font-family: Arial, Helvetica, sans-serif; font-size: 9pt; color:#333333;}
.textcontact	{ font-family: Arial, Helvetica, sans-serif; font-size: 9pt; color:#41526A;}
.textlegal		{ font-family: Arial, Helvetica, sans-serif; font-size: 7pt; color:#9CA1B4;}

A:link      { text-decoration: none; color: #9CA1B4}
A:active    { text-decoration: none; color: #9CA1B4}
A:visited   { text-decoration: none; color: #9CA1B4} 
A:hover     { text-decoration: none; color: #ffcc66} 
 --></STYLE>
	</head>
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
																				<td class="texttitle">DISCLAIMER</td>
																			</tr>
																			<tr>
																				<td class="textsubtitle"><strong>Important Information</strong></td>
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
																				<td class="text2">
																					<strong>TERMS OF USE AND LEGAL NOTICES</strong> THE FOLLOWING TERMS AND 
																					CONDITIONS APPLY TO ALL VISITORS TO OR USERS OF THE WEBSITE BOTH NOW AND IN THE 
																					FUTURE. BY ACCESSING THIS WEBSITE, THE USER ACKNOWLEDGES ACCEPTANCE OF THESE 
																					TERMS AND CONDITIONS. CRUDE MARKETING & TRANSPORTATION, INC. ("CMT") RESERVES 
																					THE RIGHT TO CHANGE THESE TERMS AND CONDITIONS FROM TIME TO TIME AT ITS SOLE 
																					DISCRETION WITHOUT NOTICE. IN THE CASE OF ANY VIOLATION OF THESE TERMS AND 
																					CONDITIONS, CMT RESERVES THE RIGHT TO SEEK ALL REMEDIES AVAILABLE BY LAW AND IN 
																					EQUITY FOR SUCH VIOLATIONS.
																					<br>
																					<br>
																					<strong>USAGE</strong> You agree not to (a) use any automated means, including 
																					spiders, robots, crawlers or the like to download data from this website; (b) 
																					enter any data that is libelous, defamatory or unlawful, or that violates or 
																					infringes any trademark, copyright or similar rights of others; or (c) 
																					knowingly enter any data which is false or misleading.
																					<br>
																					CMT reserves the right to deny access to any user or group of users to the 
																					website, at CMT's sole discretion, at any time, and for any reason or no 
																					reason.
																					<br>
																					<br>
																					<strong>COPYRIGHT AND TRADEMARKS</strong> The trademarks, logos, and service 
																					marks, including but not limited to "Crude Marketing & Transportation, Inc." 
																					and other names, logos, and icons identifying products and services 
																					(collectively, "Trademarks") displayed on the website, are registered and 
																					unregistered Trademarks of CMT, its affiliates, suppliers or others. Certain 
																					portions of the website may be identified as being the subject of a specific 
																					copyright held by an entity other than CMT and, as such, may not be copied 
																					without the permission of the holder of the copyright. For the remainder of the 
																					website, CMT hereby authorizes you to copy information published by CMT on this 
																					website solely for non-commercial use within your organization provided you 
																					retain all copyright and other proprietary notices contained in the content and 
																					you do not modify the content. You may not copy or display for redistribution 
																					to third parties or for commercial purposes any portion of the content. Note 
																					that any product, process or technology described in the document may be the 
																					subject of other Intellectual Property rights reserved by CMT, its subsidiaries 
																					or affiliate companies and are not licensed hereunder.
																					<br>
																					<br>
																					<strong>LIABILITY DISCLAIMER</strong> THE INFORMATION CONTAINED IN THIS WEBSITE 
																					IS PROVIDED AS A COURTESY FOR CMT'S CUSTOMERS. CMT HAS PROVIDED THE INFORMATION 
																					IN GOOD FAITH AND HAS MADE REASONABLE EFFORTS TO MAKE THE INFORMATION AS 
																					ACCURATE AND UP-TO-DATE AS POSSIBLE.
																					<br>
																					<br>
																					THIS INFORMATION IS PROVIDED "AS IS" WITHOUT ANY WARRANTY OR REPRESENTATION OF 
																					ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING BUT NOT LIMITED TO THOSE OF 
																					MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
																					INFORMATION CONTAINED ON THIS WEBSITE CANNOT BE RELIED UPON BY USER FOR ANY 
																					PURPOSE WHATSOEVER.
																					<br>
																					<br>
																					IN NO EVENT SHALL CMT BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, SPECIAL, 
																					INCIDENTAL OR CONSEQUENTIAL DAMAGES INCLUDING WITHOUT LIMITATION LOST REVENUE 
																					OR PROFITS, LOST OPPORTUNITY, OR ANY OTHER LOSS RESULTING FROM RELIANCE ON THE 
																					INFORMATION CONTAINED ON THIS WEBSITE INCLUDING DAMAGES ARISING FROM 
																					INACCURACIES, OMISSIONS OR ERRORS OR ARISING OUT OF THE USE OR INABILITY TO USE 
																					THIS WEBSITE, EVEN IF CMT HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES 
																					OR SUCH DAMAGES ARE FORESEEABLE.
																					<br>
																					<br>
																					THE INFORMATION CONTAINED IN THIS WEBSITE MAY CONTAIN INACCURACIES OR 
																					TYPOGRAPHICAL ERRORS. THIS WEBSITE MAY BE CHANGED OR UPDATED FROM TIME TO TIME 
																					WITHOUT NOTICE.
																					<br>
																					<br>
																					<strong>Applicable Law</strong> These Terms and Conditions are governed by the 
																					laws of the State of Oklahoma, without giving effect to any principles of 
																					conflicts of laws. By using this site, you agree that any suit or hearing 
																					regarding this website shall be heard in the United States District Court for 
																					the Northern District of Oklahoma in Tulsa Oklahoma, where federal jurisdiction 
																					exists. All other cases involving a dispute regarding the website are under the 
																					jurisdiction of the state courts situated in Tulsa County, Oklahoma. You also 
																					consent to the exercise of personal jurisdiction in the courts of the State of 
																					Oklahoma regarding any dispute that arises from this Site.
																					<br>
																					<br>
																					Failure to enforce strict performance of the Terms shall not be construed as a 
																					waiver of any provision or right. CMT may assign its rights and duties under 
																					the Terms without notice to any party at any time.
																					<br>
																					<br>
																					<strong>THIRD PARTY LINKS</strong> Any third party site links included in this 
																					website are not under the control of CMT and CMT is not responsible for and 
																					makes no representations or warranties concerning the contents of any third 
																					party linked site or any link contained in a third party linked site. CMT 
																					provides third party links to you only as a convenience and the inclusion of 
																					any link does not imply endorsement, investigation or verification by CMT of 
																					the third party linked site.
																					<br>
																					<br>
																					<strong>VIRUSES, ETC.</strong> CMT assumes no responsibility, and shall not be 
																					liable for any damages to, or viruses that may infect, your computer equipment 
																					or other property on account of your access to, use of, or browsing in the 
																					website or your downloading of any materials, data, text, or images from the 
																					website.
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
	</body>
	<script type="text/javascript">
		DoHeight( );
	</script>
</html>
