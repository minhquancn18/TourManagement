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
    
    public partial class TOUR
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TOUR()
        {
            this.TOUR_IMAGE = new HashSet<TOUR_IMAGE>();
            this.TOUR_INFORMATION = new HashSet<TOUR_INFORMATION>();
            this.TOUR_PLACE_DETAILED = new HashSet<TOUR_PLACE_DETAILED>();
        }
    
        public int TOUR_ID { get; set; }
        public string TOUR_NAME { get; set; }
        public string TOUR_CHARACTERISTIS { get; set; }
        public string TOUR_TYPE { get; set; }
        public string TOUR_IS_EXIST { get; set; }
        public Nullable<double> TOUR_STAR { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOUR_IMAGE> TOUR_IMAGE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOUR_INFORMATION> TOUR_INFORMATION { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TOUR_PLACE_DETAILED> TOUR_PLACE_DETAILED { get; set; }
    }
}
