<%-- 
    Document   : listaClientes
    Created on : Mar 24, 2018, 7:37:36 AM
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
                <h1>Lista de clientes</h1>
                ${sessionScope.deleteSuccess}
                ${sessionScope.editSuccess}
                <c:forEach items="${applicationScope.Accounts}" var="acc">
                    <c:if test="${not sessionScope.loggedUser.equals(acc.getUser())}">
                        <table class="col-md-12 clientTable">
                            <thead>
                                <th class="col-md-4">Numero de cliente</th>
                                <th class="col-md-4">Numero de cuenta</th>
                                <th class="col-md-4">Tipo de cuenta</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="col-md-4">${acc.getUser().getId()}</td>
                                    <td class="col-md-4">${acc.getAccountNumber()}</td>
                                    <td class="col-md-4">${acc.getType()}</td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <table class="col-md-12 clientTable">
                            <thead >
                                <th class="col-md-4">Fecha</th>
                                <th class="col-md-4">Nombre</th>
                                <th class="col-md-4">Apellido</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="col-md-4">${acc.getUser().getBdayFormat()}</td>
                                    <td class="col-md-4">${acc.getUser().getName()}</td>
                                    <td class="col-md-4">${acc.getUser().getLastname()}</td>
                                </tr>
                            </tbody>
                        </table>
                        <form action="manageClientServlet" method="POST">
                            <div class="col-md-12">
                                <button class="btn btn-info" value="${acc.getAccountNumber()}" name="edit">Editar</button>
                                <button class="btn btn-info" value="${acc.getAccountNumber()}" name="delete">Borrar</button>
                            </div>
                        </form>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
