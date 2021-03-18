using System;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using CSI.Utilities;

namespace CMT.admin
{
	/// <summary>
	/// Summary description for DailyPrice.
	/// </summary>
	public class DailyPrice : CMTWebBasePage
	{
		private UserLoginInfo loginInfo;
		protected System.Web.UI.WebControls.RegularExpressionValidator revPrice;
		protected System.Web.UI.WebControls.Button btnSave;
		protected System.Web.UI.WebControls.DataGrid dgCrudeType;
		protected System.Web.UI.HtmlControls.HtmlImage IMG1;
		protected System.Web.UI.WebControls.Literal lcScript;
		protected System.Web.UI.WebControls.Button btnDelete;
		protected System.Web.UI.WebControls.TextBox txtDate;
		
		private void Page_Load(object sender, System.EventArgs e)
		{
			if ( Session[ "UserLoginInfo" ] == null ||
				! ( ( UserLoginInfo ) Session[ "UserLoginInfo" ] ).LoggedIn )
			{
				Response.Redirect("~/Default.aspx");
			}

			loginInfo = ( UserLoginInfo ) Session[ "UserLoginInfo" ];

			if ( ! Page.IsPostBack )
			{
				DataSet ds = db.getCrudeType( -1 );
				dgCrudeType.DataSource = ds;
				dgCrudeType.DataBind( );
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
			this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
			this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void btnSave_Click(object sender, System.EventArgs e)
		{

			if ( Page.IsValid )
			{

				if ( ! IsValidDate( ) )
				{
					return;
				}

				String strCrudeTypeId;
				TextBox tbPrice;

				foreach ( DataGridItem dgi in dgCrudeType.Items )
				{
					strCrudeTypeId = dgi.Cells[ 0 ].Text;
					tbPrice = ( TextBox ) dgi.FindControl( "txtPrice" );

					if ( String.Empty != tbPrice.Text.Trim( ) )
					{
						db.updateDailyPrice( txtDate.Text,
							Convert.ToInt32( strCrudeTypeId ),
							tbPrice.Text );
					}

				}

			}

		}

		private void btnDelete_Click(object sender, System.EventArgs e)
		{

			if ( ! IsValidDate( ) )
			{
				return;
			}

			db.deleteDailyPrice( txtDate.Text );
		}

		private Boolean IsValidDate( )
		{
			Boolean blnReturn = true;

			try
			{
				Convert.ToDateTime( txtDate.Text );
			}
			catch ( FormatException ee )
			{
				ee.ToString( );
				ASPMessageBox.Show( "Invalid Date!" );
				blnReturn = false;
			}

			return ( blnReturn );
		}

	}
}
