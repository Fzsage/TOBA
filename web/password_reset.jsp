<%-- 
    Document   : password_reset
    Created on : Nov 6, 2016, 1:22:24 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.html"%>

<form action="ResetPasswordServlet" method="post">
    <input type="hidden" name="action" value="reset">

    <label>Username:</label>
    <span>${user.userName}</span><br>

    <label>Password:</label>
    <input type="text" name="password" value=${user.password}><br>

    <label>&nbsp;</label>
    <input type="submit" value="Reset" id="submit">
</form>  
<p><i>${message}</i></p>

<%@ include file="/includes/footer.jsp" %>
