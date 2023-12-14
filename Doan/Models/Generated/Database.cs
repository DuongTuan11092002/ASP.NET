




















// This file was automatically generated by the PetaPoco T4 Template
// Do not make changes directly to this file - edit the template instead
// 
// The following connection settings were used to generate this file
// 
//     Connection String Name: `ShopConnection`
//     Provider:               `System.Data.SqlClient`
//     Connection String:      `Data Source=DUONGTUAN\SQLEXPRESS;Initial Catalog=ShopMobile;Integrated Security=True`
//     Schema:                 ``
//     Include Views:          `False`



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;

namespace ShopConnection
{

	public partial class ShopConnectionDB : Database
	{
		public ShopConnectionDB() 
			: base("ShopConnection")
		{
			CommonConstruct();
		}

		public ShopConnectionDB(string connectionStringName) 
			: base(connectionStringName)
		{
			CommonConstruct();
		}
		
		partial void CommonConstruct();
		
		public interface IFactory
		{
			ShopConnectionDB GetInstance();
		}
		
		public static IFactory Factory { get; set; }
        public static ShopConnectionDB GetInstance()
        {
			if (_instance!=null)
				return _instance;
				
			if (Factory!=null)
				return Factory.GetInstance();
			else
				return new ShopConnectionDB();
        }

		[ThreadStatic] static ShopConnectionDB _instance;
		
		public override void OnBeginTransaction()
		{
			if (_instance==null)
				_instance=this;
		}
		
		public override void OnEndTransaction()
		{
			if (_instance==this)
				_instance=null;
		}
        

		public class Record<T> where T:new()
		{
			public static ShopConnectionDB repo { get { return ShopConnectionDB.GetInstance(); } }
			public bool IsNew() { return repo.IsNew(this); }
			public object Insert() { return repo.Insert(this); }

			public void Save() { repo.Save(this); }
			public int Update() { return repo.Update(this); }

			public int Update(IEnumerable<string> columns) { return repo.Update(this, columns); }
			public static int Update(string sql, params object[] args) { return repo.Update<T>(sql, args); }
			public static int Update(Sql sql) { return repo.Update<T>(sql); }
			public int Delete() { return repo.Delete(this); }
			public static int Delete(string sql, params object[] args) { return repo.Delete<T>(sql, args); }
			public static int Delete(Sql sql) { return repo.Delete<T>(sql); }
			public static int Delete(object primaryKey) { return repo.Delete<T>(primaryKey); }
			public static bool Exists(object primaryKey) { return repo.Exists<T>(primaryKey); }
			public static bool Exists(string sql, params object[] args) { return repo.Exists<T>(sql, args); }
			public static T SingleOrDefault(object primaryKey) { return repo.SingleOrDefault<T>(primaryKey); }
			public static T SingleOrDefault(string sql, params object[] args) { return repo.SingleOrDefault<T>(sql, args); }
			public static T SingleOrDefault(Sql sql) { return repo.SingleOrDefault<T>(sql); }
			public static T FirstOrDefault(string sql, params object[] args) { return repo.FirstOrDefault<T>(sql, args); }
			public static T FirstOrDefault(Sql sql) { return repo.FirstOrDefault<T>(sql); }
			public static T Single(object primaryKey) { return repo.Single<T>(primaryKey); }
			public static T Single(string sql, params object[] args) { return repo.Single<T>(sql, args); }
			public static T Single(Sql sql) { return repo.Single<T>(sql); }
			public static T First(string sql, params object[] args) { return repo.First<T>(sql, args); }
			public static T First(Sql sql) { return repo.First<T>(sql); }
			public static List<T> Fetch(string sql, params object[] args) { return repo.Fetch<T>(sql, args); }
			public static List<T> Fetch(Sql sql) { return repo.Fetch<T>(sql); }
			public static List<T> Fetch(long page, long itemsPerPage, string sql, params object[] args) { return repo.Fetch<T>(page, itemsPerPage, sql, args); }
			public static List<T> Fetch(long page, long itemsPerPage, Sql sql) { return repo.Fetch<T>(page, itemsPerPage, sql); }
			public static List<T> SkipTake(long skip, long take, string sql, params object[] args) { return repo.SkipTake<T>(skip, take, sql, args); }
			public static List<T> SkipTake(long skip, long take, Sql sql) { return repo.SkipTake<T>(skip, take, sql); }
			public static Page<T> Page(long page, long itemsPerPage, string sql, params object[] args) { return repo.Page<T>(page, itemsPerPage, sql, args); }
			public static Page<T> Page(long page, long itemsPerPage, Sql sql) { return repo.Page<T>(page, itemsPerPage, sql); }
			public static IEnumerable<T> Query(string sql, params object[] args) { return repo.Query<T>(sql, args); }
			public static IEnumerable<T> Query(Sql sql) { return repo.Query<T>(sql); }

		}

	}
	



    

	[TableName("dbo.LoaiSanPham")]



	[PrimaryKey("MaLoaiSanPham", AutoIncrement=false)]


	[ExplicitColumns]

    public partial class LoaiSanPham : ShopConnectionDB.Record<LoaiSanPham>  
    {



		[Column] public string MaLoaiSanPham { get; set; }





		[Column] public string TenLoaiSanPham { get; set; }





		[Column] public string TinhTrang { get; set; }



	}

    

	[TableName("dbo.NhaSanXuat")]



	[PrimaryKey("MaNhaSanXuat", AutoIncrement=false)]


	[ExplicitColumns]

    public partial class NhaSanXuat : ShopConnectionDB.Record<NhaSanXuat>  
    {



		[Column] public string MaNhaSanXuat { get; set; }





		[Column] public string TenNhaSanXuat { get; set; }





		[Column] public string TinhTrang { get; set; }



	}

    

	[TableName("dbo.SanPham")]



	[PrimaryKey("MaSanPham", AutoIncrement=false)]


	[ExplicitColumns]

    public partial class SanPham : ShopConnectionDB.Record<SanPham>  
    {



		[Column] public string MaSanPham { get; set; }





		[Column] public string MaLoaiSanPham { get; set; }





		[Column] public string MaNhaSanXuat { get; set; }





		[Column] public string TenSanPham { get; set; }





		[Column] public string CauHinh { get; set; }





		[Column] public string MoTa { get; set; }





		[Column] public string HinhAnh { get; set; }





		[Column] public int? Gia { get; set; }





		[Column] public int? SoLuongDaBan { get; set; }





		[Column] public string TinhTrang { get; set; }





		[Column] public string GhiChu { get; set; }



	}


}
