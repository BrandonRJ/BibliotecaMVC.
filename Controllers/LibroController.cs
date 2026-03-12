using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BibliotecaMVC.Models;

namespace BibliotecaMVC.Controllers
{
    public class LibroController
    {
        // Lista estática que almacena los libros registrados
        public static List<Libro> libros = new List<Libro>();

        // Devuelve la lista completa de libros
        public List<Libro> ObtenerLibros()
        {
            return libros;
        }

        // Agrega un nuevo libro a la lista
        public void AgregarLibro(Libro libro)
        {
            libros.Add(libro);
        }

        // Busca un libro por su código
        public Libro Buscar(string codigo)
        {
            return libros.FirstOrDefault(l => l.Codigo == codigo);
        }

        // Elimina un libro según su código
        public void Eliminar(string codigo)
        {
            var libro = Buscar(codigo);
            if (libro != null)
                libros.Remove(libro);
        }
    }
}