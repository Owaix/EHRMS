using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using DataAccess;
using DataAccess.Models;
using System.Data.SqlClient;
using Common;
using System.Data;
using EHRMS.ViewModel;
using DataAccess.Interface;
using System.IO;
using System.Text;

namespace EHRMS.Controllers
{
    public class DashboardController : Controller
    {
        // GET Dashboard
        public ActionResult Index()
        {
            String text;
            var fileStram = new FileStream(@"C:\Users\Owais.Ansari\Documents\Visual Studio 2015\Projects\EHRMS\EHRMS\Scripts\Employee.json", FileMode.Open, FileAccess.Read);
            using (var streamReader = new StreamReader(fileStram, Encoding.UTF8))
            {
                text = streamReader.ReadToEnd();
            }
            return Json(text, JsonRequestBehavior.AllowGet);
        }
        //public async Task<IActionResult> Indexer()
        //{
        //    ApplicationUser user  = await 
        //    return View();
        //}
        public ActionResult Tabs()
        {
            List<Menu> listMenu;
            SqlParameter[] parameter = { };

            DataSet ds = SqlHelper.CallRProc("GetMenu", parameter);
            //listMenu = ds.Tables[0].AsEnumerable().Select(dataRow => new Menu
            //{
            //    Menu_Id = dataRow.Field<int>("Menu_Id"),
            //    Name = dataRow.Field<string>("Name")
            //}).ToList();
            //var GetSubmenu = ds.Tables[1].AsEnumerable().Select(dataRow => new SubMenu
            //{
            //    id = dataRow.Field<int>("id"),
            //    Menu_Id = dataRow.Field<int>("Menu_Id"),
            //    Name = dataRow.Field<string>("Name")
            //}).ToList();
            //var GetMenuSubMenu = ds.Tables[2].AsEnumerable().Select(dataRow => new MenuSubmenu
            //{
            //    Id = dataRow.Field<int>("Id"),
            //    Name = dataRow.Field<string>("Menu"),
            //    Class = dataRow.Field<string>("Class"),
            //    Sub_Id = dataRow.Field<int>("Sub_Id"),
            //    Sub_Name = dataRow.Field<string>("Submenu"),
            //    Menu_Id = dataRow.Field<int>("Menu_id")
            //}).ToList();


            var GetMenuSubMenu = ds.Tables[0].AsEnumerable().Select(dataRow => new MenuSubmenu
            {
                Id = dataRow.Field<int>("Id"),
                Name = dataRow.Field<string>("Menu"),
                Class = dataRow.Field<string>("Class"),
                Sub_Id = dataRow.Field<int>("Sub_Id"),
                Sub_Name = dataRow.Field<string>("Submenu"),
                Menu_Id = dataRow.Field<int>("Menu_id")
            }).ToList();

            var MenueItems = new List<Menu>();
            foreach (var menu in GetMenuSubMenu)
            {
                var men = MenueItems.Find(x => x.Menu_Id == menu.Menu_Id);
                if (men == null)
                {
                    men = new Menu() { Menu_Id = menu.Menu_Id, Name = menu.Name, Class = menu.Class };
                    MenueItems.Add(men);
                }
                men.feature.Add(new SubMenu()
                {
                    id = menu.Sub_Id,
                    Name = menu.Sub_Name
                });
            }

            //foreach (var menu in MenueItems)
            //{
            //    menu.feature = GetMenuSubMenu.FindAll(f => f.Menu_Id == menu.Menu_Id).ToList();
            //}


            //foreach (var menu in listMenu)
            //{
            //    menu.feature = GetSubmenu.FindAll(x => x.Menu_Id == menu.Menu_Id).ToList();
            //}
            //string jsonString = new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(listMenu);

            return View();
        }

        [HttpPost]
        public ActionResult Indexr()
        {
            HrContext db = new HrContext();
            return View(db.menu.ToList());
        }
        public ActionResult ddl()
        {
            HrContext db = new HrContext();
            return View(new EmployeeVM());
        }
        public int RunSql(CRUDop crud)
        {
            return crud.Delete();
        }
    }
}