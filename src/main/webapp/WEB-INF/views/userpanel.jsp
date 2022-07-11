<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<main>
    <div class="container-fluid px-4">

            <div class="card-body">
               Hello ${user.login}
            </div>

    </div>
</main>
<%@ include file="/WEB-INF/views/userFooter.jsp" %>

