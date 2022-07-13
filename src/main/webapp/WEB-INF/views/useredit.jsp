<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">Edit user details</h3></div>
                            <div class="card-body">
                                            <form:form method="post" modelAttribute="user">
                                            Edit Login:</h4><form:input path="login" placeholder="${user.login}"/></br>
                                                <p style="color:crimson"><form:errors path="login" /></p>
                                           Edit email: <form:input path="email" placeholder="${user.email}"/>
                                                <p style="color:crimson"><form:errors path="email" /></p>
                                                <form:hidden path="id" value="${user.id}"/>
                                                <form:hidden path="password" value="${user.password}"/>
                                            <p><input type="submit" value="Save" class="btn btn-primary"></p>

                                            </form:form>
                                    </div>


    </div>
</div>
</div>
</div>
<%@ include file="/WEB-INF/views/userFooter.jsp" %>

