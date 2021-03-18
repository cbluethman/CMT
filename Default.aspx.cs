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
	/// Summary description for Default.
	/// </summary>
	public class Default : CMTWebBasePage
	{
		private Double dblCurrentPrice = 0.00;
		protected System.Web.UI.HtmlControls.HtmlTable tblContent;
		protected Left ucLeft;
		private String strLastDate;
		
		private void Page_Load(object sender, System.EventArgs e)
		{
			// Oklahoma Sweet is 1
			DataSet ds = db.getLastPrice( 1 );

			if ( ds.Tables[ 0 ].Rows.Count > 0 )
			{
				String str = ds.Tables[ 0 ].Rows[ 0 ][ "Price" ].ToString( );
				strLastDate = ds.Tables[ 0 ].Rows[ 0 ][ "PriceDate" ].ToString( );

				// Oklahoma Sweet could be null, Convert will
				// throw exception unless you do this
				if ( String.Empty != str )
				{
					dblCurrentPrice = Convert.ToDouble( str );
				}

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
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		public String CurrentPrice
		{
			get
			{
				String strTemp = ( 0.00 == dblCurrentPrice ) ?
					"--.--" : dblCurrentPrice.ToString( "c" );
				
				return ( strTemp );
			}
		}

		public String LastDate
		{
			get
			{
				return ( strLastDate );
			}
		}

	}
}
