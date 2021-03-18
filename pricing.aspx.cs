using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace CMT
{
	/// <summary>
	/// Summary description for pricing.
	/// </summary>
	public class pricing : CMTWebBasePage
	{
		protected System.Web.UI.WebControls.PlaceHolder phAvgPrice;
		protected System.Web.UI.WebControls.DropDownList ddlYearMonth;
		protected System.Web.UI.WebControls.PlaceHolder phPrice;
		protected String strMonth, strYear;
		protected System.Web.UI.HtmlControls.HtmlTable tblContent;
		protected String[] arMonths = new String[] { "January", "February", "March", "April", "May",
			 "June", "July", "August", "September", "October", "November", "December" };
	
		private void Page_Load(object sender, System.EventArgs e)
		{

			if ( ! this.IsPostBack )
			{
				ddlYearMonth.DataSource = db.getYearMonthList( );
				ddlYearMonth.DataValueField = "YearMonth";
				ddlYearMonth.DataBind( );

				foreach ( ListItem li in ddlYearMonth.Items )
				{
					strMonth = arMonths[ Convert.ToInt32( li.Value.Substring( 4 ) ) - 1 ];
					strYear = li.Value.Substring( 0, 4 );
					li.Text = strMonth + ", " + strYear;
				}

				// Select the last one
				ddlYearMonth.SelectedIndex = ddlYearMonth.Items.Count - 1;
			}

			strMonth = ddlYearMonth.SelectedValue.Substring( 4 );
			strYear = ddlYearMonth.SelectedValue.Substring( 0, 4 );
		
			phPrice.Controls.Add( DoWeek( 1 ) );
			phPrice.Controls.Add( DoWeek( 2 ) );
			phPrice.Controls.Add( DoWeek( 3 ) );
			phPrice.Controls.Add( DoWeek( 4 ) );
			phPrice.Controls.Add( DoWeek( 5 ) );

			DataGrid dg = new DataGrid( );
			DataView dv = db.getAvgDailyPrice( strMonth, strYear );
			BoundColumn bc1 = new BoundColumn( );
			BoundColumn bc2 = new BoundColumn( );
			
			dg.EnableViewState = false;
			bc1.DataField = "Description";
			bc2.DataField = "AvgPrice";
			bc2.ItemStyle.HorizontalAlign =
			bc2.HeaderStyle.HorizontalAlign = HorizontalAlign.Center;
			bc2.HeaderText = "Average EDQ";
			bc2.HeaderStyle.Font.Bold = true;
			dg.Width = Unit.Pixel( 470 );
			dg.GridLines = GridLines.Both;
			dg.BorderColor = Color.White;
			dg.AutoGenerateColumns = false;
			dg.HeaderStyle.BackColor = ColorTranslator.FromHtml( "#979caf" );
			dg.BackColor = ColorTranslator.FromHtml( "#ddddee" );
			dg.AlternatingItemStyle.BackColor = ColorTranslator.FromHtml( "#eeeeff" );
			dg.Columns.Add( bc1 );
			dg.Columns.Add( bc2 );
			dg.CssClass = "tabletext";
			dg.DataSource = dv;
			dg.DataBind( );

			phAvgPrice.Controls.Add( dg );
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

		private DataGrid DoWeek( Int32 intWeek )
		{
			DataGrid dg = new DataGrid( );
			DataSet ds = db.getCrudeType( -1 );
			BoundColumn bc = new BoundColumn( );
			TemplateColumn tc = new TemplateColumn( );

			dg.EnableViewState = false;
			bc.DataField = "Description";
			bc.HeaderText = "DATE";
			bc.HeaderStyle.Font.Bold = true;
			bc.HeaderStyle.HorizontalAlign = HorizontalAlign.Left;
			dg.GridLines = GridLines.Both;
			dg.Width = Unit.Pixel( 470 );
			dg.BorderColor = Color.White;
			dg.AutoGenerateColumns = false;
			dg.HeaderStyle.BackColor = ColorTranslator.FromHtml( "#979caf" );
			dg.HeaderStyle.HorizontalAlign = HorizontalAlign.Left;
			dg.BackColor = ColorTranslator.FromHtml( "#ddddee" );
			dg.AlternatingItemStyle.BackColor = ColorTranslator.FromHtml( "#eeeeff" );
			dg.Columns.Add( bc );

			GridITemplate git = new GridITemplate( true,
				intWeek,
				strMonth,
				strYear );

			tc.HeaderTemplate = git;
			tc.ItemTemplate = new GridITemplate( false,
				intWeek,
				strMonth,
				strYear );
			dg.Columns.Add( tc );
			dg.CssClass = "tabletext";
			dg.DataSource = ds;
			dg.DataBind( );
			
			if ( dg.Visible = git.IsData )
			{
				phPrice.Controls.Add( new LiteralControl( "<br>" ) );
			}

			return ( dg );
		}

		public String MonthYear
		{
			get
			{
				String strLongDate;

				strLongDate = ddlYearMonth.SelectedItem.Text.ToUpper( );
				strLongDate = strLongDate.Replace( ",", String.Empty );
				
				return ( strLongDate );
			}
		}
	}
}
