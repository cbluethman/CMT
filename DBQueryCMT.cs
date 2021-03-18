using System;
using System.Collections;
using DBObjects;
using System.Data;
using System.Data.SqlClient;

namespace CMT
{
	/// <summary>
	/// Summary description for DBQueryCMT.
	/// </summary>
	public class DBQueryCMT
	{
		protected DBQuery db = new DBQuery( );
		private ArrayList alSQLParameters = new ArrayList( );

		public DBQueryCMT()
		{
			//
			// TODO: Add constructor logic here
			//
		}

		public Boolean isLoginValid( String strUserID, String strPassword, ref String strUserDefId )
		{
			Boolean blnReturn = false;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@varUserID", strUserID ) );
			alSQLParameters.Add( new SqlParameter( "@varPassword", strPassword ) );
			
			DataSet ds = db.getDataSetFromStoreProcedure( "usp_login", alSQLParameters );

			if ( ds.Tables[ 0 ].Rows.Count > 0 )
			{
				strUserDefId = ds.Tables[ 0 ].Rows[ 0 ][ "UserDefId" ].ToString( );
				blnReturn = true;
			}

			return ( blnReturn );
		}

		public DataSet getRole( String strUserDefId )
		{
			DataSet ds;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@intUserDefId", Convert.ToInt32( strUserDefId ) ) );
			ds = db.getDataSetFromStoreProcedure( "usp_getRole", alSQLParameters );

			return ( ds );
		}

		public DataSet getLastPrice( Int32 intCrudeTypeId )
		{
			DataSet ds;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@intCrudeTypeId", intCrudeTypeId ) );
			ds = db.getDataSetFromStoreProcedure( "usp_getLastPrice", alSQLParameters );

			return ( ds );
		}

		public Int32 updateDailyPrice( String strDate,
			Int32 intCrudeTypeId,
			String strPrice )
		{
			Int32 intRowCount;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@sdtDate", Convert.ToDateTime( strDate ) ) );
			alSQLParameters.Add( new SqlParameter( "@intCrudeTypeId", intCrudeTypeId ) );
			alSQLParameters.Add( new SqlParameter( "@monPrice", Convert.ToDouble( strPrice ) ) );

			intRowCount = db.getInsertFromStoreProcedure( "usp_updateDailyPrice", alSQLParameters );
			
			return ( intRowCount );
		}

		public DataView getDailyPrice( Boolean blnDateOnly,
			String strMonth,
			String strYear )
		{
			DataView dv;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@bitDateOnly", Convert.ToInt32( blnDateOnly ) ) );
			alSQLParameters.Add( new SqlParameter( "@intMonth", Convert.ToInt32( strMonth ) ) );
			alSQLParameters.Add( new SqlParameter( "@intYear", Convert.ToInt32( strYear ) ) );
			dv = db.getDataViewFromStoreProcedure( "usp_getDailyPrice", alSQLParameters );

			return ( dv );
		}

		public DataSet getCrudeType( Int32 intCrudeTypeId )
		{
			DataSet ds;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@intCrudeTypeId", intCrudeTypeId ) );
			ds = db.getDataSetFromStoreProcedure( "usp_getCrudeType", alSQLParameters );

			return ( ds );
		}

		public DataSet getYearMonthList( )
		{
			DataSet ds;

			alSQLParameters.Clear( );
			ds = db.getDataSetFromStoreProcedure( "usp_getYearMonthList", alSQLParameters );

			return ( ds );
		}

		public DataView getAvgDailyPrice( String strMonth,
			String strYear )
		{
			DataView dv;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@intMonth", Convert.ToInt32( strMonth ) ) );
			alSQLParameters.Add( new SqlParameter( "@intYear", Convert.ToInt32( strYear ) ) );
			dv = db.getDataViewFromStoreProcedure( "usp_getAvgDailyPrice", alSQLParameters );

			return ( dv );
		}

		public Int32 deleteDailyPrice( String strDate )
		{
			Int32 intRowCount;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@sdtDate", Convert.ToDateTime( strDate ) ) );

			intRowCount = db.getInsertFromStoreProcedure( "usp_deleteDailyPrice", alSQLParameters );
			
			return ( intRowCount );
		}

		public Int32 addCallInLoad( String vcrOperatorName,
			String vcrLeaseName,
			String vcrCounty,
			String vcrContactName,
			String vcrContactPhone,
			String vcrContactEmail,
			String strNumberOfBarrels,
			String strPickupDate,
			String strNewLease,
			String vcrDirections,
			String strSplitLoad,
			String vcrSplitWhichLease,
			String vcrTankNum,
			String vcrComments,
			String vcrOwnerNumber )
		{
			Int32 intRowCount;

			alSQLParameters.Clear( );
			alSQLParameters.Add( new SqlParameter( "@vcrOperatorName", vcrOperatorName ) );
			alSQLParameters.Add( new SqlParameter( "@vcrLeaseName", vcrLeaseName ) );
			alSQLParameters.Add( new SqlParameter( "@vcrCounty", vcrCounty ) );
			alSQLParameters.Add( new SqlParameter( "@vcrContactName", vcrContactName ) );
			alSQLParameters.Add( new SqlParameter( "@vcrContactPhone", vcrContactPhone ) );
			alSQLParameters.Add( new SqlParameter( "@vcrContactEmail", vcrContactEmail ) );
			alSQLParameters.Add( new SqlParameter( "@intNumberOfBarrels", Convert.ToInt32( strNumberOfBarrels ) ) );
			
			// We should have a valid date, but it still could be
			// blank, which throws an excpetion.
			try
			{
				alSQLParameters.Add( new SqlParameter( "@sdtPickupDate", Convert.ToDateTime( strPickupDate ) ) );
			}
			catch
			{
				alSQLParameters.Add( new SqlParameter( "@sdtPickupDate", String.Empty ) );
			}
			
			alSQLParameters.Add( new SqlParameter( "@bitIsNewLease", Convert.ToInt32( strNewLease ) ) );
			alSQLParameters.Add( new SqlParameter( "@vcrDirections", vcrDirections ) );
			alSQLParameters.Add( new SqlParameter( "@bitIsSplitLoad", Convert.ToInt32( strSplitLoad ) ) );
			alSQLParameters.Add( new SqlParameter( "@vcrSplitWhichLease", vcrSplitWhichLease ) );
			alSQLParameters.Add( new SqlParameter( "@vcrTankNum", vcrTankNum ) );
			alSQLParameters.Add( new SqlParameter( "@vcrComments", vcrComments ) );
			alSQLParameters.Add( new SqlParameter( "@vcrOwnerNumber", vcrOwnerNumber ) );

			intRowCount = db.getInsertFromStoreProcedure( "usp_addCallInLoad", alSQLParameters );
			
			return ( intRowCount );
		}

	}

}
