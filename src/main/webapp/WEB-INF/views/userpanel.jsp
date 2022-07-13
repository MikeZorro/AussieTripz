<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">User details</h3></div>
                            <div class="card-body">
<main>
    <div class="container-fluid px-4">
            <div class="row mb-3">
                <div class="col-md-6">
                    <div class="form-floating mb-3 mb-md-0">
                        <p class="form-control" id="login"  />
                        <label for="login">Login: ${userlog.login}</label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating">
                        <p class="form-control" id="password"  />
                        <label for="password">Password: *********** </label>
                    </div>
                </div>
            </div>
            <div class="form-floating mb-3">
                <p class="form-control" id="inputEmail" type="email" placeholder="${user.login}" value="${user.login}"/>
                <label for="inputEmail">Email: ${userlog.email}</label>
            </div>
        <div class="mt-4 mb-0">
            <div class="d-grid"><a class="btn btn-primary btn-block" href="/tripz/user/edit">Edit</a></div>
        </div>
                    </div>
                </div>
            </div>

    </div>
</main>
                            </div>
                        </div>
                    </div>
                </div>
<%@ include file="/WEB-INF/views/userFooter.jsp" %>

