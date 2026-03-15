function confirmarEliminar() {
    // Retorna directamente el resultado del confirm
    return confirm("¿Está seguro de que desea eliminar este libro? Esta acción no se puede deshacer.");
}

function validarTitulo() {
    // Usamos un selector que busca el ID que TERMINE en txtTitulo 
    // Esto soluciona el problema de las Master Pages
    var txtTitulo = document.querySelector('[id$="txtTitulo"]');

    if (txtTitulo && txtTitulo.value.trim() === "") {
        alert("Atención: Debe ingresar el título del libro.");
        txtTitulo.focus(); // Pone el cursor en el campo para ayudar al usuario
        return false; // Cancela el envío al servidor
    }

    return true; // Permite el envío
}

function mostrarMensaje() {
    alert("¡Libro registrado correctamente!");
}