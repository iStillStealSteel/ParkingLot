<%-- 
    Document   : cars
    Created on : Nov 10, 2021, 10:56:52 AM
    Author     : boo_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:pageTemplate pageTitle="Cars">
    <h1>Cars </h1>
    <c:forEach var="car" items="${cars}" varStatus="status">

        <div class="row">
            <div class="col-md-4">
                ${car.licensePlate}
            </div>
            <div class="col-md-4">
                {$car.parkingSpot}
            </div>
            <div class="col-md-4">
                {$car.username}
            </div>
            <div class="col-md-2">
                <a class="btn btn-secondary mb-1" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
            </div>
        </div>
    </c:forEach>
    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
    <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddCar" role="button">Add Cars</a>
</t:pageTemplate>
