<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuário | LEONA</title>
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
            <h1 align="center">Cadastro de Usuário</h1>
            <br/><br/>
            <form id="form" action="<c:url value='/cadastrarUsuario'/>" method="post">

                <div class="col-md-3"></div>
                <div class="col-md-3">
                    <h4>Nome: <input type="text" placeholder="Nome.." class="form-control" value="${usuario.nome}" name="usuario.nome"></h4>
                </div> 
                <div class="col-md-3">
                    <h4>Instituição: <input type="text" placeholder="Instituição" class="form-control" value="${usuario.instituicao}" name="usuario.instituicao"></h4>
                </div>            
                <div class="col-md-3"></div>
                <div class="clearfix"></div>
                <br/><br/>
                <div class="col-md-3"></div>
                <div class="col-md-3">
                    <h4>E-mail <input type="text" placeholder="E-mail.." class="form-control" value="${usuario.email}"  name="usuario.email"></h4>
                </div> 
                <div class="col-md-3">
                    <h4>Telefone <input type="text" placeholder="Telefone" class="form-control" value="${usuario.telefone}" name="usuario.telefone"></h4>
                </div>            
                <div class="col-md-3"></div>
                <div class="clearfix"></div>
                <br/><br/>
                <div class="col-md-3"></div>
                <div class="col-md-3">
                    <h4>Senha <input type="password" placeholder="******" class="form-control" value="${usuario.senha}" name="usuario.senha"></h4>
                </div> 
                <div class="col-md-3">
                    <h4>Confirma Senha <input type="password" placeholder="*****" class="form-control" value="${usuario.confirma}" name="usuario.confirma"></h4>
                </div>            
                <div class="col-md-3"></div>
                <div class="clearfix"></div>
                <br/><br/>                
                <div class="col-md-12" align="center">
                    <p>${resposta}</p>
                    <input type="submit" id="salvar" value="Salvar" class="btn btn-primary">
                </div>
            </form>
        </div>
    </body>
</html>
