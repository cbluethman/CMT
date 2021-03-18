<%@ Control Language="c#" AutoEventWireup="false" Codebehind="Left.ascx.cs" Inherits="CMT.Left" TargetSchema="http://schemas.microsoft.com/intellisense/ie5"%>
<table cellSpacing="0" cellPadding="0" width="244" border="0">
	<tr>
		<td vAlign="top" align="right" bgColor="#979caf">
			<table cellSpacing="0" cellPadding="0" border="0">
				<tr>
					<td><IMG height="11" alt="" src="graphics/clear.gif" width="244" border="0"></td>
				</tr>
				<tr>
					<td vAlign="top" align="right" background="graphics/guageback.gif">
					</td>
				</tr>
				<tr>
					<td><A onmouseover="changeImages('price','graphics/priceon.gif');return true" onmouseout="changeImages('price','graphics/priceoff.gif');return true"
							href="pricing.aspx"><IMG id="price" alt="Pricing Information" src="graphics/priceoff.gif" width="244" border="0"></A></td>
				</tr>
				<tr>
					<td><A onmouseover="changeImages('callin','graphics/callinon.gif');return true" onmouseout="changeImages('callin','graphics/callinoff.gif');return true"
							href="callinload.aspx"><IMG id="callin" alt="Callin Load" src="graphics/callinoff.gif" width="244" border="0"></A></td>
				</tr>
				<tr>
					<td><A onmouseover="changeImages('about','graphics/abouton.gif');return true" onmouseout="changeImages('about','graphics/aboutoff.gif');return true"
							href="about.aspx"><IMG id="about" alt="About CMT, Inc." src="graphics/aboutoff.gif" width="244" border="0"></A></td>
				</tr>
				<tr>
					<td><A onmouseover="changeImages('royalty','graphics/royaltyon.gif');return true" onmouseout="changeImages('royalty','graphics/royaltyoff.gif');return true"
							href="royalty.aspx"><IMG id="royalty" alt="Royalty Questions" src="graphics/royaltyoff.gif" width="244" border="0"></A>
					</td>
				</tr>
				<tr>
					<td><A onmouseover="changeImages('job','graphics/jobon.gif');return true" onmouseout="changeImages('job','graphics/joboff.gif');return true"
							href="job.aspx"><IMG id="job" alt="Jobs" src="graphics/joboff.gif" width="244" border="0"></A>
					</td>
				</tr>
				<tr>
					<td><A onmouseover="changeImages('disclaimer','graphics/disclaimeron.gif');return true"
							onmouseout="changeImages('disclaimer','graphics/disclaimeroff.gif');return true"
							href="disclaimer.aspx"><IMG id="disclaimer" alt="Disclaimer" src="graphics/disclaimeroff.gif" width="244" border="0"></A></td>
				</tr>
				<tr>
					<td><A onmouseover="changeImages('barrel','graphics/barrelon.gif');return true" onmouseout="changeImages('barrel','graphics/barreloff.gif');return true"
							href="barrel.aspx"><IMG id="barrel" alt="Barrel Adjustment" src="graphics/barreloff.gif" width="244" border="0"></A></td>
				</tr>
				<tr id="trHeight">
					<td></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
