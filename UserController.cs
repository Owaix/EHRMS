using Common.Extensions;
using DataAccess;
using DataAccess.Models;
using EHRMS.ViewModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;

namespace EHRMS.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        public ActionResult Index()
        {
            DataSet ds = new GetMenu { Id =1 ,Class = "table striped"}.Select();
            return View();
        }
    }
}