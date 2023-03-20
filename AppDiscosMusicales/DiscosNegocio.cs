using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;//Agregar Biblioteca para establecer la conexión con SQL

namespace AppDiscosMusicales
{
    public class DiscosNegocio
    {
        //para establecer la conexión
        public List<Discos>listar(){
        
        List<Discos>lista=new List<Discos>();

            SqlConnection conexion = new SqlConnection();
            SqlCommand comando= new SqlCommand();
            SqlDataReader lector;

            try
            {
                conexion.ConnectionString = "server=.\\SQLEXPRESS;database=DISCOS_DB;integrated security = true";//dirección del motor de la base de datos local + nombre de la base de datos(Integrated security si se está conectado con Windows autentication)
                comando.CommandType=System.Data.CommandType.Text;
                comando.CommandText = "select Titulo,FechaLanzamiento,CantidadCanciones, UrlImagenTapa,e.Descripcion as TipoEstilo,t.Descripcion as TipoEdicion from DISCOS d, ESTILOS e, TIPOSEDICION t where d.IdEstilo=e.Id And d.IdTipoEdicion=t.id";//Copiar y pegar de SQL
                comando.Connection= conexion;
                conexion.Open();//Abre la conexion
                lector= comando.ExecuteReader();//realiza la lectura
                while (lector.Read())//si pudo leer da true y entra al while 
                {
                    Discos aux = new Discos();
                    aux.Titulo = (string)lector["Titulo"];
                    aux.FechaLanzamiento = (DateTime)lector["FechaLanzamiento"];
                    aux.CantidadCanciones = (int)lector["CantidadCanciones"];
                    aux.UrlTapa = (string)lector["UrlImagenTapa"];
                    aux.TipoEstilo= new Estilo();
                    aux.TipoEstilo.DescripcionEstilo = (string)lector["TipoEstilo"];
                    aux.TipoEdicion = new Edicion();
                    aux.TipoEdicion.DescripcionEdicion = (string)lector["TipoEdicion"];

                    lista.Add(aux);
                   
                }//fin del while
            conexion.Close(); //cierra la conexión a la base de datos.
            return lista;
            } //fin del try
            catch (Exception ex)
            {
                conexion.Close();
                throw ex;

            }





        }
    }
}
