using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.IO;
using System.Web.UI;
using System.Web.Mail;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Text.RegularExpressions;
using CSI.Utilities;

namespace CMT
{
    public class callinload : CMTWebBasePage
	{
		protected System.Web.UI.WebControls.ValidationSummary vsCallInLoad;
		protected System.Web.UI.WebControls.TextBox txtOperatorName;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvOperatorName;
		protected System.Web.UI.WebControls.TextBox txtLeaseName;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvLeaseName;
		protected System.Web.UI.WebControls.TextBox txtCounty;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvCounty;
		protected System.Web.UI.WebControls.TextBox txtContactName;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvContactName;
		protected System.Web.UI.WebControls.TextBox txtContactPhone;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvContactPhone;
		protected System.Web.UI.WebControls.TextBox txtContactEmail;
		protected System.Web.UI.WebControls.RegularExpressionValidator revContactEmail;
		protected System.Web.UI.WebControls.TextBox txtNumberOfBarrels;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvNumberOfBarrels;
		protected System.Web.UI.WebControls.TextBox txtPickupDate;
		protected System.Web.UI.WebControls.RadioButtonList rblNewLease;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvNewLease;
		protected System.Web.UI.WebControls.TextBox txtDirections;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvDirections;
		protected System.Web.UI.WebControls.Panel pnlDirections;
		protected System.Web.UI.WebControls.RadioButtonList rblSplitLoad;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvSplitLoad;
		protected System.Web.UI.WebControls.TextBox txtSplitWhichLease;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvSplitWhichLease;
		protected System.Web.UI.WebControls.Panel pnlSplitLoad;
		protected System.Web.UI.WebControls.TextBox txtTankNum;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvTankNum;
		protected System.Web.UI.WebControls.TextBox txtComments;
		protected System.Web.UI.WebControls.Button cmdSubmit;
		protected System.Web.UI.WebControls.Panel pnlContent;
		protected System.Web.UI.WebControls.Panel pnlThank;
		protected System.Web.UI.HtmlControls.HtmlTable tblSend;
		protected System.Web.UI.WebControls.TextBox txtOwnerNumber;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvOwnerNumber;
		private String strNumberBarrels;
        
		private void Page_Load(object sender, System.EventArgs e)
		{

			if ( ! this.IsPostBack )
			{
				Utilities.SetTextBoxColor( this );

				tblSend.Attributes.Add( "rules", "all" );
				tblSend.Attributes.Add( "border", "1" );
				tblSend.Attributes.Add( "bordercolor", "#3366CC" );
				tblSend.Attributes.Add( "cellspacing", "0" );
				tblSend.Attributes.Add( "cellpadding", "4" );

				pnlContent.Visible = true;
			}
			else
			{
				pnlDirections.Visible = ( "1" == rblNewLease.SelectedValue ) ? true : false;
				pnlSplitLoad.Visible = ( "1" == rblSplitLoad.SelectedValue ) ? true : false;
			}

		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.cmdSubmit.Click += new System.EventHandler(this.cmdSubmit_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void cmdSubmit_Click(object sender, System.EventArgs e)
		{
			
			if ( this.IsValid )
			{
				strNumberBarrels = txtNumberOfBarrels.Text;
				
				// Replace any character other than 0-9 with String.Empty
				strNumberBarrels = Regex.Replace( strNumberBarrels, @"[^0-9]", String.Empty );

				if ( String.Empty == strNumberBarrels )
				{
					// if strNumberBarrels is blank, make it 0
					strNumberBarrels = "0";
				}

				// gets rid of strings like 00, 09, 000
				strNumberBarrels = Convert.ToInt32( strNumberBarrels ).ToString( );

				Int32 rc = db.addCallInLoad( txtOperatorName.Text,
					txtLeaseName.Text,
					txtCounty.Text,
					txtContactName.Text,
					txtContactPhone.Text,
					txtContactEmail.Text,
					strNumberBarrels,
					txtPickupDate.Text,
					rblNewLease.SelectedValue,
					txtDirections.Text,
					rblSplitLoad.SelectedValue,
					txtSplitWhichLease.Text,
					txtTankNum.Text,
					txtComments.Text,
					txtOwnerNumber.Text );

				String strEmail = ConfigurationSettings.AppSettings[ "EmailCallLoad" ];
				
				MailMessage mm1 = new MailMessage( );

				mm1.From = ( String.Empty == txtContactEmail.Text ) ? "no-reply@" + WebSite : txtContactEmail.Text;
				mm1.To = strEmail;
				mm1.Subject = "Load Pickup Request Received";
				mm1.Body = Utilities.RenderTable( tblSend );
				mm1.BodyFormat = MailFormat.Html;

				Utilities.SendMail( mm1, this.Response );
				pnlContent.Visible = false;
				pnlThank.Visible = true;
			}  //  if - valid

		}

		public String NumberBarrels
		{
			get
			{
				return ( strNumberBarrels );
			}
		}

		public String IsNewLease
		{
			get
			{
				return ( ( "1" == rblNewLease.SelectedValue ) ? "Yes" : "No" );
			}
		}

		public String IsSplitLoad
		{
			get
			{
				return ( ( "1" == rblSplitLoad.SelectedValue ) ? "Yes" : "No" );
			}
		}

	}

}
