<%-- 
    Document   : transferencias
    Created on : Mar 23, 2018, 4:15:19 AM
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
                <h1>Transferencias</h1>
                <form method="POST" action="transferServlet">
                    <div class="row transferForm">
                        <div class="form-group">
                            <label>Cuenta retiro: </label>
                            <select class="form-control" name="acc_withdraw">
                                <option value="-">-</option>
                                <c:forEach items="${applicationScope.Accounts}" var="acc">
                                    <c:if test="${loggedUser.equals(acc.getUser())}">
                                    <option value="${acc.getAccountNumber()}">${acc.getAccountNumber()}<option/>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>Cuenta deposito: </label>
                            <select class="form-control" name="acc_deposit">
                                <option value="-">-</option>
                                <c:forEach items="${applicationScope.Accounts}" var="acc">
                                    <c:if test="${loggedUser.equals(acc.getUser())}">
                                    <option value="${acc.getAccountNumber()}">${acc.getAccountNumber()}<option/>
                                    </c:if>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row transferForm">
                        <div class="form-group">
                            <label>Importe MXN:</label>
                            <input class="form-control" type="text" value="0" name="amount" required>
                        </div>
                    </div>
                    ${transferError}
                    ${transferSuccess}
                    <button>Continuar</button>
                </form>
            </div>
    </body>
</html>
