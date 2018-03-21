<c:choose>
  <c:when test="${not empty sessionScope.request.loggedUser}">
      <h3>Hi ${sessionScope.loggedUser.getName()}</h3>
  </c:when>
  <c:otherwise>
    <jsp:forward page="/login.jsp" />
  </c:otherwise>
</c:choose>
    
