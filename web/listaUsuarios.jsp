<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de usuarios</title>
    </head>
    <body>
        <h1>Lista de usuarios</h1>
        
        <%
            List <Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            for(Usuario usu : listaUsuarios) {
        %>
        <p>Usuario: <%=usu.getUser()%> , Id: <%=usu.getId()%></p>
        <%
            }
        %>
        
        <a href="index.jsp">Volver al inicio</a>
    </body>
</html>
