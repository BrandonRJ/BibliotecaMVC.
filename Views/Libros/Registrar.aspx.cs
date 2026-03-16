using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaMVC.Controllers;
using BibliotecaMVC.Models;

namespace BibliotecaMVC.Views.Libros
{
    public partial class Registrar : System.Web.UI.Page
    {
        // Instanciamos el controlador
        LibroController controlador = new LibroController();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // Solo entramos si los validadores (RequiredField) están OK
            {
                try
                {
                    // 1. VALIDACIÓN: ¿Ya existe este código?
                    if (controlador.Buscar(txtCodigo.Text.Trim()) != null)
                    {
                        lblMensaje.Text = "Error: El código ya está registrado.";
                        lblMensaje.CssClass = "text-danger";
                        lblMensaje.Visible = true;
                        return; // Sale del método y NO guarda
                    }

                    // 2. Creamos el objeto Libro
                    Libro nuevoLibro = new Libro();
                    nuevoLibro.Codigo = txtCodigo.Text.Trim();
                    nuevoLibro.Titulo = txtTitulo.Text.Trim();
                    nuevoLibro.Autor = txtAutor.Text.Trim();
                    nuevoLibro.FechaPublicacion = DateTime.Parse(txtFecha.Text);


                    // 3. Guardar y Redirigir
                    controlador.AgregarLibro(nuevoLibro);
                    Response.Redirect("Consultar.aspx");
                }
                catch (Exception ex)
                {
                    lblMensaje.Text = "Error al registrar: " + ex.Message;
                    lblMensaje.CssClass = "text-danger";
                    lblMensaje.Visible = true;
                }
            }
        }
    }
}
