using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class EmployeeBasicInfo : BaseEntity
    {
        [Key]
        public int Id { get; set; }
        public String FirstName { get; set; }
        public String FatherName { get; set; }
        public String SurName { get; set; }
        public int Gender { get; set; }
        public DateTime DateOfBirth { get; set; }
        public String CNIC { get; set; }
        public String Religion { get; set; }
        public String Domicile { get; set; }
        public String Address { get; set; }
        public String State { get; set; }
        public String Country { get; set; }
        public double PostalCode { get; set; }
        public String HomePhone { get; set; }
        public String MobilePhone { get; set; }
        public String EmailAddress { get; set; }
    }
}
