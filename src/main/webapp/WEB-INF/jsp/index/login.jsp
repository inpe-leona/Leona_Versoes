<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login | LEONA</title>
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
        <div align="center">
            <h1 align="center">Login</h1>
            <hr/>
            <form action="<c:url value='/logarUsuario'/>" method="post">
                <div class="row" align="center">
                    <div class="form-group col-lg-4" align="center"></div>
                    <div class="form-group col-lg-4" align="center">
                        <input type="text" name="usuario.email" placeholder="Email" class="form-control" id="input2" value="${usuario.email}"/> 
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group col-lg-4" align="center"></div>
                    <div class="form-group col-lg-4" align="center">
                        <input type="password" name="usuario.senha" value="${usuario.senha}" class="form-control" id="input1" placeholder="Senha"/>
                    </div>
                    <div class="form-group col-lg-12">
                        <input type="submit" value="Login" class="btn btn-primary"/>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group col-lg-4" align="center"></div>
                    <div class="form-group col-lg-4" align="center">
                        <h4>Esqueceu a senha?      <a href="<c:url value='/lembrarsenha'/>">Lembrar Senha</a></h4>
                    </div>
                </div>
            </form>
        </div>

        <footer class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p align="center">&copy; Grupo LEONA 2014</p>
                </div>
            </div>
        </footer>
    </body>
</html>
