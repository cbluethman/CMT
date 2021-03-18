using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace CMT
{
	/// <summary>
	/// Summary description for royalty.
	/// </summary>
	public class royalty : CMTWebBasePage
	{
		protected System.Web.UI.WebControls.ImageButton ibtnInterest;
		protected System.Web.UI.WebControls.ImageButton ibtnEstate;
		protected System.Web.UI.WebControls.Panel pnlMain;
		protected System.Web.UI.WebControls.Panel pnlPayment;
		protected System.Web.UI.WebControls.Panel pnlPayment1;
		protected System.Web.UI.WebControls.Panel pnlPayment2;
		protected System.Web.UI.WebControls.Panel pnlPayment3;
		protected System.Web.UI.WebControls.Panel pnlPayment4;
		protected System.Web.UI.WebControls.Panel pnlInterest;
		protected System.Web.UI.WebControls.Panel pnlEstate;
		protected System.Web.UI.WebControls.ImageButton ibtnPayment;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			String strId = ( null == Request.QueryString[ "Id" ] ) ? String.Empty : Request.QueryString[ "Id" ];

			switch ( strId )
			{
				case "payment":
					pnlPayment.Visible = true;
					break;
				case "payment1":
					pnlPayment1.Visible = true;
					break;
				case "payment2":
					pnlPayment2.Visible = true;
					break;
				case "payment3":
					pnlPayment3.Visible = true;
					break;
				case "payment4":
					pnlPayment4.Visible = true;
					break;
				case "interest":
					pnlInterest.Visible = true;
					break;
				case "estate":
					pnlEstate.Visible = true;
					break;
				case "":
					pnlMain.Visible = true;
					break;
				default:
					Response.Redirect( "royalty.aspx", true );
					break;
			}  // switch
			
			if ( ! this.IsPostBack )
			{

			}  // if - postback

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
			this.ibtnPayment.Click += new System.Web.UI.ImageClickEventHandler(this.ibtnPayment_Click);
			this.ibtnInterest.Click += new System.Web.UI.ImageClickEventHandler(this.ibtnInterest_Click);
			this.ibtnEstate.Click += new System.Web.UI.ImageClickEventHandler(this.ibtnEstate_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void ibtnPayment_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect( "~/Royalty.aspx?Id=payment", true );
		}

		private void ibtnInterest_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect( "~/Royalty.aspx?Id=interest", true );
		}

		private void ibtnEstate_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect( "~/Royalty.aspx?Id=estate", true );		
		}

	}  // class

}  // namespace
