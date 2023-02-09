<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
        <h1>Formulario usuarios</h1>
        <h3>Registrar usuarios</h3>
        <form action="SvUsuario" method="POST">
            <label>Usuario: </label> <input type="text" name="user">
            <label>Clave: </label> <input type="password" name="pass">
            <button type="submit">Registrar</button>
        </form>
        <h3>Consultar usuarios</h3>
        <form action="SvUsuario" method="GET">
            <button type="submit">Mostrar usuarios</button>
        </form>
        <h3>Eliminar usuarios</h3>
        <form action="SvEliminar" method="POST">
            <label>Id: </label> <input type="text" name="id_elim">
            <button type="submit">Eliminar</button>
        </form>
    </body>
</html>