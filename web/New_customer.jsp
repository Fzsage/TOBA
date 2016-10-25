<%-- 
    Document   : New_customer
    Created on : Oct 24, 2016, 7:55:58 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Register with Titan</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Titan Online Banking</h1>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="login.html">Login</a></li>
            <li><a href="New_customer.html">Register with Titan</a></li>
            <li><a href="Account_activity.html">Account Activity</a></li>
            <li><a href="Transaction.html">Make a Transaction</a></li>
        </ul>

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
    </body>
</html>