using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Molecule.Core.Persistence
{
   public abstract class DbPersistence
   {
      public abstract Type ContractType { get; }
      public Save
   }

   public class DbPersistence<T> : DbPersistence where T : class, new()
   {
      public override Type ContractType
      {
         get { return typeof(T); }
      }
   }
}
