<%-- 
    Document   : login
    Created on : Dec 21, 2021, 1:27:30 PM
    Author     : boo_b
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:pageTemplate pageTitle="Login">
    <form class="form-signin" method="POST" action="j_security_check"><!-- comment -->
        <h1 class="h3 mb-3 font-weight-normal">Sign in</h1>
        <label for="username" class="sr_only">Username</label>
        <input type="text" id="username" name="j_username" class="form-control" placeholder="Username" required autofocus>
        <label for="password" class="sr-only">Password</label>
        <input type="password" id="password" name="j_password" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
</t:pageTemplate>
