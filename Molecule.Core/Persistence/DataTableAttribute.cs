using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Molecule.Core.Persistence
{
   [AttributeUsage(AttributeTargets.Class, AllowMultiple = true)]
   public class DataTableAttribute : Attribute
   {
      public DataTableAttribute(string table)
      {
         Table = table;
      }

      public string Table { get; }
   }
}
