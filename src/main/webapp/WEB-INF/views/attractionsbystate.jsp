<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<main>
    <div class="container-fluid px-4">

        <h1 class="mt-4"> ${state.name} attractions</h1>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                   Capital:  ${state.capital}
            </div>
          
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                    <tr>
                        <th>name</th>
                        <th>description</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="attractions" items="${attractions}">
                        <tr>
                            <td>${attractions.name}</td>
                            <td>${attractions.description}</td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

</main>
<%@ include file="/WEB-INF/views/userFooter.jsp" %>

