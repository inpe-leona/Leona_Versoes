<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Ver Observação | LEONA</title>
        <script src="http://code.jquery.com/jquery-latest.js">
        </script>
        <script>
            $(document).ready(function () {
                $('#ligarCamera').click(function (event) {
                    $.get('LigarCameraServlet', {variavel: 1}, function (responseText) {
                        $('#welcometext').text(responseText);
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('#desligarCamera').click(function (event) {
                    $.get('DesligarCameraServlet', {variavel: 1}, function (responseText) {
                        $('#welcometext').text(responseText);
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('#iniciarGravacao').click(function (event) {
                    alert("oi");
                    $.get('PantiltGravacaoServlet', {variavel: 1}, function (responseText) {
                        $('#welcometext').text(responseText);
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('#pararGravacao').click(function (event) {
                    var iniciarGravacao = $('#pararGravacao').val();
                    $.get('PantiltGravacaoServlet', {variavel: 0}, function (responseText) {
                        $('#welcometext').text(responseText);
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('#azimute').click(function (event) {
                    
                    var azimute = $('#azimuteGraus').val();
                    
                    $.get('PantiltAzimuteServlet', {azimute: azimute}, function (responseText) {
                        $('#posazimut').val(azimute);
                    });
                });
            });
        </script>

        <script>
            $(document).ready(function () {
                $('#elevacao').click(function (event) {
                    console.log('okok');
                    var elevacao = $('#elevacaoGraus').val();
                    
                    $.get('PantiltElevacaoServlet', {elevacao: elevacao}, function (responseText) {
                        $('#poselevacao').val(elevacao);
                    });
                });
            });
        </script>

        <script>
            $(document).ready(function () {
                $('#right').click(function (event) {
                    var graus = $('#graus').val();
                    $.get('PantiltRightServlet', {graus: graus}, function (responseText) {
                        $('#welcometext').text(responseText);
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('#up').click(function (event) {
                    var graus = $('#graus').val();
                    $.get('PantiltUpServlet', {graus: graus}, function (responseText) {
                        $('#welcometext').text(responseText);
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('#down').click(function (event) {
                    var graus = $('#graus').val();
                    $.get('PantiltDownServlet', {graus: graus}, function (responseText) {
                        $('#welcometext').text(responseText);
                    });
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('#reset').click(function (event) {
                    var graus = $('#graus').val();
                    $.get('PantiltResetServlet2', {graus: graus}, function (responseText) {
                        $('#welcometext').text(responseText);
                    });
                });
            });
        </script>
        <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet"/>
        <link href="<c:url value="/resources/css/half-slider.css"/>" rel="stylesheet"/>
        <link href="<c:url value="/resources/css/modern-business.css"/>" rel="stylesheet"/>
        <link href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet"/> 
    </head>
    <body>
        <div class="span12">
            <nav class="navbar navbar-fixed-top navbar-inverse " role="navigation">
                <div class="container">
                    <div class="collapse navbar-collapse navbar-ex1-collapse ">
                        <ul class="nav navbar-nav ">
                            <li><a href="<c:url value='/'/>">Inicio</a></li>
                            <li><a href="<c:url value='/listagemEstacao'/>">Estações</a></li>
                            <li><a href="<c:url value='/listagemUsuarios'/>">Usuários</a></li>
                            <li><a href="<c:url value='/listagemObservacao'/>">Observações</a></li>
                        </ul>
                        <div class="right">
                            <ul class="nav navbar-nav navbar-right ">     
                                <li style="color: white; font: bold"><a name="username">${username}</a></li>
                            </ul>    
                        </div>
                    </div>
                </div>
            </nav>
            <br/>
            <div class="col-md-4" align="center"><input type="button" id="reset" value="RESET"/></div>
            <div class="col-md-4" align="center"><input type="button" id="ligarCamera" value="Ligar Camera"/></div>
            <div class="col-md-4" align="center"><input type="button" id="desligarCamera" value="Desligar Camera"/></div>
            <table align="center">                
                <tr>
                    <td align="center">
                    </td>
                    <td align="left">
                        <h4>Azimute: </h4>
                    </td>
                    <td align="center">
                        <input type="text" placeholder="" id="azimuteGraus"/>
                    </td>
                    <td align="left">
                        Range: 0º a 350º
                    </td>
                    <td align="left">
                        <input type="button" id="azimute" value="Mover"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">

                    </td>
                    <td align="left">
                        <!--<input type="button" id="left" value="Left"/>-->
                        <h4>Elevação: </h4>
                    </td>
                    <td align="center">
                        <input type="text" placeholder="" id="elevacaoGraus"/>
                    </td>
                    <td align="left">
                        <!--<input type="button" id="right" value="Right"/>-->
                        Range: 0º a 60º
                    </td>
                    <td align="center">
                        <input type="button" id="elevacao" value="Mover"/>
                    </td>
                </tr>                
                <tr>
                    <td align="center">

                    </td>
                    <td align="center">
                        <p>Posição atual azimut: <input id="posazimut" disabled="true" style="width:40px"></p>
                    </td>
                    <td align="center">

                    </td>
                    <td align="center">
                        <p>Posição atual elevação: <input id="poselevacao" disabled="true" style="width:40px"></p>
                    </td>
                    <td align="center">

                    </td>
                </tr>
            </table>
            <h2 style="color:black" align="center">Nome da Observação: ${observation.nome}</h2>
            <hr>            
            <br>
            <div>
                <div class="col-md-6" align="right">
                    <iframe src="http://150.163.156.118:8989" style="width: 680px; height: 480px"></iframe>
                </div>
                <div class="col-md-1" align="right"></div>
                <div class="col-md-6" align="left">
                    <!--<img src="<c:url value="/resources/img/preto.png"/>" style=" width:600px; height:480px">-->
                    <iframe src="http://150.163.156.118:9999" style="width: 600px; height: 480px"></iframe>
                </div>
            </div>
            
            
        </div>
    </body>   
</html>