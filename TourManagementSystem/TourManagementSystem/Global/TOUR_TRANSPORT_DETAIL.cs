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
    
    public partial class TOUR_TRANSPORT_DETAIL
    {
        public int TOUR_TRANSPORT_DETAIL_ID { get; set; }
        public int TOUR_TRANSPORT_ID { get; set; }
        public int TOUR_INFORMATION_ID { get; set; }
    
        public virtual TOUR_INFORMATION TOUR_INFORMATION { get; set; }
        public virtual TOUR_TRANSPORT TOUR_TRANSPORT { get; set; }
    }
}
