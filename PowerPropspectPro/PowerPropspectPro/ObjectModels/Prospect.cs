//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PowerPropspectPro.ObjectModels
{
    using System;
    using System.Collections.Generic;
    
    public partial class Prospect
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Prospect()
        {
            this.Contacts = new HashSet<Contact>();
            this.Touches = new HashSet<Touch>();
            this.Addresses = new HashSet<Address>();
        }
    
        public int ProspectId { get; set; }
        public string ProspectName { get; set; }
        public string ProspectSource { get; set; }
        public string ProspectDateAdded { get; set; }
        public string ProspectAssignedTo { get; set; }
        public string ProspectNumber { get; set; }
    
        public virtual Customer Customer { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Contact> Contacts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Touch> Touches { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Address> Addresses { get; set; }
    }
}
