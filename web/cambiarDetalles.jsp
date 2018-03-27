<%-- 
    Document   : cambiarDetalles
    Created on : Mar 27, 2018, 3:05:04 AM
    Author     : maple
--%>
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
        <title>BancoBanquito</title>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="/mainMenuDiv.jsp"/>
            <div id="menuActions" class="col-md-8">
                <h1>Modificar detalles</h1>
                ${changesSuccess}
                <form method="POST" action="personalnfoServlet">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Nombre</label>
                        <div class="col-sm-10">
                            <input type="text" value="${loggedUser.getName()}" class="form-control input-sm" name="name" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Apellido</label>
                        <div class="col-sm-10">
                            <input type="text" value="${loggedUser.getLastname()}" class="form-control input-sm" name="lastname" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Fecha de nacimiento</label>
                        <div class="col-sm-9 input-group date">
                            <input type="text" value="${loggedUser.getBdayFormat()}" class="form-control input-sm" id="datepicker" name="bday" required/>
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Dirección</label>
                        <div class="col-sm-10">
                            <input type="text" value="${loggedUser.getAddress()}" class="form-control input-sm" name="address" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">C.P.</label>
                        <div class="col-sm-10">
                            <input type="text" value="${loggedUser.getPostalcode()}" class="form-control input-sm" name="postalcode" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-1 col-form-label">Ciudad</label>
                        <div class="col-sm-3">
                            <input type="text" value="${loggedUser.getCity()}" class="form-control input-sm" name="city" required/>
                        </div>
                        <label class="col-sm-1 col-form-label">Estado</label>
                        <div class="col-sm-3">
                            <input type="text" value="${loggedUser.getState()}" class="form-control input-sm" name="state" required/>
                        </div>
                        <label class="col-sm-1 col-form-label">País</label>
                        <div class="col-sm-3">
                            <input type="text" value="${loggedUser.getCountry()}" class="form-control input-sm" name="country" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Telefono</label>
                        <div class="col-sm-10">
                            <input type="text" value="${loggedUser.getPhone()}" class="form-control input-sm" name="phone" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Correo electrónico</label>
                        <div class="col-sm-9">
                            <input type="text" value="${loggedUser.getEmail()}" class="form-control input-sm" disabled/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Cambiar correo electrónico</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control input-sm" name="email"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Cambiar contraseña</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control input-sm" name="password1"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Comprobar contraseña</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control input-sm" name="password2"/>
                        </div>
                    </div>
                    ${passwordErr}
                    <div><button class="btn btn-info" type="submit">Guardar cambios</button></div>
                </form>
            </div>
        </div>
    </body>
</html>
<script type="text/javascript">
$( function() {
        $( "#datepicker" ).datepicker({
            dateFormat: 'dd/mm/yy',
            changeMonth: true,
            changeYear: true,
            yearRange: '-118y:c+nn',
            maxDate: '-1d'
        });
    } );
</script>