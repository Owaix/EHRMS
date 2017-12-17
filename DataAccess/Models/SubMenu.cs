using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class SubMenu : BaseEntity
    {
        [Key]
        public int id { get; set; }
        public String Name { get; set; }
        public String Class { get; set; }
        public String Action { get; set; }
        public String Controller { get; set; }
        public int Menu_Id { get; set; }
        public virtual MainMenus Menu { get; set; }
    }
}
