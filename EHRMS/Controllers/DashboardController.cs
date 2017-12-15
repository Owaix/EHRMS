using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using EHRMS.IdentityExtensions;
using DataAccess;

namespace EHRMS.Controllers
{
    public class DashboardController : Controller
    {
        // GET Dashboard
        public ActionResult Index()
        {

            return View();
        }
        //public async Task<IActionResult> Indexer()
        //{
        //    ApplicationUser user  = await 
        //    return View();
        //}
        [HttpPost]
        public ActionResult Indexr()
        {
            HrContext db = new HrContext();
            return View(db.menu.ToList());
        }
    }
}