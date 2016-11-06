<%-- 
    Document   : Sucess
    Created on : Nov 6, 2016, 1:06:16 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Titan Online Banking</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Titan Online Banking</h1>
        <div>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="login.html">Login</a></li>
                <li><a href="New_customer.html">Register with Titan</a></li>
                <li><a href="Account_activity.html">Account Activity</a></li>
                <li><a href="Transaction.html">Make a Transaction</a></li>
            </ul></div>

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
    </body>
</html>
