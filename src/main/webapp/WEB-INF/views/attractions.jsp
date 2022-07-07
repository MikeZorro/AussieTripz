<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/WEB-INF/views/sidebar.jsp" %>
<main>
<div class="container-fluid px-4">
    <h1 class="mt-4">All Attractions</h1>
    <ol class="breadcrumb mb-4">
        <li class="breadcrumb-item"><a href="index.html">show states</a></li>
    </ol>

    <div class="card-header">
    <i class="fas fa-table me-1"></i>
South Australia
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>add to your plan</th>
        <th>been already? rate it!</th>

    </tr>
    <c:forEach var="attractions1" items="${attractions1}">
        <tr>
            <td>${attractions1.name}</td>
            <td>${attractions1.description}</td>
            <td>guzik do dodawania</td>
        </tr>
    </c:forEach>
</table>
<div class="card-header">
    <i class="fas fa-table me-1"></i>
    Western Australia
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>add to your plan</th>
    </tr>
    <c:forEach var="attractions2" items="${attractions2}">
        <tr>
            <td>${attractions2.name}</td>
            <td>${attractions2.description}</td>
            <td>guzik do dodawania</td>
        </tr>
    </c:forEach>
</table>
<div class="card-header">
    <i class="fas fa-table me-1"></i>
    New South Wales
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>add to your plan</th>
    </tr>
    <c:forEach var="attractions3" items="${attractions3}">
        <tr>
            <td>${attractions3.name}</td>
            <td>${attractions3.description}</td>
            <td>guzik do dodawania</td>
        </tr>
    </c:forEach>
</table>
<div class="card-header">
    <i class="fas fa-table me-1"></i>
  Queensland
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>add to your plan</th>
    </tr>
    <c:forEach var="attractions4" items="${attractions4}">
        <tr>
            <td>${attractions4.name}</td>
            <td>${attractions4.description}</td>
            <td>guzik do dodawania</td>
        </tr>
    </c:forEach>
</table>
<div class="card-header">
    <i class="fas fa-table me-1"></i>
    Tasmania
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>add to your plan</th>
    </tr>
    <c:forEach var="attractions5" items="${attractions5}">
        <tr>
            <td>${attractions5.name}</td>
            <td>${attractions5.description}</td>
            <td>guzik do dodawania</td>
        </tr>
    </c:forEach>
</table>
<div class="card-header">
    <i class="fas fa-table me-1"></i>
    Victoria
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>add to your plan</th>
    </tr>
    <c:forEach var="attractions6" items="${attractions6}">
        <tr>
            <td>${attractions6.name}</td>
            <td>${attractions6.description}</td>
            <td>guzik do dodawania</td>
        </tr>
    </c:forEach>
</table>
<div class="card-header">
    <i class="fas fa-table me-1"></i>
    Northern Territory
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>add to your plan</th>
    </tr>
    <c:forEach var="attractions7" items="${attractions7}">
        <tr>
            <td>${attractions7.name}</td>
            <td>${attractions7.description}</td>
            <td>guzik do dodawania</td>
        </tr>
    </c:forEach>
</table>
<div class="card-header">
    <i class="fas fa-table me-1"></i>
    Australia Capital Territory
</div>
    <table id="datatablesSimple">
    <tr>
        <th>name</th>
        <th>description</th>
        <th>add to your plan</th>
    </tr>
    <c:forEach var="attractions8" items="${attractions8}">
        <tr>
            <td>${attractions8.name}</td>
            <td>${attractions8.description}</td>
            <td>guzik do dodawania</td>
        </tr>
    </c:forEach>
</table>
    <%@ include file="/WEB-INF/views/userFooter.jsp" %>
