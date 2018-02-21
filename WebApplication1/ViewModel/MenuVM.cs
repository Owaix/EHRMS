using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EHRMS.ViewModel
{
    public class MenuVM
    {
        public int Menu_Id { get; set; }
        public String Name { get; set; }
        public String Class { get; set; }
        //    public string Action { get; set; }
        public string Controller { get; set; }
        public List<FeaturesVM> feature { get; set; }
    }

    public class Parent
    {
        public int Id { get; set; }
        public String ParentName { get; set; }
        public String[] Child { get; set; }
    }
    public class Child
    {
        public int Id { get; set; }
        public String ChildName { get; set; }
    }
}