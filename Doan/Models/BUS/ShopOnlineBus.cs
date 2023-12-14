using ShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Doan.Models.BUS
{
    public class ShopOnlineBus
    {

        //hiển thị sản phẩm 
        public static IEnumerable<SanPham> DanhSach() 
        {
            var db = new ShopConnectionDB();
            return db.Query<SanPham>("select * from SanPham where TinhTrang = 0");

        }



        //chi tiết sản phẩm
        public static SanPham Chitiet(String a)
        {
            var db = new ShopConnectionDB();
            return db.SingleOrDefault<SanPham> ("select * from SanPham where MaSanPham = @0", a);

        }


        //hiển thị danh sách trang chủ bán chạy
        public static IEnumerable<SanPham> Top4New()
        {
            var dbHot = new ShopConnectionDB();
            return dbHot.Query<SanPham>("select TOP 3 * from SanPham where GhiChu = N'New'"); //Lấy phần ghi chú là new sẽ được hiển thị sản phẩm bán chạy
        }


    }
}