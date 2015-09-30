<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Principal | LEONA</title>
        
        <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"/>
        <link href="<c:url value="/resources/css/half-slider.css"/>" rel="stylesheet"/>
        <link href="<c:url value="/resources/css/modern-business.css"/>" rel="stylesheet"/>
        <link href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"/>
    </head>
    <body>
        <nav class="navbar navbar-fixed-top navbar-inverse " role="navigation">
            <div class="container">
                <div class="collapse navbar-collapse navbar-ex1-collapse ">
                    <ul class="nav navbar-nav ">
                        <li><a href="<c:url value='/'/>">Inicio</a></li>
                        <li><a href="<c:url value='/listagemEstacao'/>">Estações</a></li>
                    </ul>
                    <ul align="right" class="right">
                        <li><a href="<c:url value='/sair'/>">Sair</a></li> 
                    </ul>
                </div>
            </div>
        </nav>
        <br/><br/><br/> 
        
        
    </body>
</html>
