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
using System.Configuration ;
using System.Text.RegularExpressions;

namespace CMT
{
	/// <summary>
	/// Summary description for CMTWebBasePage.
	/// </summary>
	public class CMTWebBasePage : System.Web.UI.Page
	{
		protected DBQueryCMT db = new DBQueryCMT( );
		
		public CMTWebBasePage()
		{
			//
			// TODO: Add constructor logic here
			//
		}

		protected void addColor( TextBox tb )
		{
			tb.Attributes.Add( "onfocus", "this.style.backgroundColor='#fff8dc';" );
			tb.Attributes.Add( "onblur", "this.style.backgroundColor='#ffffff';" );
		}

		public String WebSite
		{
			get
			{
				return ( Regex.Replace( Request.Url.Host, @"^www\.", String.Empty, RegexOptions.IgnoreCase ) );
			}
		}

	}
}
