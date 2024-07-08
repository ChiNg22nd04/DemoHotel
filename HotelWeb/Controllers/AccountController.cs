using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HotelWeb.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Index() // đăng nhập
        {
            return View();
        }
        [HttpPost]
        public ActionResult SubmitForm(string username, string password)
        {
            // Xử lý dữ liệu form ở đây

            // Chuyển hướng sang trang đăng nhập
            return RedirectToAction("Index", "Account");
        }
        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }
    }
}