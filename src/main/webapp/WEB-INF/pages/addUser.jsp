<%-- 
    Document   : addUser
    Created on : Dec 28, 2021, 11:35:35 PM
    Author     : boo_b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:pageTemplate pageTitle="Add User">
    <form class="form-signin" method="POST" action="${pageContext.request.contextPath}/AddUser"><!-- comment -->
        <h1 class="h3 mb-3 font-weight-normal">Add User</h1>
        <div class="row">
            <label for="username" class="sr_only">Username</label>
            <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus><!-- comment -->
        </div>

        <div class="row">
            <label for="email" class="sr-only">Email</label>
            <input type="email" id="email" name="email" class="form_control" placeholder="Email" required><!-- comment -->
        </div>
        <div class="row">
            <label for="password" class="sr-only">Password</label>
            <input type="password" id="password" name="j_password" class="form_control" placeholder="Password" required><!-- comment -->
        </div>
        <div class="row">
            <label for="position" class="sr-only">Position</label>
            <select class="custom-select d-block w-100" id="position" name="position" required> 
                <option value="">Choose...</option>
                <<option value="ADMINISTRATOR">Administrator</option>
                <<option value="CLIENT">Client</option>
            </select>
        </div>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</t:pageTemplate>
