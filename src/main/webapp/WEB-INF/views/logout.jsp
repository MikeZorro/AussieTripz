<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<section class="about-section text-center" >
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-8">
                <h2 class="text-white mb-4">Do you want to log out?</h2><p class="text-white-50">
            </div>
            <form action="<c:url value="/tripz/logout"/>" method="post">
                <a class="btn btn-primary" href="/tripz/user/userpanel" value="back">Back</a>
                <input class="btn btn-primary" type="submit" value="Log out">

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
