<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<main>
<div class="container-fluid px-4">
    <h1 class="mt-4">All Attractions</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="/tripz/user/states">show states</a></li>
    </ol>

    <div class="card-header">
    <i class="fas fa-table me-1"></i>
Attraction List
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>been already? rate it!</th>
        <th></th>
        <th></th>

    </tr>

    <c:forEach var="attractions" items="${attractions}">
        <form:form method="post" modelAttribute="ratedAttraction">
        <tr>
            <td>${attractions.name}</td>
            <td>${attractions.description}</td>
            <form:hidden path="attraction" itemValue="id" value ="${attractions.id}"/>
            <td>Rate: <form:input path="rating" placeholder="1 - 10"/></td>
                <td><p style="color:crimson"><form:errors path="rating"/></p></td>
            <td><input type="submit" value="Rate"></td>

        </tr>
        </form:form>
    </c:forEach>

</table>
    <%@ include file="/WEB-INF/views/userFooter.jsp" %>
