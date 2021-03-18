using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

namespace CMT
{
	/// <summary>
	/// Summary description for GridITemplate.
	/// </summary>
	public class GridITemplate : ITemplate
	{
		private Int32 intCount = 0;
		private String strBackColor;
		private Boolean blnHeader;
		private Int32 intWeek;
		private Boolean blnIsData = true;
		private String strMonth;
		private String strYear;

		public GridITemplate( Boolean blnHeader,
			Int32 intWeek,
			String strMonth,
			String strYear )
		{
			this.blnHeader = blnHeader;
			this.intWeek = intWeek;
			this.strMonth = strMonth;
			this.strYear = strYear;
		}

		public void InstantiateIn( Control container )
		{
			DataView dv;
			DataSet ds;
			String strStart, strEnd;
			DBQueryCMT db = new DBQueryCMT( );
			DataList dl = new DataList( );

			String strYearMonth = strYear + strMonth;

			switch ( intWeek )
			{
				case 1:
					strStart = strYearMonth + "01";
					strEnd = strYearMonth + "07";
					break;
				case 2:
					strStart = strYearMonth + "08";
					strEnd = strYearMonth + "14";
					break;
				case 3:
					strStart = strYearMonth + "15";
					strEnd = strYearMonth + "21";
					break;
				case 4:
					strStart = strYearMonth + "22";
					strEnd = strYearMonth + "28";
					break;
				case 5:
					strStart = strYearMonth + "29";
					strEnd = strYearMonth + "31";
					break;
				default:
					// Error
					return;
			}
		
			if ( true == blnHeader )
			{
				dl.Width = Unit.Percentage( 100 ) ;
				dl.ItemStyle.HorizontalAlign = HorizontalAlign.Center;
				dl.GridLines = GridLines.Both;
				dl.BorderColor = Color.White;
				dl.CssClass = "tabletext";
				dl.BackColor = ColorTranslator.FromHtml( "#979caf" );
				dl.Attributes.Add( "style", "FONT-WEIGHT: bold" );
				dl.RepeatColumns = 7;
				dl.RepeatDirection = RepeatDirection.Horizontal;
				dl.ItemTemplate = new PriceITemplate( true );
				dv = db.getDailyPrice( true, strMonth, strYear );
				dv.RowFilter = "PriceDate >= '" + strStart + "' AND PriceDate <= '" + strEnd + "'";
				
				if ( dv.Count > 0 )
				{
					dl.ItemStyle.Width = Unit.Percentage( 100 / dv.Count );
				}

				dl.DataSource = dv;
				dl.DataBind( );

				if ( 0 == dv.Count )
				{
					blnIsData = false;
				}

			}
			else
			{
				ds = db.getCrudeType( -1 );
				dl.Width = Unit.Percentage( 100 ) ;
				dl.ItemStyle.HorizontalAlign = HorizontalAlign.Center;
				dl.GridLines = GridLines.Both;
				dl.BorderColor = Color.White;
				dl.CssClass = "tabletext";
				strBackColor = ( 0 == intCount % 2 ) ? "#ddddee" : "#eeeeff";
				dl.BackColor = ColorTranslator.FromHtml( strBackColor );
				dl.RepeatColumns = 7;
				dl.RepeatDirection = RepeatDirection.Horizontal;
				dl.ItemTemplate = new PriceITemplate( false );
				dv = db.getDailyPrice( false, strMonth, strYear );
				dv.RowFilter = "CrudeTypeId = '" + ds.Tables[ 0 ].Rows[ intCount ][ "CrudeTypeId" ].ToString( ) + "' AND ( PriceDate >= '" + strStart + "' AND PriceDate <= '" + strEnd + "' )";

				if ( dv.Count > 0 )
				{
					dl.ItemStyle.Width = Unit.Percentage( 100 / dv.Count );
				}

				dl.DataSource = dv;
				dl.DataBind( );
				intCount++;
			}

			container.Controls.Add( dl );
		}

		public Boolean IsData
		{
			get
			{
				return ( blnIsData );
			}
		}

	}

}
