<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%
List<Libro> lista = (List<Libro>)request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTADO DE LIBROS</h1>
        
        <p><a href="MainController?op=nuevo">NUEVO</a></p>
        
        <table border="2">
         
                <tr>
                    <th>ID</th>
                    <th>ISBN</th>
                    <th>TITULO</th>
                    <th>CATEGORIA</th>
                    <th></th>
                </tr>
          
            <c:forEach var="item" items="${lista}">
                 <tr>
                    <td>${item.id}</td>
                    <td>${item.isbn}</td>
                    <td>${item.titulo}</td>
                    <td>${item.categoria}</td>
                    
                    <td>
                        <a href="MainController?op=eliminar&id=${item.id}"onclick="return (confirm('estas seguro de eliminar ?'))">ELIMINAR</a>
                    </td>
                </tr>
            </c:forEach>
          
        </table>

        
    </body>
</html>
