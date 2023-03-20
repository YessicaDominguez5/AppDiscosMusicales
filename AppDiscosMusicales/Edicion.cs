using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDiscosMusicales
{
    public class Edicion
    {
        public int idEdicion { get; set; }
        public string DescripcionEdicion { get; set; }

        public override string ToString()
        {
            return DescripcionEdicion;//devuelve que tipo de esdición es
        }
    }
}
