<%-- 
    Document   : New_customer
    Created on : Oct 24, 2016, 7:55:58 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.html"%>

<form action="NewCustomerServlet" method="post">
    <input type="hidden" name="action" value="join">

    <label>First Name</label>
    <input type="text" name="firstName"><br>

    <label>Last Name</label>
    <input type="text" name="lastName"><br>

    <label>Phone</label>
    <input type="tel" name="phone"><br>

    <label>Address</label>
    <input type="text" name="address"><br>

    <label>City</label>
    <input type="text" name="city"><br>

    <label>State</label>
    <input type="text" name="state"><br>

    <label>Zip Code</label>
    <input type="number" name="zipCode"><br>

    <label>Email Address</label>
    <input type="email" name="email"><br>



    <label>&nbsp;</label>
    <input type="submit" value="Register" id="submit">
</form>  
<p><i>${message}</i></p>

<%@ include file="/includes/footer.jsp" %>