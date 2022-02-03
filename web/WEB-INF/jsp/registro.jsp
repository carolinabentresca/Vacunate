
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </head>
    <body style="background: #333333;color: #ffffff">
        <h4 style="color: #ff3366">#VACUNATE</h4>
        <hr style="background: #ffffff"/>
    <center>
        <form action="registro.htm" method="POST">
            Número del Ciudadano (*) <br/>
            <input type="text" name="id"  placeholder="" required="required" style="font-size: 18px" /><br/>     
            Nombre (*)<br/>
            <input type="text" name="nombre"  placeholder="" required="required"  style="font-size: 18px"/><br/>
            Apellido (*)<br/>
            <input type="text" name="apellido"  placeholder="" required="required"  style="font-size: 18px" /><br/>
            Dni (*) <br/>
            <input type="text" name="dni"  placeholder="" required="required" style="font-size: 18px" /><br/>
            Vacuna (*)<br/>
            <input type="text" name="vacuna"  placeholder="" required="required"  style="font-size: 18px"/><br/>
            Dosis Aplicadas(*)<br/>
            <input type="text" name="dosis"  placeholder="" required="required"  style="font-size: 18px" /><br/>
            <br/>
            <input type="submit" value="Registrar Vacunado"  style="background: #ff3366;color: #ffffff;font-size: 18px"/>
        </form>
        <br/>
        <h6> (*) Campos Obligatorios </h6>
    </center>
</body>
</html>
