using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations; // Importa las anotaciones para validación de datos


namespace BibliotecaMVC.Models
{
    public class Libro
    { // El campo Codigo es obligatorio
        [Required(ErrorMessage = "Código requerido")]
        public string Codigo { get; set; }

        // El campo Titulo es obligatorio y máximo 100 caracteres
        [Required, StringLength(100)]
        public string Titulo { get; set; }

        // Campo opcional para el nombre del autor
        public string Autor { get; set; }
        // Campo para la fecha de publicacion
        public DateTime FechaPublicacion { get; set; }
    }
}
