using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EHRMS.ViewModel
{
    public class MenuSubmenu
    {
        public int Id { get; set; }
        public String Name { get; set; }
        public String Class { get; set; }
        public string Action { get; set; }
        public string Controller { get; set; }
        public int Sub_Id { get; set; }
        public String Sub_Name { get; set; }
        public String Sub_Class { get; set; }
        public String Sub_ { get; set; }
        public String Sub_Controller { get; set; }
        public int Menu_Id { get; set; }
    }
}