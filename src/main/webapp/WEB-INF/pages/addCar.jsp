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
            <select name="owner_id" class="form-control">
                <option>1</option>
            </select>
        </div>

        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</t:pageTemplate>