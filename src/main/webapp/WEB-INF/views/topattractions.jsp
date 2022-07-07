<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/header.jsp" %>

<section class="about-section text-center" >
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-8">
                <h2 class="text-white mb-4">Top Attractions</h2><p class="text-white-50">
                <p class="text-white-50">
                <table class="text-white-50">
                    <tr>
                        <th>name</th>
                        <th>average rating</th>
                        <th></th>
                    </tr>
                    <c:forEach var="attractions" items="${attractions}">
                    <tr>
                        <td>${attractions.name}</td>
                        <td>rating</td>
                        <td><a href="<c:url  value="/book-form/edit/${attractions.id}"/> ">Add to your plan </a></td>
                    </tr>
                    </c:forEach>
                </table>
            </p>
            </div>
        </div>
    </div>
</section>
<%@ include file="/WEB-INF/views/footer.jsp" %>
