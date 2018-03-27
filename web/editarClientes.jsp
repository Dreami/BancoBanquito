<%-- 
    Document   : editarClientes
    Created on : Mar 24, 2018, 7:37:48 AM
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
        <title>BancoBanquito</title>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="/mainMenuDiv.jsp"/>
            <div id="menuActions" class="col-md-8">
                <h1>Editar informacion de cuenta - ${sessionScope.editing_client.getUser().getName()} ${sessionScope.editing_client.getUser().getLastname()}</h1>
                ${sessionScope.editSuccess}
                
                <form method="POST" action="setAccountServlet">
                    <div class="col-md-12 form-group">
                        <label class="col-md-4">Numero de cuenta: </label>
                        <input class="col-md-8 form-control" value="${sessionScope.editing_client.getAccountNumber()}" type="text" disabled/>
                        <input type="hidden" value="${sessionScope.editing_client.getAccountNumber()}" name="acc_num"/>
                    </div>
                    
                    <div class="col-md-12">
                        <label class="col-md-4">Tipo de cuenta: </label>
                        <select class="col-md-8 form-control" name="nextType" type="text"/>
                            <<option value="Ahorro" ${sessionScope.editing_client.getType()=="Ahorro" ? selected : ""}>Ahorro</option>
                            <option value="Credito" ${sessionScope.editing_client.getType()=="Credito" ? selected : ""}>Credito</option>
                            <option value="Cheque" ${sessionScope.editing_client.getType()=="Cheque" ? selected : ""}>Cheque</option>
                        </select>
                    </div>
                    
                    <div class="col-md-12">
                        <label class="col-md-4">Monto: </label>
                        <input class="col-md-8 form-control" value="${sessionScope.editing_client.getAmount()}" name="nextAmount" type="text"/>
                    </div>
                    
                    <button type="submit" class="btn btn-info">Guardar cambios</button>
                </form>
            </div>
        </div>
    </body>
</html>
