<%-- 
    Document   : editar
    Created on : 21/07/2018, 05:45:15 PM
    Author     : AndresZamora
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp" %>
        <meta charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/user">Home</a></li>
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/agregar">Agregar Usuarios</a></li>
                <li class="breadcrumb-item active" aria-current="page">Editar Usuarios</li>
            </ol>
         </nav>
        <h1>Editar Usuario</h1>
        <form name="form" action="<%=request.getContextPath()%>/editar_post" method="post">
            <div class="form-group">
              <label for="exampleInputEmail1">Nombre</label>                                                                                            <!--con sintaxis de JSTL-->
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nombre" name="newNombre" value="<c:out value="${oldNombre}"/>">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Email</label>                                                                                               <!--con sintaxis de scriptlet-->
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="E-Mail" name="newCorreo" value="<%=request.getAttribute("oldCorreo")%>">
            </div>
              <input type="hidden" value="<%=request.getParameter("id")%>" name="id"/>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
    </body>
</html>
