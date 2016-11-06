<%-- 
    Document   : footer
    Created on : Nov 6, 2016, 5:09:36 PM
    Author     : Sage
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%  
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<p>&copy; Copyright <%= currentYear %> Sage Shoemake</p>
</body>
</html>
