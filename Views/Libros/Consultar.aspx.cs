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
    public partial class Consultar : System.Web.UI.Page
    {
        // Instanciamos el controlador para acceder a la lista estática
        LibroController controlador = new LibroController();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Solo cargamos los datos la primera vez que se entra a la página
            if (!IsPostBack)
            {
                CargarGrid();
            }
        }

        private void CargarGrid()
        {
            gvLibros.DataSource = controlador.ObtenerLibros();
            gvLibros.DataBind();
        }

        // Lógica para el botón "Filtrar"
        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            string filtro = txtFiltro.Text.ToLower().Trim();
            var libros = controlador.ObtenerLibros();

            if (!string.IsNullOrEmpty(filtro))
            {
                // Filtramos por Código o Título usando LINQ
                var filtrados = libros.Where(l => l.Codigo.ToLower().Contains(filtro) ||
                                                 l.Titulo.ToLower().Contains(filtro)).ToList();
                gvLibros.DataSource = filtrados;
            }
            else
            {
                gvLibros.DataSource = libros;
            }
            gvLibros.DataBind();
        }

        // Lógica para los botones dentro de la tabla (Ver y Eliminar)
        protected void gvLibros_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string codigo = e.CommandArgument.ToString();

            if (e.CommandName == "Ver")
            {
                // Redirigimos a la página de detalle pasando el código por URL
                Response.Redirect("Detalle.aspx?Codigo=" + codigo);
            }
            else if (e.CommandName == "Eliminar")
            {
                controlador.Eliminar(codigo);
                CargarGrid(); // Refrescamos la tabla
            }
        }
    }
}