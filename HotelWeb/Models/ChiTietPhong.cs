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
    
    public partial class ChiTietPhong
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ChiTietPhong()
        {
            this.ChiTietDonHangs = new HashSet<ChiTietDonHang>();
        }
    
        public string MaChiTietPhong { get; set; }
        public string MaPhong { get; set; }
        public string MoTaPhong { get; set; }
        public string MaLoai { get; set; }
        public Nullable<decimal> Gia { get; set; }
        public string HinhAnh { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }
        public virtual LoaiPhong LoaiPhong { get; set; }
        public virtual Phong Phong { get; set; }
    }
}
