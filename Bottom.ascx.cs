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
	///		Summary description for Bottom.
	/// </summary>
	public class Bottom : System.Web.UI.UserControl
	{

		private void Page_Load(object sender, System.EventArgs e)
		{
			
			if ( ! this.IsPostBack )
			{
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

	}

}
