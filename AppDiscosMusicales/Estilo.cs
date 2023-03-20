using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDiscosMusicales
{
    public class Estilo
    {
        public int IdEstilo { get; set; }
        public string DescripcionEstilo { get; set; }
        public override string ToString()
        {
            return DescripcionEstilo;//devuelve que tipo de estilo es
        }

    }
}
