using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class Departments : BaseEntity
    {
        [Key]
        public int Dept_Id { get; set; }
        public String Name { get; set; }
    }
}
