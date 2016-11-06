<%-- 
    Document   : Account_activity
    Created on : Nov 6, 2016, 4:59:35 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/includes/header.html"%>

    <c:if test="${user != null}">
    <h2>  Welcome, &nbsp;${user.firstName}&nbsp;${user.lastName}!</h2>
    </c:if>
    <c:if test="${user == null}">
        <p><i>Please log in to view your account information.</i></p>
    </c:if>


<h2>Customer Account Information</h2>

<%@ include file="/includes/footer.jsp" %>
