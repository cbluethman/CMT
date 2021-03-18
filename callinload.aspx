<%@ Page SmartNavigation="true" language="c#" Codebehind="callinload.aspx.cs" AutoEventWireup="false" Inherits="CMT.callinload" %>
<%@ Register TagPrefix="uc1" TagName="left" Src="Left.ascx" %>
<%@ Register TagPrefix="uc1" TagName="bottom" Src="Bottom.ascx" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="Top.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Crude Marketing & Transportation, Inc.</title>
		<script type="text/javascript" src="CMT.js"></script>
		<csscriptdict>
			<script type="text/javascript" src="CSScriptLib.js"></script>
		</csscriptdict>
		<csactiondict>
			<script type="text/javascript"><!--
var preloadFlag = false;
function preloadImages() {

	var a = document.getElementById( 'txtOperatorName' );
	
	if ( a )
		a.focus( );

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
.text2 { FONT-SIZE: 9pt; COLOR: #333333; FONT-FAMILY: Arial, Helvetica, sans-serif }
.textcontact { FONT-SIZE: 9pt; COLOR: #41526a; FONT-FAMILY: Arial, Helvetica, sans-serif }
.textlegal { FONT-SIZE: 7pt; COLOR: #9ca1b4; FONT-FAMILY: Arial, Helvetica, sans-serif }
A:link { COLOR: #9ca1b4; TEXT-DECORATION: none }
A:active { COLOR: #9ca1b4; TEXT-DECORATION: none }
A:visited { COLOR: #9ca1b4; TEXT-DECORATION: none }
A:hover { COLOR: #ffcc66; TEXT-DECORATION: none }
</STYLE>
	</HEAD>
	<body onload="preloadImages();" background="graphics/back.gif">
		<form id="frmCallInLoad" runat="server" method="post">
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
																					<td class="texttitle">
																						REQUEST LOAD PICKUP</td>
																				</tr>
																				<tr>
																					<td class="textsubtitle"><strong>Please enter information and click Submit for your 
																							load request.</strong></td>
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
													<br>
													<asp:Panel ID="pnlContent" Visible="False" Runat="server">
														<TABLE id="Table15" cellSpacing="3" cellPadding="3" width="506" border="0">
															<TR align="left">
																<TD width="17"></TD>
																<TD colSpan="3">
																	<asp:ValidationSummary id="vsCallInLoad" runat="server" HeaderText="Please fix the following errors"></asp:ValidationSummary></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Operator Name</TD>
																<TD vAlign="top" bgColor="#ffffff">
																	<asp:TextBox id="txtOperatorName" runat="server" Width="200px"></asp:TextBox>&nbsp;
																	<asp:RequiredFieldValidator id="rfvOperatorName" runat="server" ControlToValidate="txtOperatorName" Display="Dynamic"
																		ErrorMessage="Operator Name is Required">*</asp:RequiredFieldValidator></TD>
																<TD></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Owner Number</TD>
																<TD vAlign="top" bgColor="#ffffff">
																	<asp:TextBox id="txtOwnerNumber" runat="server" Width="200px"></asp:TextBox>&nbsp;
																	<asp:RequiredFieldValidator id="rfvOwnerNumber" runat="server" ControlToValidate="txtOwnerNumber" Display="Dynamic"
																		ErrorMessage="Owner Number is Required">*</asp:RequiredFieldValidator></TD>
																<TD></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Lease Name</TD>
																<TD vAlign="top" bgColor="#ffffff" colSpan="2">
																	<asp:TextBox id="txtLeaseName" runat="server" Width="200px"></asp:TextBox>&nbsp;
																	<asp:RequiredFieldValidator id="rfvLeaseName" runat="server" ControlToValidate="txtLeaseName" Display="Dynamic"
																		ErrorMessage="Lease Name is Required">*</asp:RequiredFieldValidator></TD>
																<TD vAlign="top" bgColor="#ffffff"></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">County</TD>
																<TD vAlign="top" bgColor="#ffffff" colSpan="2">
																	<asp:TextBox id="txtCounty" runat="server" Width="200px"></asp:TextBox>&nbsp;
																	<asp:RequiredFieldValidator id="rfvCounty" runat="server" ControlToValidate="txtCounty" Display="Dynamic" ErrorMessage="County is Required">*</asp:RequiredFieldValidator></TD>
																<TD vAlign="top" bgColor="#ffffff" colSpan="2"></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Contact Name</TD>
																<TD vAlign="top" bgColor="#ffffff">
																	<asp:TextBox id="txtContactName" runat="server" Width="200px"></asp:TextBox>&nbsp;
																	<asp:RequiredFieldValidator id="rfvContactName" runat="server" ControlToValidate="txtContactName" Display="Dynamic"
																		ErrorMessage="Contact Name is Required">*</asp:RequiredFieldValidator></TD>
																<TD vAlign="top" bgColor="#ffffff"></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Contact Phone</TD>
																<TD vAlign="top" bgColor="#ffffff" colSpan="2">
																	<asp:TextBox id="txtContactPhone" runat="server" Width="200px"></asp:TextBox>&nbsp;
																	<asp:RequiredFieldValidator id="rfvContactPhone" runat="server" ControlToValidate="txtContactPhone" Display="Dynamic"
																		ErrorMessage="Contact Phone is Required">*</asp:RequiredFieldValidator></TD>
																<TD vAlign="top" bgColor="#ffffff"></TD>
															</TR>
															<TR align="left">
																<TD width="17" height="24"></TD>
																<TD vAlign="top" bgColor="#ffffff" height="24">Contact Email</TD>
																<TD vAlign="top" bgColor="#ffffff" colSpan="2" height="24">
																	<asp:TextBox id="txtContactEmail" runat="server" Width="200px"></asp:TextBox>&nbsp;
																	<asp:RegularExpressionValidator id="revContactEmail" runat="server" ControlToValidate="txtContactEmail" ErrorMessage="Contact Email Format must be yourname@somedomain.com"
																		ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></TD>
																<TD vAlign="top" bgColor="#ffffff" height="24"></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Number of Barrels</TD>
																<TD vAlign="top" bgColor="#ffffff">
																	<asp:TextBox id="txtNumberOfBarrels" runat="server" Width="90px"></asp:TextBox>&nbsp;
																	<asp:RequiredFieldValidator id="rfvNumberOfBarrels" runat="server" ControlToValidate="txtNumberOfBarrels" Display="Dynamic"
																		ErrorMessage="Number of Barrels is Required">*</asp:RequiredFieldValidator></TD>
																<TD vAlign="top" bgColor="#ffffff"></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Desired Pickup Date?</TD>
																<TD vAlign="top" bgColor="#ffffff">
																	<asp:textbox id="txtPickupDate" runat="server" Width="70px"></asp:textbox><A onclick="window.dateField=document.frmCallInLoad.txtPickupDate;calendar=window.open('calendar.htm','cal','WIDTH=200,HEIGHT=250');"
																		href="#"><IMG height="16" src="graphics/calendar.gif" width="16" border="0"></A></TD>
																<TD vAlign="top" bgColor="#ffffff"></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff" height="20">Is This a New Lease?
																</TD>
																<TD vAlign="top" bgColor="#ffffff" colSpan="2" height="20">
																	<asp:RadioButtonList id="rblNewLease" Runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
																		<asp:ListItem Value="1">Yes</asp:ListItem>
																		<asp:ListItem Value="0">No</asp:ListItem>
																	</asp:RadioButtonList>
																	<asp:RequiredFieldValidator id="rfvNewLease" runat="server" ControlToValidate="rblNewLease" Display="Dynamic"
																		ErrorMessage="Must Select a New Lease Option">*</asp:RequiredFieldValidator></TD>
															</TR>
															<asp:Panel id="pnlDirections" Runat="server" Visible="False">
																<TR align="left">
																	<TD width="17"></TD>
																	<TD vAlign="top" bgColor="#ffffff">Directions to the New Lease</TD>
																	<TD vAlign="top" bgColor="#ffffff" colSpan="2">
																		<asp:TextBox id="txtDirections" runat="server" Width="205px" TextMode="MultiLine" Height="79px"></asp:TextBox>&nbsp;
																		<asp:RequiredFieldValidator id="rfvDirections" runat="server" ControlToValidate="txtDirections" Display="Dynamic"
																			ErrorMessage="Directions are Required">*</asp:RequiredFieldValidator></TD>
																</TR>
															</asp:Panel>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Is It a Split Load?</TD>
																<TD vAlign="top" bgColor="#ffffff" colSpan="2">
																	<asp:RadioButtonList id="rblSplitLoad" Runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
																		<asp:ListItem Value="1">Yes</asp:ListItem>
																		<asp:ListItem Value="0" Selected="True">No</asp:ListItem>
																	</asp:RadioButtonList>
																	<asp:RequiredFieldValidator id="rfvSplitLoad" runat="server" ControlToValidate="rblSplitLoad" Display="Dynamic"
																		ErrorMessage="Must Select a Split Load Option">*</asp:RequiredFieldValidator></TD>
															</TR>
															<asp:Panel id="pnlSplitLoad" Runat="server" Visible="False">
																<TR align="left">
																	<TD width="17"></TD>
																	<TD vAlign="top" bgColor="#ffffff">Split with which Lease?</TD>
																	<TD vAlign="top" bgColor="#ffffff" colSpan="2">
																		<asp:TextBox id="txtSplitWhichLease" runat="server" Width="200px"></asp:TextBox>&nbsp;
																		<asp:RequiredFieldValidator id="rfvSplitWhichLease" runat="server" ControlToValidate="txtSplitWhichLease" Display="Dynamic"
																			ErrorMessage="Split Lease is Required">*</asp:RequiredFieldValidator></TD>
																</TR>
															</asp:Panel>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Tank #</TD>
																<TD vAlign="top" bgColor="#ffffff">
																	<asp:TextBox id="txtTankNum" runat="server" Width="90px"></asp:TextBox>&nbsp;
																	<asp:RequiredFieldValidator id="rfvTankNum" runat="server" ControlToValidate="txtTankNum" Display="Dynamic"
																		ErrorMessage="Tank # is Required">*</asp:RequiredFieldValidator></TD>
																<TD vAlign="top" bgColor="#ffffff"></TD>
															</TR>
															<TR align="left">
																<TD width="17"></TD>
																<TD vAlign="top" bgColor="#ffffff">Comments</TD>
																<TD vAlign="top" bgColor="#ffffff" colSpan="2">
																	<asp:TextBox id="txtComments" runat="server" Width="205px" TextMode="MultiLine" Height="79px"></asp:TextBox></TD>
															</TR>
															<TR>
																<TD vAlign="top" align="center" bgColor="#ffffff" colSpan="4" height="16">
																	<asp:Button id="cmdSubmit" runat="server" Text="Submit"></asp:Button>&nbsp;<INPUT type="reset" value="Clear">
																</TD>
															</TR>
														</TABLE>
													</asp:Panel>
													<asp:Panel ID="pnlThank" Visible="False" Runat="server">
														<TABLE id="Table16" cellSpacing="3" cellPadding="3" width="506" border="0">
															<tr>
																<td>Thank you for your request. Your load will be processed.</td>
															</tr>
														</TABLE>
													</asp:Panel>
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
				<div style="DISPLAY: none">
					<table id="tblSend" runat="server">
						<thead>
							<tr>
								<td colspan="2">Dear CMT Scheduler,<br>
									Please schedule to pickup load per the following instructions
								</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Operator Name</td>
								<td><%= txtOperatorName.Text %></td>
							</tr>
							<tr>
								<td>Owner Number</td>
								<td><%= txtOwnerNumber.Text %></td>
							</tr>
							<tr>
								<td>Lease Name</td>
								<td><%= txtLeaseName.Text %></td>
							</tr>
							<tr>
								<td>County</td>
								<td><%= txtCounty.Text %></td>
							</tr>
							<tr>
								<td>Contact Name</td>
								<td><%= txtContactName.Text %></td>
							</tr>
							<tr>
								<td>Contact Phone</td>
								<td><%= txtContactPhone.Text %></td>
							</tr>
							<tr>
								<td>Contact Email</td>
								<td><%= txtContactEmail.Text %></td>
							</tr>
							<tr>
								<td>Number of Barrels</td>
								<td><%= NumberBarrels %></td>
							</tr>
							<tr>
								<td>Pickup Date</td>
								<td><%= txtPickupDate.Text %></td>
							</tr>
							<tr>
								<td>Is New Lease</td>
								<td><%= IsNewLease %></td>
							</tr>
							<tr>
								<td>Directions</td>
								<td><%= txtDirections.Text %></td>
							</tr>
							<tr>
								<td>Is Split Load</td>
								<td><%= IsSplitLoad %></td>
							</tr>
							<tr>
								<td>Split Lease Name</td>
								<td><%= txtSplitWhichLease.Text %></td>
							</tr>
							<tr>
								<td>Tank #</td>
								<td><%= txtTankNum.Text %></td>
							</tr>
							<tr>
								<td>Comments</td>
								<td><%= txtComments.Text %></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</form>
		<script type="text/javascript">
		DoHeight( );
		</script>
	</body>
</HTML>
