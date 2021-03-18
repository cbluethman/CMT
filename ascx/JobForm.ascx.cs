namespace CMT.ascx
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using CSI.Utilities;

	/// <summary>
	///		Summary description for JobForm.
	/// </summary>
	public class JobForm : System.Web.UI.UserControl
	{
		protected System.Web.UI.WebControls.ValidationSummary vsJobForm;
		protected System.Web.UI.WebControls.TextBox txtFirstName;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvFirstName;
		protected System.Web.UI.WebControls.TextBox txtMiddleName;
		protected System.Web.UI.WebControls.TextBox txtLastName;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvLastName;
		protected System.Web.UI.WebControls.TextBox txtAddress1;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvAddress1;
		protected System.Web.UI.WebControls.TextBox txtAddress2;
		protected System.Web.UI.WebControls.TextBox txtCity;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvCity;
		protected System.Web.UI.WebControls.DropDownList ddlState;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvState;
		protected System.Web.UI.WebControls.TextBox txtZip;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvZip;
		protected System.Web.UI.WebControls.TextBox txtPhoneHome;
		protected System.Web.UI.WebControls.RequiredFieldValidator rfvPhoneHome;
		protected System.Web.UI.WebControls.TextBox txtPhoneOther;
		protected System.Web.UI.WebControls.TextBox txtUserID;
		protected System.Web.UI.WebControls.RegularExpressionValidator revUserID;
		protected System.Web.UI.WebControls.RadioButtonList rblClassCDL;
		protected System.Web.UI.WebControls.TextBox txtDLNum;
		protected System.Web.UI.WebControls.TextBox txtDLExpireDate;
		protected System.Web.UI.WebControls.DropDownList ddlStateIssue;
		protected System.Web.UI.WebControls.TextBox txtTankerYears;
		protected System.Web.UI.WebControls.RadioButtonList rblHazmatEndorsed;
		protected System.Web.UI.WebControls.RadioButtonList rblKnowledge;
		protected System.Web.UI.WebControls.TextBox txtNumMoving;
		protected System.Web.UI.WebControls.TextBox txtNumPrevent;
		protected System.Web.UI.WebControls.RadioButtonList rblDUI;
		protected System.Web.UI.WebControls.TextBox txtYesDUIYear;
		protected System.Web.UI.WebControls.RadioButtonList rblSuspend;
		protected System.Web.UI.WebControls.RadioButtonList rblEmployed;
		protected System.Web.UI.WebControls.TextBox txtEmployer;
		protected System.Web.UI.WebControls.TextBox txtOther;
		protected System.Web.UI.WebControls.Panel pnl01;
		protected System.Web.UI.HtmlControls.HtmlTable tblApply;

		private void Page_Load(object sender, System.EventArgs e)
		{
			
			if ( ! this.IsPostBack )
			{
				Utilities.SetTextBoxColor( this );

				stateData sd = new stateData( );
				
				sd.addState( ddlState );
				sd.addState( ddlStateIssue );

				txtZip.Attributes.Add( "onkeypress", "return maskKeyPress(event)" );
				txtZip.Attributes.Add( "onchange", "maskChange(event)" );
				txtZip.Attributes.Add( "onpaste", "return maskPaste(event)" );
				txtZip.Attributes.Add( "reValidChars", @"\d|-" );
				txtZip.Attributes.Add( "reValidString", @"(^\d{5}$)|(^\d{5}-\d{4}$)" );
				txtZip.Attributes.Add( "size", "10" );
				txtZip.Attributes.Add( "maxlength", "10" );
				txtZip.Attributes.Add( "pattern", "zip" );

				txtPhoneHome.Attributes.Add( "onkeypress", "return maskKeyPress(event)" );
				txtPhoneHome.Attributes.Add( "onchange", "maskChange(event)" );
				txtPhoneHome.Attributes.Add( "onpaste", "return maskPaste(event)" );
				txtPhoneHome.Attributes.Add( "reValidChars", @"\d|-" );
				txtPhoneHome.Attributes.Add( "reValidString", @"^\d{3}-\d{3}-\d{4}$" );
				txtPhoneHome.Attributes.Add( "size", "12" );
				txtPhoneHome.Attributes.Add( "maxlength", "12" );
				txtPhoneHome.Attributes.Add( "pattern", "phone" );

				txtPhoneOther.Attributes.Add( "onkeypress", "return maskKeyPress(event)" );
				txtPhoneOther.Attributes.Add( "onchange", "maskChange(event)" );
				txtPhoneOther.Attributes.Add( "onpaste", "return maskPaste(event)" );
				txtPhoneOther.Attributes.Add( "reValidChars", @"\d|-" );
				txtPhoneOther.Attributes.Add( "reValidString", @"^\d{3}-\d{3}-\d{4}$" );
				txtPhoneOther.Attributes.Add( "size", "12" );
				txtPhoneOther.Attributes.Add( "maxlength", "12" );
				txtPhoneOther.Attributes.Add( "pattern", "phone" );
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
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		public System.Web.UI.Control Panel01
		{
			get
			{
				return ( pnl01 );
			}
		}

		public HtmlTable TableApply
		{
			get
			{
				return ( tblApply );
			}
		}

	}

}
