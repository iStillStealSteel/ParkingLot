<%-- 
    Document   : users
    Created on : Nov 17, 2021, 11:20:44 AM
    Author     : boo_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:pageTemplate pageTitle="AddCars">
    <form method="POST" action="${pageContext.request.contextPath}/AddCar">
        <div class="form-group">
            <label >License plate</label>
            <input name="license_plate" type="text" class="form-control"  placeholder="License Plate">
        </div>
        <div class="form-group">
            <label >Parking Spot</label>
            <input name="parking_spot" type="text" class="form-control"  placeholder="Parking Spot">
        </div>
        <div class="form-group">
            <label >Owner</label>
            <select name="owner_id" id="owner_id" class="form-control" required>
                <option value="">Choose</option>
                <c:forEach var="user" items="${users}" varStatus="status">
                    <option value="${user.id}">${user.username}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</t:pageTemplate>