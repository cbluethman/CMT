using System;
using System.Web;
using System.Configuration;
using System.Web.Mail;
using System.IO;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace CMT
{
	/// <summary>
	/// Summary description for Utilities.
	/// </summary>
	public class Utilities
	{
		public Utilities()
		{
			//
			// TODO: Add constructor logic here
			//
		}

		public static Boolean SendMail( MailMessage m, HttpResponse hr )
		{
			Boolean blnReturn = true;
			String strSMTPServer = ConfigurationSettings.AppSettings[ "SMTPServer" ];

			SmtpMail.SmtpServer = strSMTPServer;

			try
			{
				SmtpMail.Send( m );
			}
			catch ( Exception ex )
			{
				hr.Write( "The following exception occurred: " + ex.ToString( ) );
				
				//check the InnerException
				while( null != ex.InnerException )
				{
					hr.Write( "--------------------------------" );
					hr.Write( "The following InnerException reported: " + ex.InnerException.ToString( ) );
					ex = ex.InnerException;
				}

				blnReturn = false;
			}  // try - send mail

			return ( blnReturn );
		}

		public static void SetTextBoxColor( Control ctrl )
		{

			foreach ( Control c in ctrl.Controls )
			{
				String strFocus = "this.style.backgroundColor='#fff8dc';";
				String strBlur = "this.style.backgroundColor='#ffffff';";

				if ( c is TextBox )
				{
					( ( TextBox ) c ).Attributes.Add( "onfocus", strFocus  );
					( ( TextBox ) c ).Attributes.Add( "onblur", strBlur  );
				}
				else if ( c is HtmlInputText )
				{
					( ( HtmlInputText ) c ).Attributes.Add( "onfocus", strFocus );
					( ( HtmlInputText ) c ).Attributes.Add( "onblur", strBlur );
				}
				else if ( c is HtmlInputFile )
				{
					( ( HtmlInputFile ) c ).Attributes.Add( "onfocus", strFocus );
					( ( HtmlInputFile ) c ).Attributes.Add( "onblur", strBlur );
				}
				else
				{

					if ( c.Controls.Count > 0 )
					{
						SetTextBoxColor( c );
					}

				}

			}

		}

		public static String RenderTable( HtmlTable tbl )
		{
			String strRet;

			StringBuilder sb = new StringBuilder( );
			StringWriter sw = new StringWriter( sb );
			HtmlTextWriter htw = new HtmlTextWriter( sw );
			tbl.RenderControl( htw );
			strRet = sb.ToString( );
			strRet += "<br><br>";

			return ( strRet );
		}

	}
}
