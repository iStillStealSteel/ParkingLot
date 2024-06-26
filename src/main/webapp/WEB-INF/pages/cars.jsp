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
    <form method="POST" action="${pageContext.request.contextPath}/Cars">
        <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/AddCar" role="button">Add Cars</a>
        <button class="btn btn-danger" type="submit">Delete Cars</button>
        <c:forEach var="car" items="${cars}" varStatus="status">
            <div class="row">
                <div class="col-md-1">
                    <input type="checkbox" name="car_ids" value="${car.id}" />
                </div>
                <div class="col-md-1">
                    ${car.licensePlate}
                </div>
                <div class="col-md-1">
                    ${car.parkingSpot}
                </div>
                <div class="col-md-1">
                    ${car.username}
                </div>
                <div class="col-md-1">
                    <img src="${pageContext.request.contextPath}/Photos?id=${car.id}" width="48"/>
                </div>
                <div class="col-md-1">
                    <a class="btn btn-secondary mb-1" href="${pageContext.request.contextPath}/AddPhoto?id=${car.id}" role="button">Add photo</a>
                </div>
                <div class="col-md-1">
                    <a class="btn btn-secondary mb-1" href="${pageContext.request.contextPath}/EditCar?id=${car.id}" role="button">Edit Car</a>
                </div>
            </div>
        </c:forEach>
    </form>
    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>
