//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TourManagementSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class TOUR
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TOUR()
        {
            this.TOUR_LOCATION_DETAILED = new HashSet<TOUR_LOCATION_DETAILED>();
            this.TOUR_PRICE = new HashSet<TOUR_PRICE>();
            this.TRAVEL_GROUP = new HashSet<TRAVEL_GROUP>();
        }
    
        public int TOUR_ID { get; set; }
        public string TOUR_NAME { get; set; }
        public string TOUR_CHARACTERISTIS { get; set; }
        public string TOUR_TYPE { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOUR_LOCATION_DETAILED> TOUR_LOCATION_DETAILED { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOUR_PRICE> TOUR_PRICE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TRAVEL_GROUP> TRAVEL_GROUP { get; set; }
    }
}
