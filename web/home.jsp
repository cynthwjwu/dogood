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
    <p>Welcome back ${fn:escapeXml(user)}</p>
    <p><a href="<%= userService.createLogoutURL(request.getRequestURI()) %>" class="button">Change user</a></p>
    <%
    } else {
    %>
    <p><a href="<%= userService.createLoginURL(request.getRequestURI()) %>" class="button">Login</a></p>
    <%
        }
    %>
    <form action = "/events" method = "post">
        <p>Date</p>
        <div><textarea name="date" rows="1" cols="20"></textarea></div>
        <p>City</p>
        <div><textarea name="city" rows="1" cols="20"></textarea></div>
        <br>
        <div><input type="submit" value="Do Good" class="button"/></div>
    </form>
</body>
</html>