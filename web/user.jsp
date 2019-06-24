<%-- 
    Document   : user
    Created on : 21/07/2018, 02:51:17 PM
    Author     : AndresZamora
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8"/>
        <%@include file="header.jsp" %>
        <title>Usuarios</title>
    </head>
    <body>
        <h1>Usuarios</h1>
        <p><a href="<%=request.getContextPath()%>/agregar" class="btn btn-success">Agregar</a></p>
        <table class="table table-bordered">
            <thead>
            <th>ID</th>
            <th>Nombre</th>
            <th>E-Mail</th>
            <th>Acciones</th>
            </thead>
            <tbody>
            <c:forEach items="${datos}" var="dato">
                <tr>
                    <td><c:out value="${dato.getId()}"/></td>
                    <td><c:out value="${dato.getNombre()}"/></td>
                    <td><c:out value="${dato.getCorreo()}"/></td> 
                    <td><a href="<%=request.getContextPath()%>/editar?id=<c:out value="${dato.getId()}"/>"><i class="fas fa-pen-square fa-2x"></i></a>
                        <a href="javascript:void(0);" onclick="eliminar('<%=request.getContextPath()%>/eliminar?id=<c:out value="${dato.getId()}"/>')"><i class="fas fa-trash fa-2x"></i></a>
                    </td> 
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </body>
</html>
