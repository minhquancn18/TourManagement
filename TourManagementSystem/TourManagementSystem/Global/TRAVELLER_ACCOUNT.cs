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
    
    public partial class TRAVELLER_ACCOUNT
    {
        public int TRAVELLER_ACCOUNT_ID { get; set; }
        public string TRAVELLER_ACCOUNT_NAME { get; set; }
        public string TRAVELLER_ACCOUNT_PASSWORD { get; set; }
        public int TRAVELLER_ID { get; set; }
    
        public virtual TRAVELLER TRAVELLER { get; set; }
    }
}
