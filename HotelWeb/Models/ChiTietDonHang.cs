//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HotelWeb.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ChiTietDonHang
    {
        public string MaChiTietDonHang { get; set; }
        public string MaChiTietPhong { get; set; }
        public string MaDonHang { get; set; }
        public Nullable<int> SoLuong { get; set; }
        public Nullable<double> DonGia { get; set; }
    
        public virtual ChiTietPhong ChiTietPhong { get; set; }
        public virtual DonHang DonHang { get; set; }
    }
}
