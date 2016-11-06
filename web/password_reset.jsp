<%-- 
    Document   : password_reset
    Created on : Nov 6, 2016, 1:22:24 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
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

        <form action="ResetPasswordServlet" method="post">
            <input type="hidden" name="action" value="reset">

            <label>Username:</label>
            <span>${user.userName}</span><br>

            <label>Old Password:</label>
            <input type="password" name="password" required><br>

            <label>New Password:</label>
            <input type="password" name="newPassword" required><br>




            <label>&nbsp;</label>
            <input type="submit" value="Reset" id="submit">
        </form>  
        <p><i>${message}</i></p>
    </body>
</html>
