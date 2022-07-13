<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<section class="about-section text-center" >
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-8">
                <h2 class="text-white mb-4">Please log in:</h2>
            </div>
            <form method="post" class="text-white-50">
                <a style="color:crimson"> ${message} </a>
                <div><label> User Name : <input type="text" name="login"/> </label></div>
                <div><label> Password: <input type="password" name="password"/> </label></div>
                <div><input type="submit" value="Sign In"/></div>
            </form>
            <p></p>
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
