function confirmarEliminar() {
    return confirm("¿Seguro que deseas eliminar este libro?");
}

function validarTitulo() {
    var titulo = document.getElementById("txtTitulo").value;

    if (titulo.trim() === "") {
        alert("Debe ingresar el título del libro");
        return false;
    }

    return true;
}

function mostrarMensaje() {
    alert("Libro registrado correctamente");
}