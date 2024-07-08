using HotelWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HotelWeb.Controllers
{
    public class QuanLyPhongController : Controller
    {
      
            KhachSanEntities database = new KhachSanEntities();

            public ActionResult QuanLyPhong()
            {
            var phong = database.Phongs.Include("LoaiPhong").Include("TrangThaiPhong").Include("TrangThaiDonDep").ToList();
            return View(phong);
        }
        }
}