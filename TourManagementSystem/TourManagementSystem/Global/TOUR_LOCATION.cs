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
    
    public partial class TOUR_LOCATION
    {
        public int TOUR_LOCATION_ID { get; set; }
        public string TOUR_LOCATION_NAME { get; set; }
        public int PLACE_ID { get; set; }
        public string TOUR_LOCATION_ADDRESS { get; set; }
        public string TOUR_LOCATION_DESCRIPTION { get; set; }
    
        public virtual PLACE PLACE { get; set; }
    }
}
