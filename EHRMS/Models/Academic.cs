using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EHRMS.Models
{
    public class Academic
    {
        public String Institute { get; set; }
        public String Degree { get; set; }
        public String Year { get; set; }
        public HttpPostedFileWrapper file { get; set; }
    }
}