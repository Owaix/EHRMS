using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using EHRMS.IdentityExtensions;

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
            return View();
        }
    }
}