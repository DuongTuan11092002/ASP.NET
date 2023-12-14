using Doan.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Doan.Controllers
{
    public class NhaSanXuatController : Controller
    {
        // GET: NhaSanXuat
        public ActionResult Index(String id, int page = 1, int pagesize = 6)
        {
            var dbChiTiet = NhaSanXuatBUS.ChiTiet(id).ToPagedList(page, pagesize);
            return View(dbChiTiet);
        }
    }
}