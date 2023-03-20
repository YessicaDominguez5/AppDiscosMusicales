using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AppDiscosMusicales
{
    public partial class Form1 : Form
    {
        private List<Discos> listaDiscos;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            DiscosNegocio negocio= new DiscosNegocio();
            listaDiscos = negocio.listar();
            TablaDiscos.DataSource = listaDiscos;//carga la información al Data Grid View
            TablaDiscos.Columns["UrlTapa"].Visible= false; //Oculta la columna de la url
            cargarImagen(listaDiscos[0].UrlTapa);//Para al inicializar el programa muestre la primer imagen
        }

        private void TablaDiscos_SelectionChanged(object sender, EventArgs e)
        {
            // No hace falta instanciarlo porque es una variable que se transforma en objeto al recibir otro.
            Discos seleccionado = (Discos)TablaDiscos.CurrentRow.DataBoundItem;//que traiga del data grid view,en la fila actual, el objeto enlazado(la imagen de la tapa del disco).
            cargarImagen(seleccionado.UrlTapa);

        }

        private void cargarImagen(string url)
        {
            try
            {
                imagenTapa.Load(url);
            }
            catch (Exception)
            {
                imagenTapa.Load("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/681px-Placeholder_view_vector.svg.png");
                //si no está cargada la url muestra la imagen del placeholder
            }

        }
    }
}
