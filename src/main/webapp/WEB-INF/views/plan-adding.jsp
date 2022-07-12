<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Add attractions to ${plan.name}</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item">${plan.description}</li>

        </ol>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Attractions:
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                    <tr>
                        <th>name</th>
                        <th>description</th>
                        <th>add:</th>
                    </tr>
                    </thead>
                    <tbody><form:form method="post" modelAttribute="plan">
                    <c:forEach var="attractions" items="${attractions}">
                        <tr>
                            <td>${attractions.name}</td>
                            <td>${attractions.description}</td>
                            <td>
                                <form:checkbox path="attractions" items="${attractions}"
                                                value="${attractions.id}"/>

                        </tr>

                    </c:forEach>
                    <tr>
                        <td></td>
                        <td></td>
                        <td><input type="submit" value="Add" class="btn btn-primary"></td> </tr>
                    </tbody>
                    </form:form>
                <p> Everything already in your plan? More attractions coming soon!</p>
                </table>

            </div>
        </div>
    </div>

</main>
<%@ include file="/WEB-INF/views/userFooter.jsp" %>

