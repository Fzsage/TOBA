<%-- 
    Document   : Transaction
    Created on : Nov 6, 2016, 5:51:48 PM
    Author     : Sage
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/includes/header.html"%>

<h2>Post a Transaction</h2>

<h3>Balance</h3>

<p><b>Checking:</b> ${checking.startingBal}</p>
<p><b>Savings:</b> ${savings.startingBal}</p>

<h3>Transfer Funds</h3>

<form action="TransactionServlet" method="post">
    <label>From:</label>
    <select name = "From:">
        <option value="select"> </option>
        <option value="CHECKING">Checking</option>
        <option value="SAVINGS">Savings</option>
    </select>

    <label>To:</label>
    <select name="To:">
        <option value="select"> </option>    
        <option value="CHECKING">Checking</option>
        <option value="SAVINGS">Savings</option>                        
    </select>

    <label>Amount:</label><input type="number" name="Amount" placeholder="0.00" value="">

    <input type="submit" value="Submit Transfer">
</form>
<%@ include file="/includes/footer.jsp" %>