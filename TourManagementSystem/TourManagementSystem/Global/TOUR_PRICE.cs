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
    
    public partial class TOUR_PRICE
    {
        public int TOUR_PRICE_ID { get; set; }
        public Nullable<double> TOUR_COST { get; set; }
        public Nullable<System.DateTime> TOUR_TIME { get; set; }
        public int TOUR_ID { get; set; }
    
        public virtual TOUR TOUR { get; set; }
    }
}