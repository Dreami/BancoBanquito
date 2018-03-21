<%@ page contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="stylesheet.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <!-- Nombre, apellidos, dirección, C.P., ciudad, estado, país, 
        teléfono, fecha de nacimiento, correo electrónico y contraseña. -->
        
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
                        <label class="col-sm-3 col-form-label">Fecha de nacimiento</label>
                        <div class="col-sm-9 input-group date">
                            <input type="text" class="form-control input-sm" id="datepicker" name="bday" required/>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Dirección</label>
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
                            <input type="text" class="form-control input-sm" name="state" required/>
                        </div>
                        <label class="col-sm-1 col-form-label">País</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control input-sm" name="country" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Telefono</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control input-sm" name="phone" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Correo electrónico</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control input-sm" name="email" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Contraseña</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control input-sm" name="password1" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Comprobar contraseña</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control input-sm" name="password2" required/>
                        </div>
                    </div>
                    ${passwordErr}
                    <div><button class="btn btn-info" type="submit">Registrar</button></div>
                </form>
                <small>Ya tienes cuenta? Acceder <a href="login.jsp">aquí</a></small>
            </div>
        </div>
    </body>
</html>

<script type="text/javascript">
    $( function() {
        $( "#datepicker" ).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: '-118y:c+nn',
            maxDate: '-1d'
        });
    } );
</script>
