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
    
    public partial class TRAVEL_GROUP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TRAVEL_GROUP()
        {
            this.TOUR_STAFF_DETAIL = new HashSet<TOUR_STAFF_DETAIL>();
            this.TRAVELLER_DETAIL = new HashSet<TRAVELLER_DETAIL>();
        }
    
        public int TRAVEL_GROUP_ID { get; set; }
        public string TRAVEL_GROUP_NAME { get; set; }
        public string TRAVEL_GROUP_CONTENT_DETAIL { get; set; }
        public int TRAVEL_COST_ID { get; set; }
        public int TOUR_INFORMATION_ID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOUR_STAFF_DETAIL> TOUR_STAFF_DETAIL { get; set; }
        public virtual TRAVEL_COST TRAVEL_COST { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TRAVELLER_DETAIL> TRAVELLER_DETAIL { get; set; }
    }
}
