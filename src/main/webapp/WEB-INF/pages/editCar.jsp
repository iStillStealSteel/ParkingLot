<%-- 
    Document   : users
    Created on : Nov 17, 2021, 11:20:44 AM
    Author     : boo_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:pageTemplate pageTitle="Edit Car">
    <form method="POST" action="${pageContext.request.contextPath}/EditCar">
        <div class="form-group">
            <label >License plate</label>
            <input name="license_plate" type="text" class="form-control"  placeholder="License Plate" value="${car.licensePlate}">
        </div>
        <div class="form-group">
            <label >Parking Spot</label>
            <input name="parking_spot" type="text" class="form-control"  placeholder="Parking Spot" value="${car.parkingSpot}">
        </div>
        <div class="form-group">
            <label >Owner</label>
            <select name="owner_id" id="owner_id" class="form-control">
                <option value="">Choose</option>
                <c:forEach var="user" items="${users}" varStatus="status">
                    <option value="${user.id}" ${car.username eq user.username?'selected':''}>${user.username}</option>
                </c:forEach>
            </select>
        </div>
        <input type="hidden" name="car_id" value="${car.id}"/>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</t:pageTemplate>