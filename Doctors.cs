using System;
using System.Linq;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Runtime.Serialization;

namespace Com.LT.LabExpress.Entities
{
    /// <summary>
    /// Doctors Entity Model
    /// </summary>
    [DataContract]
    public class Doctors : Entity, IEntity
    {
        #region ----- Properties -----

        [PrimaryKey]
        
        public int docID { get; set; } = 0;

        
        [StringLength( maximumLength:50, MinimumLength = 0)]
        public string docCode { get; set; } = "";

        
        [StringLength(maximumLength: 50, MinimumLength = 3)]
        public string docName { get; set; } = "";

        
        public string designation { get; set; } = "";

        
        public string department { get; set; } = "";

        
        public bool active { get; set; } = true;

        
        public string crtBy { get; set; } = "";

        
        public DateTime crtDate { get; set; } = Convert.ToDateTime("1/1/1900");

        
        public string modBy { get; set; } = "";

        
        public DateTime modDate { get; set; } = Convert.ToDateTime("1/1/1900");

        public PatientsList obj { get; set; } = new PatientsList();

        #endregion

        #region ----- Construct ------

        /// <summary>
        /// Default constructor that takes no arguments
        /// </summary>
        /// <returns>Doctors object</returns>
        public Doctors()
        {
        }

        /// <summary>
        /// Overload construct that takes one row from Doctors table 
        /// and convert it into Doctors object
        /// </summary>
        /// <param name="DoctorsDataRow">DataRow one row from Doctors table</param>
        /// <returns>Doctors object</returns>
        public Doctors(DataRow Row)
        {
            try
            {
                foreach (var item in GetType().GetProperties().ToList().FindAll(x => x.CanWrite))
                {
                    try
                    {
                        if (Row != null && Row.Table.Columns.Contains(item.Name) && !string.IsNullOrEmpty(Row[item.Name].ToString()))
                        { item.SetValue(this, Convert.ChangeType(Row[item.Name], item.PropertyType)); }
                    }
                    catch (Exception) { }
                }

                if (ToString() == new Doctors().ToString()) { throw new Exception("Unable to process while provided table was not in expected format."); }
            }
            catch (Exception ex) { throw ex; }
        }
        #endregion

        #region ----- Destruct -------

        ~Doctors() { }

        #endregion

        #region ----- Helper Methods -

        /// <summary>
        /// Helper method that takes Primary Key and set all fields with value
        /// </summary>
        /// <param name="PK">int PrimaryKey of Doctors</param>  
        /// <returns>Doctors object</returns>
        public void FromPrimaryKey(int PK)
        {
            if (PK < 1) { throw new ArgumentNullException("docID"); }
            
            Doctors obj = new Doctors { docID = PK };
            DataSet ds = obj.Select();

            if (ds.Tables[0].Rows.Count > 0) { obj = new Doctors(ds.Tables[0].Rows[0]); }

            obj.Clone(this);
        }

        /// <summary>
        /// Helper method that takes Foreign Key and set all fields with value
        /// </summary>
        /// <param name="FK">int ForeignKey of Doctors</param>  
        /// <returns>Doctors object</returns>
        //public DataSet FromForeignKey(int FK)
        //{
        //    if (FK < 1) { throw new ArgumentNullException("FK < 1"); }

        //    Doctors obj = new Doctors { FKID = FK };
        //    return obj.Select();
        //}

        /// <summary>
        /// Perform different validation checksome
        /// </summary>
        /// <param name="sqlOperation">SqlOperation mode</param>
        public void Validate(SqlOperation operation)
        {
            switch (operation)
            {
                case SqlOperation.Insert:
                    if (docID > 0)
                        validationResult.Errors.Add("docID should be zero.");
                    break;

                case SqlOperation.Select:
                    validationResult.Errors.Clear();
                    if (docID < 0)
                        validationResult.Errors.Add("docID should be zero or higher.");
                    break;

                case SqlOperation.Update:
                    if (docID < 1)
                        validationResult.Errors.Add("docID should be higher than zero.");
                    break;

                case SqlOperation.Delete:
                    if (docID < 1)
                        validationResult.Errors.Add("docID should be higher than zero.");
                    break;

                default:
                    break;
            }
            if (validationResult.HasError) { throw new InvalidOperationException(validationResult.Errors.Count.ToString() + " errors occured. " + validationResult.ErrorSummary); }
        }

