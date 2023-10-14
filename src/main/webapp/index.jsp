<!-- CONSIGNA
Hacer una página HTML
que capture los datos en una solicitud
Continene el botón “borrar” que borra todos los datos
de la solicitud. Los campos pueden llevar valores por default. -->

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <meta http-equiv="Content-Type"
    content="text/html; charset = UTF-8">
    <title>Registro</title>

<%--   ZONA BOOTSTRAP --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">

<%--    ZONA SCRIPT--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="./js/script.js"></script>

</head>
<body>

<div class="container rounded mt-4 p-2">
<h1>Registro</h1>
<p>Luego de registrarte dale click al botón enviar</p>

<!--Zona de form-->

    <form action="paginaDestino.jsp">
        <%-- NOMBRE --%>
        <div class="form-group">
            <label for="nombre">Nombre/s</label>
            <input type="text" class="form-control" id="nombre" aria-describedby="nombreHelp" placeholder="Ingrese su/sus nombre/es">
            <small id="nombreHelp" class="form-text text-muted">Introduzca su/sus nombres.</small>
        </div>
        <%-- APELLIDO --%>
        <div class="form-group">
            <label for="apellido">Apellido/s</label>
            <input type="text" class="form-control" id="apellido" aria-describedby="apellidoHelp" placeholder="Ingrese su/sus apellido/os">
            <small id="apellidoHelp" class="form-text text-muted">Introduzca su/sus apellido/os</small>
        </div>
        <%-- LISTA DNI --%>
        <div class=" form-group ">
            <label for="type_doc" class="control-label">Tipo de Documento</label>
                 <select class="form-select form-control" id="type_doc" name="type_doc" aria-describedby="dniHelp" onclick="habilitarDni()">
                    <option value="0">Selecciones una opción de la lista</option>
                    <option value="0029" class="form-text text-muted">Documento Único</option>
                    <option value="0025" class="form-text text-muted">Libreta de Enrolamiento</option><
                    <option value="0026" class="form-text text-muted">Libreta Cívica</option>
                    <option value="4" class="form-text text-muted">Otros</option>
                </select>
            <small id="dniHelp" class="form-text text-muted">Selecciones su documentación identificatoria</small>
        </div>
<%--            NUMERO DE IDENTIFICACION--%>
<%--            se activa solo cuando se completa el campo de las lista tipo de documento--%>
            <div class="form-group">
                <label for="numeroDocumento">Número de Documento</label>
                <input type="text" class="form-control" id="numeroDocumento" aria-describedby="docHelp" placeholder="Ingrese su número de documento" disabled/>
                <small id="docHelp" class="form-text text-muted">Introduzca número de documento sin puntos ni separadores</small>
            </div>
<%--        EMAIL--%>
        <div class="form-group">
            <label for="miEmail">Email de uso frecuente</label>
            <input type="email" class="form-control" id="miEmail" aria-describedby="emailHelp" placeholder="Ingresá tu email">
            <small id="emailHelp" class="form-text text-muted">Su email será su usuario. Nunca compartiremos su email con otras personas o entidades.</small>
        </div>
<%--        CONTRASEÑA    --%>
        <div class="form-group">
            <label for="miPassword">Password</label>
            <input type="password" class="form-control" id="miPassword" placeholder="Contraseña de registro">
            <small id="miPasswordHelp" class="form-text text-muted">Nunca comparta su contraseña con nadie. Nadie de la empresa se contactará para pedirle tu clave.</small>

        </div>

        </br>

<%--        FORMULARIO DE HABILIDADES --%>
        <div class="card-body mt-1 mb-2 ">
            <label >Señale sus habilidades tecnologicas</label>
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="check1" name="html" value="html">
            <label class="form-check-label" for="check1">HTML5</label>
        </div>

        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="check2" name="css" value="css">
            <label class="form-check-label" for="check2">CSS3</label>
        </div>

        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="check3" name="js" value="js">
            <label class="form-check-label" for="check3">JavaScript</label>
        </div>

        <!-- Checkbox para activar/desactivar el input -->
        <input type="checkbox" class="form-check-input" id="otrasTecnologiasCheckbox" onclick="habilitarInput()"/>
        <label for="otrasTecnologiasCheckbox">Otras tecnologías</label>

        </br>
        <%--            OTRAS TECNOLOGIAS--%>
        <div class="form-group py-1">
            <label for="otrasTecnologiasInput">Otras tecnologías</label>
            <!-- Input habilitado cuando se marca el checkbox -->
            <input type="text" class="form-control" id="otrasTecnologiasInput" aria-describedby="otrasTecnoHelp" placeholder="Ingrese otras habilidades tecnológicas" disabled/>
            <small id="otrasTecnoHelp" class="form-text text-muted">Introduzca otras habilidades tecnológicas que posea</small>
        </div>
        </div>
    <div class="d-grid gap-2 d-flex mx-1  justify-content-around">
        <button type="reset" class="borrar btn shadow col-5 " value="Borrar">Borrar</button>
        <button type="submit" class="enviar btn shadow col-5 ">Enviar</button>
    </div>
    </form>
  </div>
</body>
</html>