<%-- 
    Document   : login
    Created on : Nov 6, 2016, 5:50:38 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.html"%>

<form action="LoginServlet" method="post">
    <input type="hidden" name="action" value="login">

    <label>Username:</label>
    <input type="email" name="userName" required><br>

    <label>Password:</label>
    <input type="password" name="password" required><br>

    <label>&nbsp;</label>
    <input type="submit" value="Login" id="submit">
</form>    

<p><a href="password_reset.jsp">Reset Password</a></p>

<%@ include file="/includes/footer.jsp" %>