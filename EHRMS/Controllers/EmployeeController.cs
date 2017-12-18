using System;
using System.Collections.Generic;
using AutoMapper;
using System.Web.Mvc;
using EHRMS.ViewModel;
using System.Linq;
using Common;
using DataAccess.Models;
using DataAccess.Repository;
using DataAccess;
using PagedList;
using System.IO;
using System.Web.UI;
using DataAccess.UOW;
using Common.Utility;
using EHRMS.IdentityExtensions;
using System.Web;
using EHRMS.Models;
using System.Data;
using System.Data.SqlClient;

namespace EHRMS.Controllers
{
    public class EmployeeController : Controller
    {
        // HRDbContext db = new HRDbContext();
        private GenericRepository<Employee> EmpRep;
        private GenericUnitOfWork unitOfWork;

        public EmployeeController()
        {
            unitOfWork = new GenericUnitOfWork(new HrContext());
            EmpRep = unitOfWork.Repository<Employee>();
        }
        public ActionResult Index(int? page)
        {
            List<EmployeeVM> emp = new List<EmployeeVM>();
            SqlParameter[] parameter = { new SqlParameter("@Search",""),
                new SqlParameter("@pageNo",page),
                new SqlParameter("@pageSize",10),
                new SqlParameter("@order","Id")
            };
            DataSet ds = SqlHelper.CallRProc("GetEmployee", parameter);
            var empList = ds.Tables[0].AsEnumerable().Select(dataRow => new EmployeeVM
            {
                Id = dataRow.Field<int>("Id"),
                Name = dataRow.Field<string>("Name"),
                Department = dataRow.Field<string>("Department"),
                Designation = dataRow.Field<string>("Designation"),
                Salary = dataRow.Field<float>("Salary"),
                Age = dataRow.Field<int>("Age")
            }).ToList();
            ViewBag.Count = ds.Tables[1].Rows[0][0].ToString();
            return View(empList);
        }
        [HttpPost]
        public ActionResult Index(int? page, int? para)
        {
            List<EmployeeVM> emp = new List<EmployeeVM>();
            SqlParameter[] parameter = { new SqlParameter("@Search",""),
                new SqlParameter("@pageNo",page),
                new SqlParameter("@pageSize",10),
                new SqlParameter("@order","Id")
            };
            DataSet ds = SqlHelper.CallRProc("GetEmployee", parameter);
            var empList = ds.Tables[0].AsEnumerable().Select(dataRow => new EmployeeVM
            {
                Id = dataRow.Field<int>("Id"),
                Name = dataRow.Field<string>("Name"),
                Department = dataRow.Field<string>("Department"),
                Designation = dataRow.Field<string>("Designation"),
                Salary = dataRow.Field<float>("Salary"),
                Age = dataRow.Field<int>("Age")
            }).ToList();
            ViewBag.Count = ds.Tables[1].Rows[0][0].ToString();
            return PartialView("_EmpList",empList);
        }

        [HttpPost]
        public ActionResult SearchList(String name)
        {
            var item = EmpRep.FindBy(x => x.Name == name).ToList();
            var items = Mapper.Map<IEnumerable<EmployeeVM>>(item);
            return View("Index", items.ToPagedList(1, 10));
        }
        public ActionResult New()
        {
            var id = User.Identity.GetCompanyId();
            Employee emp = new Employee();
            List<Country> list = new List<Country>();
            list.Add(new Country { Id = 1, Name = "Pakistan" });
            list.Add(new Country { Id = 2, Name = "India" });
            list.Add(new Country { Id = 3, Name = "China" });
            list.Add(new Country { Id = 4, Name = "USA" });
            // emp.Country = new SelectList(list, "Id", "Name");
            return View();
        }

        public ActionResult UploadImg(Academic Academic)
        {
            var file = Academic.file;
            if (file != null)
            {
                var filename = Path.GetFileName(file.FileName);
                var ext = Path.GetExtension(file.FileName);
                var filewithout = Path.GetFileNameWithoutExtension(file.FileName);
                file.SaveAs(Server.MapPath("/Assets/" + file.FileName));
            }
            return View();
        }

        [HttpPost]
        public ActionResult New(String[] Ins, String[] Deg, String[] Year)
        {
            for (int i = 0; i < Ins.Length; i++)
            {
                var institute = Ins[i];
                var degree = Deg[i];
                var year = Year[i];
                Logging.ExecuteSafely<EmployeeVM>(() =>
                {
                    var emp = new Employee();
                    emp.Name = "Owais";
                    emp.Age = 100;
                    return null;
                });
            }
            List<Country> countrylist = new List<Country>();
            countrylist.Add(new Country { Id = 1, Name = "Owais" });
            countrylist.Add(new Country { Id = 2, Name = "ALi" });
            countrylist.Add(new Country { Id = 3, Name = "Ahmed" });
            countrylist.Add(new Country { Id = 4, Name = "John" });
            countrylist.Add(new Country { Id = 5, Name = "Smith" });
            return Json(countrylist);
        }
        public ActionResult Delete(int id)
        {
            var EMpId = EmpRep.Get(x => x.Id == id);
            EMpId.IsActive = false;
            unitOfWork.Save();
            return View("Index");
        }
        public ActionResult ActionMethod(Country country)
        {
            return View();
        }
        public EmployeeVM AddEmp(EmployeeVM EmpVm)
        {
            return ServiceHelper.ExecuteSafely<EmployeeVM>(() =>
            {
                //var Employee = new Employee();
                //Employee.Department = EmpVm.Department;
                //Employee.Name = EmpVm.Name;
                //Employee.Salary = EmpVm.Salary;
                //unitOfWork.Repository<Employee>().Add(Employee);
                unitOfWork.Save();
                return EmpVm;
            });
        }
        public ActionResult Edit(int? id)
        {
            var Emp = EmpRep.FindBy(x => x.Id == id).FirstOrDefault();
            var items = Mapper.Map<EmployeeVM>(Emp);
            return PartialView(items);
        }

        //public JsonResult UploadMedia(AcademicProfileVM academic)
        //{
        //    var file = academic.ImageFile;
        //    if (file != null)
        //    {
        //        var fileName = Path.GetFileName(file.FileName);
        //        var extension = Path.GetExtension(file.FileName);
        //        var FileNameWithourExt = Path.GetFileNameWithoutExtension(file.FileName);
        //        file.SaveAs(Server.MapPath("/Uploads/" + file.FileName));
        //    }
        //    return Json(file.FileName, JsonRequestBehavior.AllowGet);
        //}
        public void ExportClientsListToExcel()
        {
            var grid = new System.Web.UI.WebControls.GridView();
            grid.DataSource = /*from d in dbContext.diners
                              where d.user_diners.All(m => m.user_id == userID) && d.active == true */
                              from d in EmpRep.GetAll()
                              select new
                              {
                                  Name = d.Name,
                                  Age = d.Age,
                                  Department = d.Department,
                                  Designation = d.Designation
                              };
            grid.DataBind();
            Response.ClearContent();
            Response.AddHeader("content-disposition", "attachment; filename=Exported_Diners.xls");
            Response.ContentType = "application/excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);
            grid.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }
    }
    public class Country
    {
        public int Id { get; set; }
        public String Name { get; set; }
    }
}