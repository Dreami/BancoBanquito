<%-- 
    Document   : registrar
    Created on : 14/03/2018, 05:13:09 PM
    Author     : TecMilenio
--%>

<%@ page contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <!-- Nombre, apellidos, direcci�n, C.P., ciudad, estado, pa�s, 
        tel�fono, fecha de nacimiento, correo electr�nico y contrase�a. -->
        
        <div class="container">
            <div id="registerBox">
                <div class="page-header">
                    <img id="logo" src="images/banco-banquito-logo.png" alt="bb_logo"/>
                </div>
                <form method="POST" action="registerServlet">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Nombre</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control input-sm" name="name" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Apellido</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control input-sm" name="lastname" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label" id="datetimepicker1">Fecha de nacimiento</label>
                        <div class="col-sm-9 input-group date">
                            <input type="text" class="form-control input-sm" name="bday" required/>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Direcci�n</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control input-sm" name="address" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">C.P.</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control input-sm" name="postalcode" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label">Ciudad</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control input-sm" name="city" required/>
                        </div>
                        <label class="col-sm-1 col-form-label">Estado</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control input-sm" name="estado" required/>
                        </div>
                        <label class="col-sm-1 col-form-label">Pa�s</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control input-sm" name="pais" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Telefono</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control input-sm" name="phone" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Correo electr�nico</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control input-sm" name="email" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Contrase�a</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control input-sm" name="password1" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Comprobar contrase�a</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control input-sm" name="password2" required/>
                        </div>
                    </div>
                    <div><button class="btn btn-info" type="submit">Registrar</button></div>
                </form>
                <small>Ya tienes cuenta? Acceder <a href="login.jsp">aqu�</a></small>
            </div>
        </div>
    </body>
</html>

<script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datetimepicker();
    });
</script>