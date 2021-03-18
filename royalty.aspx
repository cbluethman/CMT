<%@ Page CodeBehind="royalty.aspx.cs" Language="c#" AutoEventWireup="false" Inherits="CMT.royalty" %>
<%@ Register TagPrefix="uc1" TagName="bottom" Src="Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="left" Src="Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
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
		<form id="frmRoyalty" method="post" runat="server">
			<div CLASS="table">
				<!----start full page layout (centers main table)----->
				<table border="0" cellpadding="0" cellspacing="0" width="100%">
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
																					<td class="texttitle">ROYALTY QUESTIONS</td>
																				</tr>
																				<tr>
																					<td class="textsubtitle"><strong>FAQS and Forms</strong></td>
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
																						<asp:Panel ID="pnlMain" Runat="server" Visible="False"><STRONG><A href="Royalty.aspx?Id=payment">
																									PAYMENT INFORMATION</A></STRONG>&nbsp;&nbsp; 
<asp:ImageButton id="ibtnPayment" Runat="server" ImageUrl="graphics/arrow.jpg"></asp:ImageButton><BR><BR><STRONG><A href="Royalty.aspx?Id=interest">INTEREST TRANSFER INFORMATION</A></STRONG>&nbsp;&nbsp; 
<asp:ImageButton id="ibtnInterest" Runat="server" ImageUrl="graphics/arrow.jpg"></asp:ImageButton><BR><BR><STRONG><A href="Royalty.aspx?Id=estate">ESTATE PROCEEDINGS</A></STRONG>&nbsp;&nbsp; 
<asp:ImageButton id="ibtnEstate" Runat="server" ImageUrl="graphics/arrow.jpg"></asp:ImageButton>
																						</asp:Panel>
																						<asp:Panel ID="pnlPayment" Runat="server" Visible="False">
																							<A href="Royalty.aspx?Id=payment1">Name Change Information</A><BR>
																							<A href="Royalty.aspx?Id=payment2">Address Change Form</A><BR>
																							<A href="Royalty.aspx?Id=payment3">Lost Check Information</A><BR>
																							<A href="Royalty.aspx?Id=payment4">1099 Information</A><BR>
																						</asp:Panel>
																						<asp:Panel ID="pnlPayment1" Runat="server" Visible="False">
																						MY NAME CHANGED. 
                                WHAT DO I DO?<BR><BR>Send a copy of the recorded 
                                document or marriage certificate to:<BR><BR>CMT, 
                                Inc.<BR>P.O. Box 4470<BR>Tulsa, OK 
                                74159-0470<BR><BR>or fax 
                                to:<BR><BR>918.582.0777<BR><BR>Your questions 
                                and concerns can be handled more quickly if you 
                                provide us with the following information when 
                                you contact us:<BR><BR>
                                <UL>
																								<LI>
																								Your Name
																								<LI>
																								Your CMT Owner Number(s)
																								<LI>
																								Your CMT Lease Number(s)
																								<LI>
																								Last 4 digits of Social Security Number or Tax ID Number
																								<LI>
																								Check # if question concerns a specific check
																								<LI>
																									Date of check if question concerns a specific check
																								</LI>
																							</UL>If you have further 
                                questions, contact:<BR><BR><A href="mailto://cmtinfo@crudetransport.com">cmtinfo@crudetransport.com</A>
																						</asp:Panel>
																						<asp:Panel ID="pnlPayment2" Runat="server" Visible="False">
																						1. Download and print the 
                                following form.<BR><A href="address.pdf">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address Change Form (PDF version)</A><BR><A href="address.txt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address 
																								Change Form (plain text version)</A><BR><BR>2. 
                                Fill it out and send 
                                to:<BR><BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CMT, 
                                Inc.<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P.O. Box 
                                4470<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tulsa, OK 
                                74159-0470<BR><BR>
																						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or fax to: 918.582.0777</asp:Panel>
																						<asp:Panel ID="pnlPayment3" Runat="server" Visible="false">
																						I LOST MY CHECK. 
                                HOW CAN I HAVE A PAYMENT STOPPED AND HAVE THE 
                                CHECK REPLACED?<BR><BR>For assistance regarding 
                                stop payment and check reissue, 
                                contact:<BR><BR><A href="mailto://cmtinfo@crudetransport.com">cmtinfo@crudetransport.com</A><BR><BR>Your 
                                questions and concerns can be handled more 
                                quickly if you provide us with the following 
                                information when you contact us:<BR><BR>
                                <UL>
																								<LI>
																								Your Name
																								<LI>
																								Your CMT Owner Number(s)
																								<LI>
																								Your CMT Lease Number(s)
																								<LI>
																									Last 4 digits of Social Security Number or Tax ID Number
																								</LI>
																							</UL>If you have further 
                                questions, contact:<BR><BR><A href="mailto://cmtinfo@crudetransport.com">cmtinfo@crudetransport.com</A> 

                                <UL>
																							</UL></asp:Panel>
																						<asp:Panel id="pnlPayment4" Visible="False" Runat="server">WHAT IS A FORM 1099?<BR><BR>The 
                                1099 MISC form is used to report production 
                                payments. All 1099 information is shown on your 
                                final check stub of the year.<BR><BR>Your 
                                questions and concerns can be handled more 
                                quickly by providing the following information 
                                when you contact us:<BR><BR>
                                <UL>
																								<LI>
																								Your Name
																								<LI>
																								Your CMT Owner Number(s)
																								<LI>
																									Your CMT Lease Number(s)
																								</LI>
																							</UL>If you 
                                have further questions, contact:<BR><BR><A href="mailto://cmtinfo@crudetransport.com">cmtinfo@crudetransport.com</A></asp:Panel><asp:Panel ID="pnlInterest" Runat="server" Visible="False"> TO TRANSFER YOUR 
                                INTEREST:<BR><BR>Conveyance or sale of 
                                interest:<BR><BR><STRONG>Divorce:</STRONG><BR>-Copy 
                                of Divorce Decree (only need front page, 
                                signature page, and pages with applicable 
                                information)<BR><BR><STRONG>Mortgages / Liens:</STRONG><BR>-Copy of recorded 
                                document<BR><BR><STRONG>Release of Mortgage or Lien:</STRONG><BR>-Copy of recorded 
                                release<BR><BR><STRONG>Sale:</STRONG><BR>-Copy 
                                of recorded conveyance 
                                document<BR><BR><STRONG>Trusts:</STRONG><BR>-Document 
                                appointing trustee<BR>-Copy of recorded 
                                conveyance document<BR><BR>(Above documents 
                                should be recorded in the state/county where the 
                                property is located.)<BR><BR>Your questions and 
                                concerns can be handled more quickly if you 
                                provide us with the following information when 
                                you contact us:<BR><BR>
                                <UL>
																								<LI>
																								Your Name
																								<LI>
																								Your CMT Owner Number(s)
																								<LI>
																								Your CMT Lease Number(s)
																								<LI>
																								Last 4 digits of Social Security Number or Tax ID Number
																								<LI>
																								Check # if question concerns a specific check
																								<LI>
																									Date of check if question concerns a specific check
																								</LI>
																							</UL>If you have further 
                                questions, contact:<BR><BR><A href="mailto://cmtinfo@crudetransport.com">cmtinfo@crudetransport.com</A>
                                                                                                             </asp:Panel>
																						<asp:Panel ID="pnlEstate" Runat="server" Visible="False"><STRONG>To pay the estate:</STRONG><BR>-Certificate of appointment 
                                of estate representative (letter 
                                testamentary)<BR><BR><STRONG>To pay the heirs when owner dies testate and estate is not probated:</STRONG><BR>-Copy of Death 
                                Certificate<BR>-Completed Affidavit of Heirship 
                                form<BR><BR><STRONG>To pay the devisees when owner dies testate and will is probated:</STRONG><BR>-Document reflecting final 
                                account and distribution<BR>-Copy of Death 
                                Certificate<BR>-Will<BR>-Order admitting will to 
                                probate<BR><BR><STRONG>Life Estate - Of owner is deceased:</STRONG><BR>-Copy of Death 
                                Certificate<BR>-Names and addresses of 
                                remaindermen with their percent 
                                owned<BR><BR>(Above documents should be recorded 
                                in the state/county where the property is 
                                located.)<BR><BR>Your questions and concerns can 
                                be handled more quickly if you provide us with 
                                the following information when you contact 
                                us:<BR><BR>
                                <UL>
																								<LI>
																								Your Name
																								<LI>
																								Your CMT Owner Number(s)
																								<LI>
																								Your CMT Lease Number(s)
																								<LI>
																								Last 4 digits of Social Security Number or Tax ID Number
																								<LI>
																								Check # if question concerns a specific check
																								<LI>
																									Date of check if question concerns a specific check
																								</LI>
																							</UL>If you have further 
                                questions, contact:<BR><BR><A href="mailto://cmtinfo@crudetransport.com">cmtinfo@crudetransport.com</A></asp:Panel>
																					</td>
																				</tr>
																			</table> <!----end content----->
																		</td>
																		<TD>
																			<IMG height="1" alt="" src="graphics/clear.gif" width="19" border="0"></TD>
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
