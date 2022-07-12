<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>AussieTripz - make your custom travel wishlist</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<c:url value="/theme/css/styles.css"/>" rel="stylesheet" />
</head>
<body id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="/#page-top">Home</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#topattractions">Top Attractions</a></li>
            </ul>
        </div>
    </div>
</nav>
<header class="masthead">
    <div class="container px-4 px-lg-5 d-flex h-100 align-items-center justify-content-center">
        <div class="d-flex justify-content-center">
            <div class="text-center">
                <h1 class="mx-auto my-0 text-uppercase">AussieTripz</h1>
                <a class="btn btn-primary" href="#topattractions">Top Attractions</a>
            </div>
        </div>
    </div>
</header>
<section class="about-section text-center"  id="topattractions">
    <div class="container px-4 px-lg-8">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-8 justify-content-center">"
                <h2 class="text-white mb-4">Top Attractions</h2><p class="text-white-50">
                <p class="text-white-50">
                <table class="text-white-50">
                    <tr>
                        <th>name</th>
                        <th>average rating</th>
                        <th></th>;
                    </tr>
                    <c:forEach var="attractions" items="${attractions}">
                    <tr>
                        <td>${attractions.get('name')}</td>
                        <td>${attractions.get('rating')}</td>
                        <td>zdjecie</td>

                    </tr>
                    </c:forEach>
                </table>
            </div>
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