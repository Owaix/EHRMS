using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;

namespace EHRMS.ViewModel
{
    public class EmployeeVM : BaseEntity
    {
        public EmployeeVM()
        {
            ddlBinde.Add(new SelectListItem { Value = 1.ToString(), Text = "Male" });
            ddlBinde.Add(new SelectListItem { Value = 2.ToString(), Text = "Female", Selected = true });
            ddlBinder = new SelectList(ddlBinde, "Value", "Text");
        }
        public int Id { get; set; }
        public String Name { get; set; }
        public String Department { get; set; }
        public String Designation { get; set; }
        public float Salary { get; set; }
        public int Age { get; set; }
        public int SelectedId { get; set; }
        public List<SelectListItem> ddlBinde = new List<SelectListItem>();
        public SelectList ddlBinder;
    }
}