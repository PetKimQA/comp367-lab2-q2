<%@ page import="java.time.LocalTime" %>
<html>
<body>
<%
    int hour = LocalTime.now().getHour();
    if (hour < 12) {
%>
        <h2>Good Morning, Tae Suk Kim, Welcome to COMP367</h2>
<%
    } else {
%>
        <h2>Good Afternoon, Tae Suk Kim, Welcome to COMP367</h2>
<%
    }
%>
</body>
</html>