using Com.LT.LabExpress.Entities;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Com.LT.LabExpress.DBContexts
{
    /// <summary>
    /// Doctors DBContext class that execute methods against database
    /// </summary>
    class DoctorsContext : DBContext
    {
        #region ----- Stored Procedures -----

        /// <summary>
        /// Accept Doctors class parameters and insert a new row in Doctors table
        /// 
        /// return docID of newly inserted row(s)
        /// </summary>
        /// <param name="@docID">int docID of Doctors</param>
        /// <param name="@docCode">string docCode of Doctors</param>
        /// <param name="@docName">string docName of Doctors</param>
        /// <param name="@designation">string designation of Doctors</param>
        /// <param name="@department">string department of Doctors</param>
        /// <param name="@active">bool active of Doctors</param>
        /// <param name="@crtBy">int crtBy of Doctors</param>
        /// <param name="@crtDate">DateTime crtDate of Doctors</param>
        /// <param name="@modBy">int modBy of Doctors</param>
        /// <param name="@modDate">DateTime modDate of Doctors</param>
        /// <returns>docID of newly inserted row(s)</returns>
        private static readonly string Doctors_Insert = "Doctors_Insert";

        /// <summary>
        /// Accept Doctors class parameters and update selected row in Doctors table
        /// 
        /// return docID of updated row(s)
        /// </summary>
        /// <param name="@docID">int docID of Doctors</param>
        /// <param name="@docCode">string docCode of Doctors</param>
        /// <param name="@docName">string docName of Doctors</param>
        /// <param name="@designation">string designation of Doctors</param>
        /// <param name="@department">string department of Doctors</param>
        /// <param name="@active">bool active of Doctors</param>
        /// <param name="@crtBy">int crtBy of Doctors</param>
        /// <param name="@crtDate">DateTime crtDate of Doctors</param>
        /// <param name="@modBy">int modBy of Doctors</param>
        /// <param name="@modDate">DateTime modDate of Doctors</param>
        /// <returns>docID of updated row(s)</returns>
        private static readonly string Doctors_Update = "Doctors_Update";

        /// <summary>
        /// Accepts Doctors object, delete row(s) from Doctors table
		///
        /// return docID of deleted row(s)
        /// </summary>
        /// <param name="@docID">int docID of Doctors</param>
        /// <returns>docID of deleted row(s)</returns>
        private static readonly string Doctors_Delete = "Doctors_Delete";

        /// <summary>
        /// Accepts Doctors object, attach all properties as SP parameters
        /// executes Doctors_Select stores procedure and 
        /// return filtered row(s) from Doctors table
        /// </summary>
        /// <param name="@docID">int docID of Doctors</param>
        /// <param name="@docCode">string docCode of Doctors</param>
        /// <param name="@docName">string docName of Doctors</param>
        /// <param name="@designation">string designation of Doctors</param>
        /// <param name="@department">string department of Doctors</param>
        /// <param name="@active">bool active of Doctors</param>
        /// <param name="@crtBy">int crtBy of Doctors</param>
        /// <param name="@crtDate">DateTime crtDate of Doctors</param>
        /// <param name="@modBy">int modBy of Doctors</param>
        /// <param name="@modDate">DateTime modDate of Doctors</param>
        /// <returns>Filtered row(s) from Doctors table</returns>
        private static readonly string Doctors_Select = "Doctors_Select";

        #endregion

        #region ----- CURD Methods ----------

        /// <summary>
        /// Accepts Doctors object, insert into Doctors table
        /// 
        /// return docID of newly inserted row(s)
        /// </summary>
        /// <param name="objDoctors">Doctors object</param>
        /// <returns>docID of newly inserted row(s)</returns>
        public static int Insert(Doctors objDoctors)
        {
            SqlCommand sqlCmd = new SqlCommand(Doctors_Insert, SqlHelper.DefaultSqlConnection);

            try
            {
                sqlCmd.Connection.Open();
                sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction();
                objDoctors.docID = Insert(objDoctors, sqlCmd);
                sqlCmd.Transaction.Commit();
                return objDoctors.docID;
            }
            catch (Exception ex)
            {
                sqlCmd.Transaction.Rollback();
                throw ex;
            }
            finally { sqlCmd.Connection.Close(); }
        }

        /// <summary>
        /// Accepts Doctors and SqlCommand objects, insert into Doctors table
        /// 
        /// return docID of newly inserted row(s)
        /// </summary>
        /// <param name="Doctors">Doctors object</param>
        /// <param name="sqlCmd">SqlCommand object</param>
        /// <returns>docID of newly inserted row(s)</returns>
        public static int Insert(Doctors objDoctors, SqlCommand sqlCmd)
        {
            // Validating provided SqlCommand
            if (sqlCmd.Connection == null || sqlCmd.Connection.State == ConnectionState.Closed) throw new Exception("Error in provided Connection. Please set SqlCommand.Connection = new SqlConnection(string ConnectionString); or in other ways.");
            if (sqlCmd.Transaction == null) throw new Exception("Error in provided SqlTransaction. Please set sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction(); or in other ways.");

            objDoctors.Validate(SqlOperation.Insert);
            sqlCmd = AttachParameters(sqlCmd, objDoctors, SqlOperation.Insert);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.CommandText = Doctors_Insert;

            try
            {
                objDoctors.docID = (int)SqlHelper.ExecuteNonQuery(sqlCmd);

                /// Validating if any required field does not have initial value
                if (objDoctors.docID < 1)
                    throw new Exception("Could not insert Doctors. Please check your Data Access block or Doctors_Insert Stored Procedure.");
                else
                {
                    return objDoctors.docID;
                }
            }
            catch (Exception ex) { throw ex; }
        }

        /// <summary>
        /// Accepts DoctorsList object, insert into Doctors table
        /// 
        /// return  total number of rows affected
        /// </summary>
        /// <param name="objDoctorsList">DoctorsList object</param>
        /// <returns>Total number of rows affected</returns>
        public static int Insert(DoctorsList objDoctorsList)
        {
            SqlCommand sqlCmd = new SqlCommand(Doctors_Insert, SqlHelper.DefaultSqlConnection);
            try
            {
                sqlCmd.Connection.Open();
                sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction();
                Insert(objDoctorsList, sqlCmd);
                sqlCmd.Transaction.Commit();
                return objDoctorsList.Count;
            }
            catch (Exception ex)
            {
                sqlCmd.Transaction.Rollback();
                throw ex;
            }
            finally { sqlCmd.Connection.Close(); }
        }

        /// <summary>
        /// Accepts DoctorsList and SqlCommand object , insert into Doctors table
        /// 
        /// return  total number of rows affected
        /// </summary>
        /// <param name="objDoctorsList">DoctorsList object</param>
        /// <param name="sqlCmd">SqlCommand object</param>
        /// <returns>Total number of rows affected</returns>
        public static int Insert(DoctorsList objDoctorsList, SqlCommand sqlCmd)
        {
            try
            {
                foreach (Doctors item in objDoctorsList)
                {
                    if (item.docID == 0) 
                    { item.docID = Insert(item, sqlCmd); }
                    else if (item.docID > 0) { Update(item, sqlCmd); }
                    else { throw new InvalidOperationException("Doctors object was not in specified format"); }
                    
                }
                return objDoctorsList.Count;
            }
            catch (Exception ex) { throw ex; }
        }

        /// <summary>
        /// Accepts Doctors object, updated row(s) into Doctors table
		///
        /// return docID of updated row(s)
        /// </summary>
        /// <param name="Doctors">Doctors object</param>
        /// <returns>docID of updated row(s)</returns>
        public static int Update(Doctors objDoctors)
        {
            SqlCommand sqlCmd = new SqlCommand(Doctors_Update, SqlHelper.DefaultSqlConnection);

            try
            {
                sqlCmd.Connection.Open();
                sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction();

                if (objDoctors.docID == 0)
                { objDoctors.docID = Insert(objDoctors, sqlCmd); }
                else if (objDoctors.docID > 0) { Update(objDoctors, sqlCmd); }
                sqlCmd.Transaction.Commit();
                return objDoctors.docID;
            }
            catch (Exception ex)
            {
                sqlCmd.Transaction.Rollback();
                throw ex;
            }
            finally { sqlCmd.Connection.Close(); }
        }

        /// <summary>
        /// Accepts Doctors object, updated row(s) into Doctors table
		///
        /// return docID of updated row(s)
        /// </summary>
        /// <param name="Doctors">Doctors object</param>
        /// <param name="sqlCmd">SqlCommand object</param>
        /// <returns>docID of updated row(s)</returns>
        public static int Update(Doctors objDoctors, SqlCommand sqlCmd)
        {
            // Validating provided SqlCommand
            if (sqlCmd.Connection == null || sqlCmd.Connection.State == ConnectionState.Closed) throw new Exception("Error in provided Connection. Please set SqlCommand.Connection = new SqlConnection(string ConnectionString); or in other ways.");
            if (sqlCmd.Transaction == null) throw new Exception("Error in provided SqlTransaction. Please set sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction(); or in other ways.");

            objDoctors.Validate(SqlOperation.Update);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.CommandText = Doctors_Update;
            sqlCmd = AttachParameters(sqlCmd, objDoctors, SqlOperation.Update);

            try
            {
                int retval = (int)SqlHelper.ExecuteNonQuery(sqlCmd);
                return objDoctors.docID;
            }
            catch (Exception ex) { throw ex; }
        }

        /// <summary>
        /// Accepts DoctorsList object, batch updated row(s) into Doctors table
		///
        /// return docID of updated row(s)
        /// </summary>
        /// <param name="DoctorsList">DoctorsList object</param>
        /// <returns>docID of updated row(s)</returns>
        public static int Update(DoctorsList objDoctorsList)
        {
            SqlCommand sqlCmd = new SqlCommand(Doctors_Update, SqlHelper.DefaultSqlConnection);
            try
            {
                sqlCmd.Connection.Open();
                sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction();
                Update(objDoctorsList, sqlCmd);
                sqlCmd.Transaction.Commit();
                return objDoctorsList.Count;
            }
            catch (Exception ex)
            {
                sqlCmd.Transaction.Rollback();
                throw ex;
            }
            finally { sqlCmd.Connection.Close(); }
        }

        /// <summary>
        /// Accepts DoctorsList object, batch updated row(s) into Doctors table
		///
        /// return docID of updated row(s)
        /// </summary>
        /// <param name="Doctors">Doctors object</param>
        /// <param name="sqlCmd">SqlCommand object</param>
        /// <returns>docID of updated row(s)</returns>
        public static int Update(DoctorsList objDoctorsList, SqlCommand sqlCmd)
        {
            try
            {
                foreach (Doctors item in objDoctorsList)
                {
                    if (item.docID == 0) 
                    { item.docID = Insert(item, sqlCmd); }
                    else if (item.docID > 0) { Update(item, sqlCmd); }
                    else { throw new InvalidOperationException("Doctors object was not in specified format"); }
                    
                }
                return objDoctorsList.Count;
            }
            catch (Exception ex) { throw ex; }
        }

        /// <summary>
        /// Accepts Doctors object, delete row(s) from Doctors table
		///
        /// return docID of deleted row(s)
        /// </summary>
        /// <param name="Doctors">Doctors object</param>
        /// <returns>docID of deleted row(s)</returns>
        public static int Delete(Doctors objDoctors)
        {
            SqlCommand sqlCmd = new SqlCommand(Doctors_Delete, SqlHelper.DefaultSqlConnection);

            try
            {
                sqlCmd.Connection.Open();
                sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction();
                int retval = Delete(objDoctors, sqlCmd);
                sqlCmd.Transaction.Commit();
                return objDoctors.docID;
            }
            catch (Exception ex)
            {
                sqlCmd.Transaction.Rollback();
                throw ex;
            }
            finally { sqlCmd.Connection.Close(); }
        }

        /// <summary>
        /// Accepts Doctors object, delete row(s) from Doctors table
		///
        /// return docID of deleted row(s)
        /// </summary>
        /// <param name="Doctors">Doctors object</param>
        /// <param name="sqlCmd">SqlCommand object</param>
        /// <returns>docID of deleted row(s)</returns>
        public static int Delete(Doctors objDoctors, SqlCommand sqlCmd)
        {
            // Validating provided SqlCommand
            if (sqlCmd.Connection == null || sqlCmd.Connection.State == ConnectionState.Closed) throw new Exception("Error in provided Connection. Please set SqlCommand.Connection = new SqlConnection(string ConnectionString); or in other ways.");
            if (sqlCmd.Transaction == null) throw new Exception("Error in provided SqlTransaction. Please set sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction(); or in other ways.");

            objDoctors.Validate(SqlOperation.Delete);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.CommandText = Doctors_Delete;
            sqlCmd = AttachParameters(sqlCmd, objDoctors, SqlOperation.Delete);

            try
            {
                int retval = (int)SqlHelper.ExecuteNonQuery(sqlCmd);
                return objDoctors.docID;
            }
            catch (Exception ex) { throw ex; }
        }

        /// <summary>
        /// Accepts Doctors object, batch delete row(s) from Doctors table
		///
        /// return docID of deleted row(s)
        /// </summary>
        /// <param name="Doctors">Doctors object</param>
        /// <returns>docID of deleted row(s)</returns>
        public static int Delete(DoctorsList objDoctorsList)
        {
            SqlCommand sqlCmd = new SqlCommand(Doctors_Delete, SqlHelper.DefaultSqlConnection);
            try
            {
                sqlCmd.Connection.Open();
                sqlCmd.Transaction = sqlCmd.Connection.BeginTransaction();
                Delete(objDoctorsList, sqlCmd);
                sqlCmd.Transaction.Commit();
                return objDoctorsList.Count;
            }
            catch (Exception ex)
            {
                sqlCmd.Transaction.Rollback();
                throw ex;
            }
            finally { sqlCmd.Connection.Close(); }
        }

        /// <summary>
        /// Accepts Doctors object, batch delete row(s) from Doctors table
		///
        /// return docID of deleted row(s)
        /// </summary>
        /// <param name="Doctors">Doctors object</param>
        /// <param name="sqlCmd">SqlCommand object</param>
        /// <returns>docID of deleted row(s)</returns>
        public static int Delete(DoctorsList objDoctorsList, SqlCommand sqlCmd)
        {
            try
            {
                foreach (Doctors item in objDoctorsList) { Delete(item, sqlCmd); }
                return objDoctorsList.Count;
            }
            catch (Exception ex) { throw ex; }
        }

        /// <summary>
        /// Accepts Doctors object, attach all properties as SP parameters
        /// executes Doctors_Select stores procedure and 
        /// return filtered row(s) from Doctors table
        /// </summary>
        /// <param name="objDoctors">Doctors to filter the results</param>
        /// <returns>Filtered row(s) from Doctors table</returns>
        public static DataSet Select(Doctors objDoctors)
        {
            SqlCommand sqlCommand = new SqlCommand(Doctors_Select, SqlHelper.DefaultSqlConnection);
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand = AttachParameters(sqlCommand, objDoctors, SqlOperation.Select);

            try
            {
                DataSet Ds1 = SqlHelper.ExecuteDataset(sqlCommand);

                if (Ds1.Tables.Count < 1)
                    throw new Exception("There was an error executing SqlCommand. No data table was returned.");

                return Ds1;
            }
            catch (Exception ex) { throw ex; }
        }

        #endregion

        #region ----- Helper Methods --------

        /// <summary>
        /// Prepare SqlCommand parameters for Insert, update and delete operation
        /// </summary>
        /// <param name="sqlCommand">sqlCommand object</param>
        /// <param name="Doctors">Doctors object</param>
        /// <param name="sqlOperation">Operation perform(Insert / Select / Update / Delete) </param>
        /// <returns>sqlCommand object</returns>
        private static SqlCommand AttachParameters(SqlCommand sqlCommand, Doctors objDoctors, SqlOperation sqlOperation)
        {
            sqlCommand.Parameters.Clear();
            sqlCommand.Parameters.AddWithValue("@docID", objDoctors.docID);
            sqlCommand.Parameters.AddWithValue("@docCode", objDoctors.docCode);
            sqlCommand.Parameters.AddWithValue("@docName", objDoctors.docName);
            sqlCommand.Parameters.AddWithValue("@designation", objDoctors.designation);
            sqlCommand.Parameters.AddWithValue("@department", objDoctors.department);
            sqlCommand.Parameters.AddWithValue("@active", objDoctors.active);
            sqlCommand.Parameters.AddWithValue("@crtBy", objDoctors.crtBy);
            sqlCommand.Parameters.AddWithValue("@crtDate", objDoctors.crtDate);
            sqlCommand.Parameters.AddWithValue("@modBy", objDoctors.modBy);
            sqlCommand.Parameters.AddWithValue("@modDate", objDoctors.modDate);

            if (sqlOperation == SqlOperation.Insert)
            {
                sqlCommand.Parameters["@docID"].Direction = ParameterDirection.ReturnValue;
            }

            if (sqlOperation == SqlOperation.Delete)
            {
                sqlCommand.Parameters.Clear();
            sqlCommand.Parameters.AddWithValue("@docID", objDoctors.docID);
            }

            DBContext.AttachParameters(sqlCommand, objDoctors, sqlOperation);
            return sqlCommand;
        }

        #endregion
    }
}