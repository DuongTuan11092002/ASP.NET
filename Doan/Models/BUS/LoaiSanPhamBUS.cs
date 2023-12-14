using ShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Doan.Models.BUS
{
    public class LoaiSanPhamBUS
    {


        //hiển thị sản phẩm 
        public static IEnumerable<LoaiSanPham> DanhSachLoaiSP()
        {
            var db = new ShopConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham where TinhTrang = 0");

        }

        public static IEnumerable<SanPham> chitiet(String id)
        {
            var db = new ShopConnectionDB();
            return db.Query<SanPham>("select * from SanPham where MaLoaiSanPham = '"+id+"'");

        }
    }
}