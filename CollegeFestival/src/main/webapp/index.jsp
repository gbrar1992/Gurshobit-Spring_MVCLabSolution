<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Redirecting ...</title>
</head>
<body>
<h1>Redirecting ...</h1>
 <%
        /* String redirectURL = "/CollegeFestival/students/list";
        response.sendRedirect(redirectURL); */
    %>
    <c:redirect url = "/students/list"/>
</body>
</html>