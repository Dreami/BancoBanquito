<c:choose>
  <c:when test="${not empty sessionScope.loggedUser}">
      <jsp:forward page="/menuprincipal.jsp" />
  </c:when>
  <c:otherwise>
      otherwise>
</c:choose>
    <jsp:forward page="/login.jsp" />
  </c:otherwise>
</c:choose>
    
