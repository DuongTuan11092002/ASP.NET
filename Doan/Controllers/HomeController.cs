﻿using Doan.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Doan.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var dbHot = ShopOnlineBus.DanhSachHot();
            return View(dbHot);
        }

   

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}