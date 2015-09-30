<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrado com Sucesso | LEONA</title>
        <link href="<c:url value="./resources/css/bootstrap.css"/>" rel="stylesheet">
        <link href="<c:url value="./resources/css/half-slider.css"/>" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-fixed-top navbar-inverse " role="navigation">
            <div class="container">
                <div class="collapse navbar-collapse navbar-ex1-collapse ">
                    <ul class="nav navbar-nav ">
                        <li><a href="<c:url value='/'/>">Inicio</a></li>
                        <li><a href="<c:url value='/login'/>">Login</a></li>   
                        <li><a href="<c:url value='/cadastroUsuario'/>">Cadastrar</a></li> 
                    </ul>
                </div>
            </div>
        </nav>
        <br/><br/><br/>   
        <div class="container">
            <h1 align="center">Usuário Cadastrado com Sucesso</h1>
            <br/><br/>            
        </div>
    </body>
</html>
