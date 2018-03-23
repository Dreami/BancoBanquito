<%-- 
    Document   : login
    Created on : 14/03/2018, 04:44:31 PM
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
        <title>BancoBanquito</title>
    </head>
    <body>
        <div class="container">
            <div id="loginBox">
                <div class="page-header">
                    <img id="loginlogo" src="images/banco-banquito-logo.png" alt="bb_logo"/>
                </div>
                <form method="POST" action="loginServlet">
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Correo</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="username" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Contraseña</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="password" required/>
                        </div>
                    </div>
                    <div><button class="btn btn-info" type="submit">Acceder</button></div>
                </form>
                <small>No tienes cuenta? Registrate <a href="registrar.jsp">aquí</a></small>
            </div>
        </div>
    </body>
</html>
