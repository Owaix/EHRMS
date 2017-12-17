using AutoMapper;
using DataAccess;
using DataAccess.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.Mvc;
using EHRMS.IdentityExtensions;
using EHRMS.Models;
using EHRMS.ViewModel;
using DataAccess.Repository;
using DataAccess.UOW;
using System.Net.Mail;


namespace EHRMS.Controllers
{
    public class HomeController : Controller
    {
        UserManager<ApplicationUser> _user;
        private GenericUnitOfWork unitOfWork;
        private GenericRepository<MainMenus> MenuRep;
        private GenericRepository<FeatureAccessConfig> FeatureConfig;
        private GenericRepository<Roles> RolRep;
        private GenericRepository<DataAccess.Models.SubMenu> FeaRep;
        public HomeController()
        {
            unitOfWork = new GenericUnitOfWork(new HrContext());
            MenuRep = unitOfWork.Repository<MainMenus>();
            RolRep = unitOfWork.Repository<Roles>();
            FeaRep = unitOfWork.Repository<DataAccess.Models.SubMenu>();
            FeatureConfig = unitOfWork.Repository<FeatureAccessConfig>();
        }
        public HomeController(UserManager<ApplicationUser> user)
        {
            _user = user;
        }
        //  [Authorize]
        public ActionResult Index()
        {
            HrContext db = new HrContext();
            var menu = db.menu.Include("feature").ToList();
            return View(menu);
        }
        [HttpPost]
        public ActionResult Index(String Name, String Mail, String Address)
        {
            return View();
        }
        public ActionResult Calender()
        {
            return View();
        }
        //public async Task<Iaction> ActionResult About()
        //{
        //    ViewBag.Message = "Your application description page.";

        //    return View();
        //}
        public ActionResult AccessConfig()
        {
            var RolesModel = RolRep.GetAll();
            var Role = Mapper.Map<IEnumerable<RolesVM>>(RolesModel);
            var FeatModel = FeaRep.GetAll();
            var Feature = Mapper.Map<IEnumerable<FeaturesVM>>(FeatModel);
            return View();
        }
        public ActionResult AccessConfigJson()
        {
            FeatureRoles Fr = new FeatureRoles();
            var MenuModel = MenuRep.GetAll();
            Fr.Menu = Mapper.Map<IEnumerable<MenuVM>>(MenuModel);
            var RolesModel = RolRep.GetAll();
            Fr.Role = Mapper.Map<IEnumerable<RolesVM>>(RolesModel);
            var FeatModel = FeaRep.GetAll();
            Fr.Feature = Mapper.Map<IEnumerable<FeaturesVM>>(FeatModel);
            return Json(Fr, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetFeature()
        {
            var getFeatures = FeatureConfig.GetAll();
            return Json(getFeatures, JsonRequestBehavior.AllowGet);
        }

        public JsonResult AddFeature(AllAccessConfig FeatureRole)
        {
            for (int i = 0; i < FeatureRole.Feature.Length; i++)
            {
                var Feature = FeatureRole.Feature[i];
                var Role = FeatureRole.Role[i];
                FeatureAccessConfig FRcon = FeatureConfig.FindBy(x => x.Feature_Id == Feature && x.Role_Id == Role).FirstOrDefault();
                if (FRcon != null)
                {
                    FRcon.Feature_Id = FeatureRole.Feature[i];
                    FRcon.Role_Id = FeatureRole.Role[i];
                    FRcon.IsCheck = FeatureRole.IsActive[i] == 1 ? true : false;
                }
                else
                {
                    FRcon = new FeatureAccessConfig();
                    FRcon.Feature_Id = FeatureRole.Feature[i];
                    FRcon.Role_Id = FeatureRole.Role[i];
                    FRcon.IsCheck = FeatureRole.IsActive[i] == 1 ? true : false;
                    FeatureConfig.Add(FRcon);
                }
            }
            unitOfWork.Save();
            return Json(data: true);
        }
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
        public void ExportClientsListToCSV()
        {
            StringWriter sw = new StringWriter();
            sw.WriteLine("\"First Name\",\"Last Name\",\"DOB\",\"Email\"");
            Response.ClearContent();
            Response.AddHeader("content-disposition", "attachment;filename=Exported_Users.csv");
            Response.ContentType = "text/csv";

            //foreach (var line in ClientsList)
            //{
            //    sw.WriteLine(string.Format("\"{0}\",\"{1}\",\"{2}\",\"{3}\"",
            //                               line.FirstName,
            //                               line.LastName,
            //                               line.Dob,
            //                               line.Email));
            //}
            Response.Write(sw.ToString());
            Response.End();
        }
        public ViewResult SendMail()
        {
            if (ModelState.IsValid)
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("aowais37@gmail.com");
                mail.From = new MailAddress("aowais37@gmail.com");
                mail.Subject = "Mail Send";
                string Body = "<h1>mail has been send to you </h1>";
                mail.Body = Body;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("aowais37@gmail.com", ""); // Enter seders User name and password  
                smtp.EnableSsl = true;
                smtp.Send(mail);
                return View();
            }
            else {
                return View();
            }
        }
    }
    public class AllAccessConfig
    {
        public int[] Feature { get; set; }
        public int[] Role { get; set; }
        public int[] IsActive { get; set; }
    }
}