<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>AussieTripz</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="<c:url value="/theme/css/dashboardstyles.css"/>" rel="stylesheet" />
    <script src="<c:url value="/theme/css/dashboardstyles.css"/>" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <div class="col-lg-3"><img class="img-fluid" src="<c:url value="/theme/assets/img/logo%202.jpg"/>" /></div>
    <div class="col-lg-6"></div>
    <div class="container-fluid px-4 text-right">
        <div class="text-muted">Hello ${user.login}</div>

    </div>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <div class="sb-sidenav-menu-heading">AussieTripz</div>
                    <a class="nav-link" href="/tripz/user/home">
                        Home
                    </a>
                    <a class="nav-link" href="/tripz/user/userpanel">
                        User Profile
                    </a>
                    <div class="sb-sidenav-menu-heading">Data Base</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Plans
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav">
                            <a class="nav-link" href="/tripz/user/userPlans">All Plans</a>
                        </nav>
                    </div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                        <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                        Attractions
                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                    </a>
                    <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                        <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                All attractions
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="/tripz/user/attractions">view all attractions</a>

                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                By State
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="/tripz/user/attractions/1">South Australia</a>
                                    <a class="nav-link" href="/tripz/user/attractions/2">Western Australia</a>
                                    <a class="nav-link" href="/tripz/user/attractions/3">New South Wales</a>
                                    <a class="nav-link" href="/tripz/user/attractions/4">Queensland</a>
                                    <a class="nav-link" href="/tripz/user/attractions/5">Tasmania</a>
                                    <a class="nav-link" href="/tripz/user/attractions/6">Victoria</a>
                                    <a class="nav-link" href="/tripz/user/attractions/7">Northern Territory</a>
                                    <a class="nav-link" href="/tripz/user/attractions/8">ACT</a>
                                </nav>
                            </div>
                        </nav>
                    </div>
                    <div class="sb-sidenav-menu-heading">more</div>
                    <a class="nav-link" href="/tripz/logout">
                        <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                        Logout
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <div id="layoutSidenav_content">
