<%-- 
    Document   : login
    Created on : Nov 6, 2016, 5:50:38 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Titan Online Banking</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Titan Online Banking</h1>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="New_customer.jsp">Register with Titan</a></li>
        </ul>

<form action="LoginServlet" method="post">
    <input type="hidden" name="action" value="login">

    <label>Username:</label>
    <input type="text" name="userName" required><br>

    <label>Password:</label>
    <input type="password" name="password" required><br>

    <label>&nbsp;</label>
    <input type="submit" value="Login" id="submit">
</form>    

<p><a href="password_reset.jsp">Reset Password</a></p>

<%@ include file="/includes/footer.jsp" %>