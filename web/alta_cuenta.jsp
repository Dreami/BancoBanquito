<%-- 
    Document   : alta_cuenta
    Created on : Mar 23, 2018, 2:19:22 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Banco Banquito</title>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="/mainMenuDiv.jsp"/>
            <div id="menuActions" class="col-md-8">
                <h1>Alta de cuenta</h1>
                <form method="POST" action="accountServlet">
                    <div class="form-group">
                        <label>Numero de cliente</label>
                        <input type="text" class="form-control" name="client_num" required>
                    </div>
                    ${sessionScope.clientNumError}
                    <div class="form-group">
                        <label>Numero de cuenta</label>
                        <input type="text" class="form-control" name="acc_num" required>
                    </div>
                    ${sessionScope.accNumError}
                    <div class="form-group">
                        <label>Tipo de cuenta</label>
                        <select class="form-control" name="acc_type">
                            <option value="Ahorro">Ahorro</option>
                            <option value="Credito">Credito</option>
                            <option value="Cheque">Cheque</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Monto</label>
                        <input type="text" value="0" class="form-control" name="amount" required>
                    </div>
                    ${sessionScope.amountError}
                    <button class="btn btn-info">Dar alta</button>
                </form>
                    
                ${sessionScope.accCreated}
            </div>
        </div>
    </body>
</html>
