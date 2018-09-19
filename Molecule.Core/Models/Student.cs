using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Molecule.Core.Persistence;
using System.Data;
using System.Runtime.Serialization;

namespace Molecule.Core.Models
{
   [Serializable]
   [DataContract]
   public class Student : Person
   {
      [DataMember]
      public int Grade { get; set; }
      [DataMember]
      public int Class { get; set; }
      
   }
}
