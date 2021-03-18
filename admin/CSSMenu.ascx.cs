namespace CMT
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using System.Collections;
	using CSI.Utilities;

	/// <summary>
	///		Summary description for CSSMenu.
	/// </summary>
	public class CSSMenu : System.Web.UI.UserControl
	{
		protected System.Web.UI.WebControls.Repeater repUL;

		private void Page_Load(object sender, System.EventArgs e)
		{
			ArrayList arMenu = new ArrayList( );

			arMenu.Add( new BindObject( "../Default.aspx", "Home" ) );
			arMenu.Add( new BindObject( "DailyPrice.aspx", "Daily Price" ) );

			repUL.DataSource = arMenu;
			repUL.DataBind( );
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
	}
}
