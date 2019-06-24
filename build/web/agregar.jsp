<%-- 
    Document   : agregar
    Created on : 21/07/2018, 03:37:17 PM
    Author     : AndresZamora
--%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/user">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Agregar Usuarios</li>
            </ol>
         </nav>
        <h1>Agregar Usuarios</h1>
        <form name="form" action="<%=request.getContextPath()%>/agregar_post" method="post">
            <div class="form-group">
              <label for="exampleInputEmail1">Nombre</label>
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nombre" name="nom">
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Email</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="E-Mail" name="correo">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
    </body>
</html>