        /// <summary>
        /// Convert current Doctors object into string and return
        /// </summary>
        /// <returns>string source of current Doctors object</returns>
        public override string ToString()
        {
            string Mystring = "Doctors Information\r\n";
            Mystring += $"docID={docID.ToString()}\r\n";
            Mystring += $"docCode={docCode.ToString()}\r\n";
            Mystring += $"docName={docName.ToString()}\r\n";
            Mystring += $"designation={designation.ToString()}\r\n";
            Mystring += $"department={department.ToString()}\r\n";
            Mystring += $"active={active.ToString()}\r\n";
            Mystring += $"crtBy={crtBy.ToString()}\r\n";
            Mystring += $"crtDate={crtDate.ToString()}\r\n";
            Mystring += $"modBy={modBy.ToString()}\r\n";
            Mystring += $"modDate={modDate.ToString()}\r\n";
            return Mystring;
        }

        /// <summary>
        /// Convert current Doctors object into Html source and return
        /// </summary>
        /// <returns>Html source of current Doctors object</returns>
        public string ToHTML()
        {
            string Htmlstring = "<div class='divObjectWrapper'>" + Environment.NewLine;
            Htmlstring += "<div class='divTitle'>Doctors Details</div>" + Environment.NewLine;
            Htmlstring += "<div class='divContent'>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>docID</div><div class='divCellValue'>{docID.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>docCode</div><div class='divCellValue'>{docCode.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>docName</div><div class='divCellValue'>{docName.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>designation</div><div class='divCellValue'>{designation.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>department</div><div class='divCellValue'>{department.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>active</div><div class='divCellValue'>{active.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>crtBy</div><div class='divCellValue'>{crtBy.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>crtDate</div><div class='divCellValue'>{crtDate.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>modBy</div><div class='divCellValue'>{modBy.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += $"<div class='divRow'> <div class='divCellLabel'>modDate</div><div class='divCellValue'>{modDate.ToString()}</div></div>" + Environment.NewLine;
            Htmlstring += "</div>" + Environment.NewLine;
            Htmlstring += "</div>" + Environment.NewLine;
            return Htmlstring;
        }

        public void Dispose()
        {
            obj.Dispose();
            ///ToDo: Dispose off properties here, if needed
        }

        #endregion
    }

    /// <summary>
    /// Generic list class of Doctors object
    /// </summary>
    [CollectionDataContract(ItemName = "Doctors", Name = "DoctorsList")]
    public class DoctorsList : List<Doctors>, IDisposable
    {
        #region ----- Construct -----

        /// <summary>
        /// Default constructor that takes no arguments and initialize all fields with default value
        /// 
        /// returns new DoctorsList object
        /// </summary>
        /// <returns>Doctors object</returns>
        public DoctorsList()
        {
        }

        /// <summary>
        /// Overloaded constructor that takes Doctors object and initialize List(Doctors) object
        /// 
        /// returns DoctorsList object with one list item
        /// </summary>
        /// <param name="objDoctors">Doctors object</param>
        /// <returns>DoctorsList object</returns>
        public DoctorsList(Doctors obj)
        {
            Add(obj);
        }

        /// <summary>
        /// Overloaded constructor that takes Doctors Enumeration and initialize List(Doctors) object
        /// 
        /// returns DoctorsList object with one list item
        /// </summary>
        /// <param name="objDoctors">Doctors object</param>
        /// <returns>DoctorsList object</returns>
        public DoctorsList(IEnumerable<Doctors> obj)
        {
            AddRange(obj);
        }

        /// <summary>
        /// Overloaded constructor that accpets DataSet containing Doctors table and convert it into List of Doctors object
        /// 
        /// returns DoctorsList object with all list items from provided DataTable
        /// </summary>
        /// <param name="DoctorsDataSet">DataSet containing Doctors table</param>
        /// <returns>DoctorsList object</returns>
        public DoctorsList(DataSet ds)
        {
            try { AddRange(new DoctorsList(ds.Tables[0])); }
            catch (Exception ex) { throw ex; }
        }

        /// <summary>
        /// Overloaded constructor that accpets Doctors table and convert it into List of Doctors object
        /// 
        /// returns DoctorsList object with all list items from provided DataTable
        /// </summary>
        /// <param name="DoctorsDataTable">DataTable of Doctors</param>
        /// <returns>DoctorsList object</returns>
        public DoctorsList(DataTable dt)
        {
            try { foreach (DataRow row in dt.Rows) { Add(new Doctors(row)); } }
            catch (Exception ex) { throw ex; }
        }

        /// <summary>
        /// Overloaded constructor that return all rows from Doctors table
        /// </summary>
        /// <param name="SelectAll">true if you want to get complete list of Doctors</param>
        /// <returns>DoctorsList object</returns>
        public DoctorsList(bool SelectAll)
        {
            if (SelectAll)
            {
                try { AddRange(new DoctorsList(new Doctors().Select())); }
                catch (Exception ex) { throw ex; }
            }
        }

        #endregion

        #region ----- Destruct ------

        ~DoctorsList() { }

        #endregion

        #region ----- Helper Methods-

        public void Dispose()
        {
            Clear();
            ///ToDo: Dispose off properties here, if needed
        }

        #endregion
    }
}