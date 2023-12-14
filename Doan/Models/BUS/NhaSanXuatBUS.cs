using ShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Doan.Models.BUS
{
    public class NhaSanXuatBUS
    {
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var dbNSX = new ShopConnectionDB();
            return dbNSX.Query<NhaSanXuat>("select * from NhaSanXuat where TinhTrang = 0");
        }

        public static IEnumerable<SanPham> ChiTiet(String id)
        {
            var dbChiTiet = new ShopConnectionDB();
            return dbChiTiet.Query<SanPham>("select * from SanPham where MaNhaSanXuat = '"+id+"'");
        }
    }
}