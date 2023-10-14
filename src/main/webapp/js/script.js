//Funcion para habilitar DNI
function habilitarDni() {
    var select = document.getElementById('type_doc');
    var input = document.getElementById('numeroDocumento');

    if (select.value) {
        input.disabled = false;
    } else {
        input.disabled = true;
    }
}


//Funcion para habilitar otras habilidades tecnológicas
function habilitarInput() {
    var input = document.getElementById('otrasTecnologiasInput');
    var checkbox = document.getElementById('otrasTecnologiasCheckbox');

    if (checkbox.checked) {
        input.disabled = false;
    } else {
        input.disabled = true;
    }
}