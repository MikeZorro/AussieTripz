<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<section class="about-section text-center" >
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-6">
                <h2 class="text-white mb-4">Register</h2><p class="text-white-50">
                <form:form method="post" modelAttribute="user">
                <p class="text-white-50"><h4 class="text-white-50">Username:</h4><form:input path="login"/></br>
                <p style="color:crimson"><form:errors path="login" /></p></br>

                <h4 class="text-white-50">Email:</h4><form:input path="email"/></br>
                <p style="color:crimson"><form:errors path="email" /></p></br>

                <h4 class="text-white-50">Password:</h4><form:input path="password"/></br>
                <p style="color:crimson"><form:errors path="password" /></p></br>
                <input type="submit" value="Register" class="btn btn-primary">
                </p>
                </form:form>
            </p>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<footer class="footer bg-black small text-center text-white-50"><div class="container px-4 px-lg-5">Copyright &copy; MagicMike</div></footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="<c:url value="/theme/js/scripts.js"/>"></script>

</body>
</html>
