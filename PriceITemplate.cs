using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

namespace CMT
{
	/// <summary>
	/// Summary description for PriceITemplate.
	/// </summary>
	public class PriceITemplate : ITemplate
	{
		Boolean blnDate;

		public PriceITemplate( Boolean blnDate )
		{
			this.blnDate = blnDate;
		}

		public void InstantiateIn( Control container )
		{
			HtmlGenericControl spn = new HtmlGenericControl( );

			spn.DataBinding += new EventHandler( this.BindSpan );

			container.Controls.Add( spn );
		}

		public void BindSpan( Object sender, EventArgs e )
		{
			HtmlGenericControl spn = ( HtmlGenericControl ) sender;

			String strText;
			DataListItem container = ( DataListItem ) spn.NamingContainer;

			if ( true == blnDate )
			{
				strText = ( ( DataRowView ) container.DataItem )[ "PriceDate" ].ToString( );

				String strYear = strText.Substring( 2, 2 );
				String strMonth = strText.Substring( 4, 2 );
				String strDay = strText.Substring( 6, 2 );

				// converting gets rid of leading zero 09, 03, etc
				strText = Convert.ToInt32( strMonth ).ToString( ) +
					"." + Convert.ToInt32( strDay ).ToString( ) +
					"." + strYear;
			}
			else
			{
				strText = ( ( DataRowView ) container.DataItem )[ "Price" ].ToString( );
			}

			spn.InnerHtml = strText;
		}

	}

}
