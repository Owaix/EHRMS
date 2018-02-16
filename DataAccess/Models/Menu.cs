using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
   public class Menu : BaseEntity
    {
        [Key]
        public int Menu_Id { get; set; }
        public String Name { get; set; }
        public String Class { get; set; }
        public string Action { get; set; }
        public string Controller { get; set; }
        public virtual ICollection<SubMenu> feature { get; set; } = new List<SubMenu>();

    }
}
