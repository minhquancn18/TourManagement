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
    
    public partial class TOUR_STAFF_DETAIL
    {
        public int TOUR_STAFF_DETAIL_ID { get; set; }
        public int TOUR_STAFF_ID { get; set; }
        public int TOUR_MISSION_ID { get; set; }
        public int TRAVEL_GROUP_ID { get; set; }
    
        public virtual TOUR_MISSION TOUR_MISSION { get; set; }
        public virtual TOUR_STAFF TOUR_STAFF { get; set; }
        public virtual TRAVEL_GROUP TRAVEL_GROUP { get; set; }
    }
}
