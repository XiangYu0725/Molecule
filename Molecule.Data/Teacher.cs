//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Molecule.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Teacher : Person
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Teacher()
        {
            this.Classes = new HashSet<Class>();
            this.Exams = new HashSet<Exam>();
        }
    
        public string Subject { get; set; }
        public string SecondarySubject { get; set; }
        public int Age { get; set; }
        public SchoolRule Role { get; set; }
        public string WorkNumber { get; set; }
        public byte[] Picture { get; set; }
        public int DepartmentId { get; set; }
    
        public virtual Class HeadmasterOf { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Class> Classes { get; set; }
        public virtual Department Department { get; set; }
        public virtual Department DeanOf { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Exam> Exams { get; set; }
    }
}
