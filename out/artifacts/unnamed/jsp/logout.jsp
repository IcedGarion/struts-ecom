<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGOUT</title>
    <jsp:include page="../util/checkLog.jsp"/>
</head>
<body>
<div id="container">
    Logout in corso...

    <%
        request.getSession().removeAttribute("RegisterBean");
    %>
    <script type="text/javascript">
        window.location.replace('<%=request.getContextPath()%>/index.html');
    </script>
</div> <!-- container-->
</body>
</html>
