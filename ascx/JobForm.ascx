<%@ Control Language="c#" AutoEventWireup="false" Codebehind="JobForm.ascx.cs" Inherits="CMT.ascx.JobForm" TargetSchema="http://schemas.microsoft.com/intellisense/ie5"%>
<asp:Panel ID="pnl01" Runat="server" Visible="False">
	<TABLE>
		<TR>
			<TD colSpan="2">
				<asp:ValidationSummary id="vsJobForm" Runat="server" HeaderText="Please fix the following errors:"></asp:ValidationSummary></TD>
		</TR>
		<TR>
			<TD class="text">First Name*</TD>
			<TD>
				<asp:TextBox id="txtFirstName" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator id="rfvFirstName" runat="server" ControlToValidate="txtFirstName" Display="Dynamic"
					ErrorMessage="First Name is Required">*</asp:RequiredFieldValidator></TD>
		</TR>
		<TR>
			<TD class="text">Middle Name</TD>
			<TD>
				<asp:TextBox id="txtMiddleName" runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD class="text">Last Name*</TD>
			<TD>
				<asp:TextBox id="txtLastName" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator id="rfvLastName" runat="server" ControlToValidate="txtLastName" Display="Dynamic"
					ErrorMessage="Last Name is Required">*</asp:RequiredFieldValidator></TD>
		</TR>
		<TR>
			<TD class="text">Address1*</TD>
			<TD>
				<asp:TextBox id="txtAddress1" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator id="rfvAddress1" runat="server" ControlToValidate="txtAddress1" Display="Dynamic"
					ErrorMessage="Address1 is Required">*</asp:RequiredFieldValidator></TD>
		</TR>
		<TR>
			<TD class="text">Address2</TD>
			<TD>
				<asp:TextBox id="txtAddress2" runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD class="text">City*</TD>
			<TD>
				<asp:TextBox id="txtCity" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator id="rfvCity" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City is Required">*</asp:RequiredFieldValidator></TD>
		</TR>
		<TR>
			<TD class="text">State/Province*</TD>
			<TD>
				<asp:DropDownList id="ddlState" runat="server"></asp:DropDownList>
				<asp:RequiredFieldValidator id="rfvState" runat="server" ControlToValidate="ddlState" Display="Dynamic" ErrorMessage="State is Required"
					InitialValue="">*</asp:RequiredFieldValidator></TD>
		</TR>
		<TR>
			<TD class="text">Zip / Postal Code*</TD>
			<TD>
				<asp:TextBox id="txtZip" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator id="rfvZip" runat="server" ControlToValidate="txtZip" Display="Dynamic" ErrorMessage="Zip is Required">*</asp:RequiredFieldValidator></TD>
		</TR>
		<TR>
			<TD class="text">Phone (Home)*</TD>
			<TD>
				<asp:TextBox id="txtPhoneHome" runat="server"></asp:TextBox>
				<asp:RequiredFieldValidator id="rfvPhoneHome" runat="server" ControlToValidate="txtPhoneHome" Display="Dynamic"
					ErrorMessage="Home Phone is Required">*</asp:RequiredFieldValidator></TD>
		</TR>
		<TR>
			<TD class="text">Phone (Other)</TD>
			<TD>
				<asp:TextBox id="txtPhoneOther" runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD class="text" noWrap>Email Address</TD>
			<TD>
				<asp:TextBox id="txtUserID" runat="server"></asp:TextBox>
				<asp:RegularExpressionValidator id="revUserID" runat="server" ControlToValidate="txtUserID" Display="Dynamic" ErrorMessage="*"
					ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email must be in yourname@domain.com Format</asp:RegularExpressionValidator></TD>
		</TR>
		<TR>
			<TD>What class CDL do you have?</TD>
			<TD>
				<asp:RadioButtonList id="rblClassCDL" Runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Value="Class A">Class A</asp:ListItem>
					<asp:ListItem Value="Class B">Class B</asp:ListItem>
					<asp:ListItem Value="None">None</asp:ListItem>
				</asp:RadioButtonList></TD>
		</TR>
		<TR>
			<TD>DL #</TD>
			<TD>
				<asp:TextBox id="txtDLNum" Runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD>DL Expiration Date</TD>
			<TD>
				<asp:TextBox id="txtDLExpireDate" Runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD>State of Issue</TD>
			<TD>
				<asp:DropDownList id="ddlStateIssue" runat="server"></asp:DropDownList></TD>
		</TR>
		<TR>
			<TD height="25"></TD>
		</TR>
		<TR>
			<TD align="center" colSpan="2">Driving Experience</TD>
		</TR>
		<TR>
			<TD>1. How many years of tanker experience do you have?</TD>
			<TD>
				<asp:TextBox id="txtTankerYears" Runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD>2. Are you HAZMAT Endorsed?</TD>
			<TD>
				<asp:RadioButtonList id="rblHazmatEndorsed" Runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Value="Yes">Yes</asp:ListItem>
					<asp:ListItem Value="No">No</asp:ListItem>
				</asp:RadioButtonList></TD>
		</TR>
		<TR>
			<TD>3. Do you have working knowledge and experience with measuring/gauging tanks?</TD>
			<TD>
				<asp:RadioButtonList id="rblKnowledge" Runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Value="Yes">Yes</asp:ListItem>
					<asp:ListItem Value="No">No</asp:ListItem>
				</asp:RadioButtonList></TD>
		</TR>
		<TR>
			<TD height="25"></TD>
		</TR>
		<TR>
			<TD align="center" colSpan="2">Driving History</TD>
		</TR>
		<TR>
			<TD>4. Number of moving violations in the last 3 years</TD>
			<TD>
				<asp:TextBox id="txtNumMoving" Runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD>5. Number of preventable accidents in the last 3 years</TD>
			<TD>
				<asp:TextBox id="txtNumPrevent" Runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD>6. Have you ever received a DUI or DWI?</TD>
			<TD>
				<asp:RadioButtonList id="rblDUI" Runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Value="Yes">Yes</asp:ListItem>
					<asp:ListItem Value="No">No</asp:ListItem>
				</asp:RadioButtonList></TD>
		</TR>
		<TR>
			<TD style="PADDING-LEFT: 50px">If Yes, in what year?</TD>
			<TD>
				<asp:TextBox id="txtYesDUIYear" Runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD>7. Have you ever had your license suspended?</TD>
			<TD>
				<asp:RadioButtonList id="rblSuspend" Runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Value="Yes">Yes</asp:ListItem>
					<asp:ListItem Value="No">No</asp:ListItem>
				</asp:RadioButtonList></TD>
		</TR>
		<TR>
			<TD height="25"></TD>
		</TR>
		<TR>
			<TD align="center" colSpan="2">Employment Information</TD>
		</TR>
		<TR>
			<TD>8. Are you currently employed?</TD>
			<TD>
				<asp:RadioButtonList id="rblEmployed" Runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Value="Yes">Yes</asp:ListItem>
					<asp:ListItem Value="No">No</asp:ListItem>
				</asp:RadioButtonList></TD>
		</TR>
		<TR>
			<TD style="PADDING-LEFT: 50px">If Yes, name of current employer?</TD>
			<TD>
				<asp:TextBox id="txtEmployer" Runat="server"></asp:TextBox></TD>
		</TR>
		<TR>
			<TD height="25"></TD>
		</TR>
		<TR>
			<TD align="center" colSpan="2">Other</TD>
		</TR>
		<TR>
			<TD>9. Are there any specific skills, knowledge, or abilities that you would like 
				to share with us?</TD>
			<TD>
				<asp:TextBox id="txtOther" Runat="server" TextMode="MultiLine" Height="100px"></asp:TextBox></TD>
		</TR>
	</TABLE>
	<DIV style="DISPLAY: none">
		<TABLE id="tblApply" cellSpacing="0" cellPadding="4" rules="all" border="1" runat="server">
			<TR>
				<TD>First Name</TD>
				<TD><%= txtFirstName.Text %></TD>
			</TR>
			<TR>
				<TD>Middle Name</TD>
				<TD><%= txtMiddleName.Text %></TD>
			</TR>
			<TR>
				<TD>Last Name</TD>
				<TD><%= txtLastName.Text %></TD>
			</TR>
			<TR>
				<TD>Address1</TD>
				<TD><%= txtAddress1.Text %></TD>
			</TR>
			<TR>
				<TD>Address2</TD>
				<TD><%= txtAddress2.Text %></TD>
			</TR>
			<TR>
				<TD>City</TD>
				<TD><%= txtCity.Text %></TD>
			</TR>
			<TR>
				<TD>State</TD>
				<TD><%= ddlState.SelectedValue %></TD>
			</TR>
			<TR>
				<TD>Zip</TD>
				<TD><%= txtZip.Text %></TD>
			</TR>
			<TR>
				<TD>Phone (Home)</TD>
				<TD><%= txtPhoneHome.Text %></TD>
			</TR>
			<TR>
				<TD>Phone (Other)</TD>
				<TD><%= txtPhoneOther.Text %></TD>
			</TR>
			<TR>
				<TD>Email</TD>
				<TD><%= txtUserID.Text %></TD>
			</TR>
			<TR>
				<TD>CDL Class</TD>
				<TD><%= rblClassCDL.SelectedValue %></TD>
			</TR>
			<TR>
				<TD>DL #</TD>
				<TD><%= txtDLNum.Text %></TD>
			</TR>
			<TR>
				<TD>DL Expire Date</TD>
				<TD><%= txtDLExpireDate.Text %></TD>
			</TR>
			<TR>
				<TD>State of Issue</TD>
				<TD><%= ddlStateIssue.SelectedValue %></TD>
			</TR>
			<TR>
				<TD align="center" colSpan="2">Driving Experience</TD>
			</TR>
			<TR>
				<TD>Tanker Years Experience</TD>
				<TD><%= txtTankerYears.Text %></TD>
			</TR>
			<TR>
				<TD>HAZMAT Endorsed</TD>
				<TD><%= rblHazmatEndorsed.SelectedValue %></TD>
			</TR>
			<TR>
				<TD>Working Knowledge/Gauging</TD>
				<TD><%= rblKnowledge.SelectedValue %></TD>
			</TR>
			<TR>
				<TD align="center" colSpan="2">Driving History</TD>
			</TR>
			<TR>
				<TD>Moving Violations</TD>
				<TD><%= txtNumMoving.Text %></TD>
			</TR>
			<TR>
				<TD>Preventable Accidents</TD>
				<TD><%= txtNumPrevent.Text %></TD>
			</TR>
			<TR>
				<TD>DUI/DWI</TD>
				<TD><%= rblDUI.SelectedValue %></TD>
			</TR>
			<TR>
				<TD>DUI/DWI Year</TD>
				<TD><%= txtYesDUIYear.Text %></TD>
			</TR>
			<TR>
				<TD>License Suspend</TD>
				<TD><%= rblSuspend.SelectedValue %></TD>
			</TR>
			<TR>
				<TD align="center" colSpan="2">Employment Information</TD>
			</TR>
			<TR>
				<TD>Employed</TD>
				<TD><%= rblEmployed.SelectedValue %></TD>
			</TR>
			<TR>
				<TD>Current Employer</TD>
				<TD><%= txtEmployer.Text %></TD>
			</TR>
			<TR>
				<TD align="center" colSpan="2">Other</TD>
			</TR>
			<TR>
				<TD>Other</TD>
				<TD><%= txtOther.Text %></TD>
			</TR>
		</TABLE>
	</DIV>
</asp:Panel>
