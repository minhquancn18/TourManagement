//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TourWeb.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class TOUR_TIME
    {
        public int TOUR_TIME_ID { get; set; }
        public Nullable<System.DateTime> TOUR_TIME_DEPARTMENT_DATE { get; set; }
        public Nullable<System.DateTime> TOUR_TIME_END_DATE { get; set; }
        public Nullable<int> TOUR_TIME_DAY { get; set; }
        public Nullable<int> TOUR_TIME_NIGHT { get; set; }
        public int TOUR_INFORMATION_ID { get; set; }
    
        public virtual TOUR_INFORMATION TOUR_INFORMATION { get; set; }
    }
}