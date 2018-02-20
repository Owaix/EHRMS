using Common.Extensions;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace EHRMS.ViewModel
{
    public class GetMenu : Entity
    {
        public int Id { get; set; }
        public String Menu { get; set; }
        public String Class { get; set; }
        public FeaturesVM Submenu { get; set; }
    }
}