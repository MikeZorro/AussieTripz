<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<main>
  <div class="container-fluid px-4">
    <div class="card-header">
      <i class="fas fa-table me-1"></i>
      <h3>All States</h3>
    </div>
    <ul>
      <c:forEach var="states" items="${states}">
          <div><h2>${states.name}</h2
            <h4>Capital: ${states.capital}</h4>
            <li><p style="font-size:14px"><a class="nav-link" href="/tripz/user/attractions/${states.id}">show attractions</a></p></li>
          </div>
      </c:forEach>
    </ul>

    <%@ include file="/WEB-INF/views/userFooter.jsp" %>
