<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4"> Hello ${user.login} </h1>

        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                <h2>Add new plan:</h2>
            </div>
            <div class="card-body">
                <form:form method="post" modelAttribute="plan">
                Plan name:</h4><form:input path="name"/></br>
                    <p style="color:crimson"><form:errors path="name" /></p>

                Description:</h4><form:input path="description"/></br>
                    <p style="color:crimson"><form:errors path="description" /></p>
                <input type="submit" value="Add Plan" class="btn btn-primary">

                </form:form>

            </div>
        </div>
    </div>

</main>
<%@ include file="/WEB-INF/views/userFooter.jsp" %>

