using System;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace CMT.admin
{
	/// <summary>
	/// Summary description for Main.
	/// </summary>
	public class Main : CMTWebBasePage
	{
		private UserLoginInfo loginInfo;
		
		private void Page_Load(object sender, System.EventArgs e)
		{

			if ( Session[ "UserLoginInfo" ] == null ||
				! ( ( UserLoginInfo ) Session[ "UserLoginInfo" ] ).LoggedIn )
			{
				Response.Redirect("~/Default.aspx");
			}

			loginInfo = ( UserLoginInfo ) Session[ "UserLoginInfo" ];
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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion
	}
}
