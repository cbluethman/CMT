using System;

namespace CMT
{
	/// <summary>
	/// Summary description for UserLoginInfo.
	/// </summary>
	public class UserLoginInfo
	{
		private String strUserDefId = String.Empty;
		private String strPassword = String.Empty;
		private String strUserID = String.Empty;
		private Boolean blnLoginStatus = false;
		private String strRoleId;
		private String strRoleName;
	
		public UserLoginInfo( String strUserID, String strPassword )
		{
			ValidateUser( strUserID, strPassword );
		}

		private void ValidateUser( String strUserID, String strPassword )
		{

			if ( strUserID != null &&
				strPassword != null &&
				strUserID != String.Empty &&
				strPassword != String.Empty )
			{
				this.strUserID = strUserID;
				this.strPassword = strPassword;
				blnLoginStatus = true;
			}

		}

		public String UserDefId
		{
			get { return strUserDefId; }
			set { strUserDefId = value; }
		}

		public string UserID
		{
			get { return strUserID; }
		}

		public string Password
		{
			get { return strPassword; }
		}

		public bool LoggedIn
		{
			get { return blnLoginStatus; }
		}

		public String RoleId
		{
			get { return strRoleId; }
			set { strRoleId = value; }
		}

		public String RoleName
		{
			get { return strRoleName; }
			set { strRoleName = value; }
		}

	}

}
