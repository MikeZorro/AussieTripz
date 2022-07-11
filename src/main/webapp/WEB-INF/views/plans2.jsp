<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/WEB-INF/views/sidebar.jsp" %>
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4">Plans</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="/tripz/user/plan/add">Add new plan</a></li>

                </ol>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        Your amazing plan
                    </div>
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th>name</th>
                                <th>description</th>
                                <th></th>
                                <th></th>
                            </tr>

                            </thead>
                            <tbody>
                            <c:forEach var="plans" items="${plans}">
                                <tr>
                                    <td>${plans.name}</td>
                                    <td>${plans.description}</td>
                                    <td><a href="<c:url  value="/tripz/user/plan-adding/${plans.id}"/> ">Add to your plan </a></td>
                                    <td><a href="<c:url  value="/tripz/user/plan-details/${plans.id}"/> ">Plan details </a></td>
                                </tr>
                            </c:forEach>


                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
<%@ include file="/WEB-INF/views/userFooter.jsp" %>

