
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registros de Vacunados</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body style="background: #333333;color: #ffffff">
        <h3 style="color: #00cc99;text-align: center">#VACUNATE</h3>
        <hr style="background: #ffffff"/>  
        <a href="index.htm" style="color: #00cc99;font-size: 18px">MENÚ</a>
        <br/>
        <br/> 
    <center>  
        <table border="1" style="color: #ffffff">
            <thead>
                <tr>
                    <th style="background: #00cc99;color: #ffffff">NÚMERO DEL CIUDADANO</th>
                    <th style="background: #00cc99;color: #ffffff">NOMBRE</th>
                    <th style="background: #00cc99;color: #ffffff">APELLIDO</th>
                    <th style="background: #00cc99;color: #ffffff">DNI</th>
                    <th style="background: #00cc99;color: #ffffff">VACUNA</th>
                    <th style="background: #00cc99;color: #ffffff">DOSIS APLICADAS</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${lista}">
                    <tr>
                        <td>${dato.id}</td>
                        <td>${dato.nombre}</td>
                        <td>${dato.apellido}</td>
                        <td>${dato.dni}</td>
                        <td>${dato.vacuna}</td>
                        <td>${dato.dosis}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </center> 
</body>
</html>
