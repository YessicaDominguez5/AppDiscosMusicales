using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppDiscosMusicales
{
   public class Discos
    { 
        public string Titulo { get; set; }
        public DateTime FechaLanzamiento { get; set; }
        public int CantidadCanciones { get; set; }
        public string UrlTapa { get; set; }
        public Estilo TipoEstilo { get; set; }
        public Edicion TipoEdicion { get; set; }


    }
}
