using System;
using System.Collections;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.IO;
using System.Web;
using System.Web.Mail;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using CSI.Utilities;

namespace CMT
{
	/// <summary>
	/// Summary description for about.
	/// </summary>
	public class job : CMTWebBasePage
	{
		protected System.Web.UI.WebControls.Panel pnlMain;
		protected System.Web.UI.WebControls.Panel pnl01;
		protected System.Web.UI.WebControls.ImageButton ibtnApply;
		protected System.Web.UI.WebControls.ImageButton ibtnUpload;
		protected System.Web.UI.WebControls.Panel pnlJobs;
		protected System.Web.UI.WebControls.Button btnSend;
		protected System.Web.UI.WebControls.Panel pnlApply;
		protected System.Web.UI.HtmlControls.HtmlTable tblApply;
		protected ascx.JobForm ucJobForm;
		private String strId;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			strId = ( null == Request.QueryString[ "Id" ] ) ? String.Empty : Request.QueryString[ "Id" ];

			if ( ! this.IsPostBack )
			{

				switch ( strId )
				{
					case "01":
						pnlJobs.Visible = true;
						pnl01.Visible = true;
						Cache[ "Id" + Session.SessionID ] = ucJobForm.Panel01.UniqueID;
						break;
					case "":
						pnlMain.Visible = true;
						break;
					case "Apply":
						if ( null == Cache[ "Id" + Session.SessionID ] )
						{
							Response.Redirect( "job.aspx", true );
						}
						else
						{
							Control c = Page.FindControl( Cache[ "Id" + Session.SessionID ].ToString( ) );

							c.Visible = true;
							Cache.Remove( "Id" + Session.SessionID );
						}
				
						pnlApply.Visible = true;
						break;
					default:
						Response.Redirect( "job.aspx", true );
						break;
				}  // switch

			}  // if - postback

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
			this.ibtnApply.Click += new System.Web.UI.ImageClickEventHandler(this.ibtnApply_Click);
			this.ibtnUpload.Click += new System.Web.UI.ImageClickEventHandler(this.ibtnUpload_Click);
			this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void btnApply_Click(object sender, System.EventArgs e)
		{
			Response.Redirect( "job.aspx?Id=Apply", true );
		}

		private void btnUpload_Click(object sender, System.EventArgs e)
		{
		
//			using ( ProcessUpload pu = new ProcessUpload( fileResume ) )
//			{
//				Byte[] by = new Byte[ pu.Length ];
//
//				String strDir = Server.MapPath( "uploads\\" + System.Guid.NewGuid( ).ToString( ) );
//				String strFile = strDir + "\\" + pu.FileName;
//
//				// We create dirs named after GUIDs to provide
//				// a unique space to place the attachment.
//				// If three people were uploading resume.doc into
//				// the same folder, that would be bad.
//				// .Net 2.0 Net.Mail namespace is more robust
//				// and might allow renaming of attachments.
//				// Or you could send the SMTP protocol over
//				// TCP packets directly, bypassing the Mail
//				// namespace.  Code on Internet to do this.
//				Directory.CreateDirectory( strDir );
//
//				using ( FileStream fs = File.Create( strFile ) )
//				{
//					fs.Write( pu.BinaryData, 0, pu.Length );
//				}
//
//				String strEmail = ConfigurationSettings.AppSettings[ "EmailResume" ];
//
//				MailMessage mail = new MailMessage( );
//
//				mail.From = "no-reply@" + WebSite;
//				mail.To = strEmail;
//				mail.Subject = "Resume";
//
//				MailAttachment ma = new MailAttachment( strFile, MailEncoding.Base64 );
//
//				mail.Attachments.Add( ma );
//				mail.Body = "Resume is Attached";
//				mail.BodyFormat = MailFormat.Html;
//
//				Utilities.SendMail( mail, this.Response );
//				Directory.Delete( strDir, true );
//			}  // using

		}

		private void ibtnApply_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect( "job.aspx?Id=Apply", true );
		}

		private void ibtnUpload_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Response.Redirect( "job.aspx?Id=Apply", true );		
		}

		private void btnSend_Click(object sender, System.EventArgs e)
		{

			if ( this.IsValid )
			{
				String strEmail = ConfigurationSettings.AppSettings[ "EmailResume" ];
			
				MailMessage mail = new MailMessage( );

				mail.From = "no-reply@" + WebSite;
				mail.To = strEmail;

				mail.Subject = "Job Application";

				String str = Utilities.RenderTable( ucJobForm.TableApply );

				mail.Body = str;
				mail.BodyFormat = MailFormat.Html;

				Utilities.SendMail( mail, this.Response );
				Response.Redirect( "Default.aspx", true );
			}

		}

	}
}
