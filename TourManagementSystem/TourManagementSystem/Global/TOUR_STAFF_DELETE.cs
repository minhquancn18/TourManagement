//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TourManagementSystem.Global
{
    using System;
    using System.Collections.Generic;
    
    public partial class TOUR_STAFF_DELETE
    {
        public int TOUR_STAFF_DELETE_ID { get; set; }
        public Nullable<bool> TOUR_STAFF_DELETE_ISDELETED { get; set; }
        public Nullable<System.DateTime> TOUR_STAFF_DELETE_DATE { get; set; }
        public int TOUR_STAFF_ID { get; set; }
        public string TOUR_STAFF_DELETE_CONTENT { get; set; }
    
        public virtual TOUR_STAFF TOUR_STAFF { get; set; }
    }
}
