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
	/// Summary description for Admin.
	/// </summary>
	public class Admin : CMTWebBasePage
	{
		protected System.Web.UI.WebControls.TextBox txtUserID;
		protected System.Web.UI.WebControls.TextBox txtPassword;
		protected System.Web.UI.WebControls.Button btnLogin;
		protected System.Web.UI.WebControls.Button btnReset;
		protected System.Web.UI.WebControls.Panel pnlInvalid;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			pnlInvalid.Visible = false;

			if ( Session[ "UserLoginInfo" ] == null || ! ( ( UserLoginInfo ) Session[ "UserLoginInfo" ] ).LoggedIn )
			{
				Session.Clear( );
			}

			if ( ! this.IsPostBack )
			{
				addColor( txtUserID );
				addColor( txtPassword );
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
			this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
			this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void btnLogin_Click(object sender, System.EventArgs e)
		{
			String strUserDefId = "";
			
			if ( db.isLoginValid( txtUserID.Text,
				txtPassword.Text, ref strUserDefId ) )
			{
				UserLoginInfo loginInfo = new UserLoginInfo( txtUserID.Text,
					txtPassword.Text );

				loginInfo.UserDefId = strUserDefId;

				DataSet ds = db.getRole( strUserDefId );

				if ( ds.Tables[ 0 ].Rows.Count > 0 )
				{
					loginInfo.RoleId = ds.Tables[ 0 ].Rows[ 0 ][ "RoleId" ].ToString( );
					loginInfo.RoleName = ds.Tables[ 0 ].Rows[ 0 ][ "Name" ].ToString( );
				}

				Session[ "UserLoginInfo" ] = loginInfo;
				Response.Redirect( "~/admin/Main.aspx", true );
			}
			else
			{
				pnlInvalid.Visible = true;
			}

		}

		private void btnReset_Click(object sender, System.EventArgs e)
		{
			txtUserID.Text = String.Empty;
			txtPassword.Text = String.Empty;
		}
	}
}
