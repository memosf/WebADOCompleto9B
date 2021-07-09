using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;
using System.Data;


namespace WebPruebaAccesoSQL
{
    public partial class WebPruebaMySQL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private MySqlConnection ConexionMysql(ref string mensaje)
        {
            MySqlConnection cnMy = new MySqlConnection();
            //cnMy.ConnectionString = "Server=localhost;Port=3306;Database=otra;Uid=root;Pwd="+ TextBox1.Text + ";";
            cnMy.ConnectionString = "Server=127.0.0.1;Port=3306;Database=otra;Uid=root;Pwd=" + TextBox1.Text + ";";
                        try
            {
                cnMy.Open();
                mensaje = "Conexión Abierta con MySQL";

            }
            catch (Exception h)
            {
                mensaje = "Error: " + h.Message;
                cnMy = null;
            }

            return cnMy;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MySqlConnection cnNueva = null;
            MySqlCommand carrito = null;
            DataSet contenedor = null;
            MySqlDataAdapter trailer = null;
            string query = "select * from materia ";
            string m = "";
            cnNueva = ConexionMysql(ref m);
            if(cnNueva!=null)
            {
                carrito = new MySqlCommand();
                carrito.CommandText = query;
                carrito.Connection = cnNueva;
                trailer = new MySqlDataAdapter();
                trailer.SelectCommand = carrito;
                contenedor = new DataSet();
                try
                {
                    trailer.Fill(contenedor);
                    TextBox2.Text = "Consulta Correcta";
                    GridView1.DataSource = contenedor.Tables[0];
                    GridView1.DataBind();
                }
                catch(Exception w)
                {
                    TextBox2.Text = "Error: " + w.Message;
                }
                cnNueva.Close();
                cnNueva.Dispose();
            }
            else
            {
                TextBox2.Text = m;
            }
        }
    }
}