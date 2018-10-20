<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
    <title>Do Good</title>
</head>
<body>
<p>Let's do some good!</p>
<%
    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
    if (user != null) {
        pageContext.setAttribute("user", user);
%>
<p><a href="<%= userService.createLogoutURL(request.getRequestURI()) %>" class="button">Change user</a></p>
<%
} else {
%>
<p><a href="<%= userService.createLoginURL(request.getRequestURI()) %>" class="button">Login</a></p>
<%
    }
%>

<form action = "/confirmsubmission" method = "post">
    <p>Name</p>
    <div><textarea name="name" rows="1" cols="20"></textarea></div>
    <p>Date</p>
    <div><textarea name="date" rows="1" cols="20"></textarea></div>
    <p>Time</p>
    <div><textarea name="time" rows="1" cols="20"></textarea></div>
    <p>Location</p>
    <div><textarea name="location" rows="1" cols="20"></textarea></div>
    <p>Contact Name</p>
    <div><textarea name="contactName" rows="1" cols="20"></textarea></div>
    <p>Contact Email</p>
    <div><textarea name="contactEmail" rows="1" cols="20"></textarea></div>
    <p>Description</p>
    <div><textarea name="description" rows="3" cols="40"></textarea></div>
    <br>
    <div><input type="submit" value="Do Good" class="button"/></div>
</form>

<a href="/home">Back</a>

</body>
</html>