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
    
    public partial class TOUR_STAFF
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TOUR_STAFF()
        {
            this.TOUR_MISSION = new HashSet<TOUR_MISSION>();
        }
    
        public int TOUR_STAFF_ID { get; set; }
        public string TOUR_STAFF_NAME { get; set; }
        public Nullable<System.DateTime> TOUR_STAFF_BIRTH { get; set; }
        public string TOUR_STAFF_SEX { get; set; }
        public Nullable<int> TOUR_STAFF_CITIZEN_IDENTITY { get; set; }
        public string TOUR_STAFF_ADDRESS { get; set; }
        public Nullable<System.DateTime> TOUR_STAFF_START_DATE { get; set; }
        public Nullable<int> TOUR_STAFF_PHONE_NUMBER { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOUR_MISSION> TOUR_MISSION { get; set; }
    }
}