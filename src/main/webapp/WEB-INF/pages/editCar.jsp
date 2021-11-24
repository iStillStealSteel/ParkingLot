<%-- 
    Document   : editCar
    Created on : Nov 24, 2021, 10:35:50 AM
    Author     : boo_b
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<t:pageTemplate pageTitle="AddCars">
    <h1>Edit car</h1>
    <form method="POST" action="${pageContext.request.contextPath}/EditCar">
        <div class="form-group">
            <label >License plate</label>
            <input name="license_plate" type="text" class="form-control"  placeholder="License Plate" required value="${car.licensePlate}">
        </div>
        <div class="form-group">
            <label >Parking Spot</label>
            <input name="parking_spot" type="text" class="form-control"  placeholder="Parking Spot"required value="${car.parkingSpot}">
        </div>
        <div class="form-group">
            <label >Owner</label>
            <select name="owner_id" class="form-control">
                <option value="">Choose...</option>
                <c:forEach var="user" items="${car.username eq user.username ? 'selected':''}>${user.username}</option>
            </c:forEach>
            </select>
        </div>

        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>