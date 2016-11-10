<%-- 
    Document   : Sucess
    Created on : Nov 6, 2016, 1:06:16 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.html"%>

<h2>Your account has been created successfully.</h2>
<h3>Here is the information that you entered:</h3>

<label>First Name:</label>
<span>${user.firstName}</span></br>
<label>Last Name:</label>
<span>${user.lastName}</span></br>
<label>Phone Number:</label>
<span>${user.phone}</span></br>
<label>Address:</label>
<span>${user.address}</span></br>
<label>City:</label>
<span>${user.city}</span></br>
<label>State:</label>
<span>${user.state}</span></br>
<label>Zip Code:</label>
<span>${user.zipCode}</span></br>
<label>E-mail Address:</label>
<span>${user.email}</span></br>
<label>Username:</label>
<span>${user.userName}</span></br>
<label>Temporary Password:</label>
<span>${user.password}</span></br>

<%@ include file="/includes/footer.jsp" %>
