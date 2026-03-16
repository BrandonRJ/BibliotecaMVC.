using System;
using BibliotecaMVC.Controllers;
using BibliotecaMVC.Models;

namespace BibliotecaMVC.Views.Libros
{
    public partial class Detalle : System.Web.UI.Page
    {
        // Instanciamos el controlador para acceder a la lista estática
        LibroController controlador = new LibroController();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Recuperamos el código enviado por la URL (?Codigo=...)
                string codigoRecibido = Request.QueryString["Codigo"];

                if (!string.IsNullOrEmpty(codigoRecibido))
                {
                    // Usamos el método Buscar que ya tienes en tu controlador
                    Libro libroEncontrado = controlador.Buscar(codigoRecibido);

                    if (libroEncontrado != null)
                    {
                        // Asignamos los datos a los Labels
                        lblCodigo.Text = libroEncontrado.Codigo;
                        lblTitulo.Text = libroEncontrado.Titulo;
                        lblAutor.Text = libroEncontrado.Autor;

                        lblFecha.Text = libroEncontrado.FechaPublicacion.ToShortDateString();


                        

                        // 2. ¡IMPORTANTE! Mostramos el panel que contiene los labels
                        pnlDetalle.Visible = true;

                        // 3. Ocultamos cualquier mensaje de error previo
                        lblMensajeError.Visible = false;
                    }
                    else
                    {
                        // Si no existe, enviamos de vuelta al catálogo
                        Response.Redirect("Consultar.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Consultar.aspx");
                }

            }
        }
    }
 
}