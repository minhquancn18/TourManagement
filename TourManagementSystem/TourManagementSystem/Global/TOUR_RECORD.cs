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
    
    public partial class TOUR_RECORD
    {
        public int TOUR_RECORD_ID { get; set; }
        public string TOUR_RECORD_CONTENT { get; set; }
        public Nullable<System.DateTime> TOUR_RECORD_DATE { get; set; }
        public int TOUR_STAFF_ID { get; set; }
    
        public virtual TOUR_STAFF TOUR_STAFF { get; set; }
    }
}
