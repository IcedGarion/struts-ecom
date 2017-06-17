<%@ page import="Beans.LoginBean" %>
<%@ page import="util.TableReader" %>
<%@ page import="java.sql.ResultSet" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LISTA PERSONALE</title>
    <jsp:include page="../util/checkLog.jsp"/>
</head>
<body>
<div id="container">
    <div id="header">
        <h1>ELENCO PERSONALE FARMACIA</h1>
    </div> <!-- header -->
    <div id="cont">
        <div id="left" class="left">
            <jsp:include page="../util/sidebar.jsp"/>
        </div>
        <div id="body" class="right">
            <table style="width:100%">
                <tr>
                    <th>Nome</th>
                    <th>Cognome</th>
                    <th>Username</th>
                    <th>Ruolo</th>
                    <th>Codice Fiscale</th>
                    <th>Data di nascita</th>
                </tr>
                <%
                    TableReader reader = new TableReader();
                    ResultSet table = reader.buildPersonnelTable(((LoginBean) session.getAttribute("RegisterBean")).getUsername());

                    while(table.next())
                    {
                %><tr>
                <td><%= table.getString("nome") %></td>
                <td><%= table.getString("cognome") %></td>
                <td><%= table.getString("username") %></td>
                <td><%= table.getString("ruolo").toUpperCase() %></td>
                <td><%= table.getString("cf") %></td>
                <td><%= table.getString("datanascita") %></td>
            </tr>
                <%}
                %>
            </table>
        </div> <!-- body -->
        <div class="clear"/>
    </div>
    <div id= "footer">
        <h6>Creato da Garion Musetta _ Tutti i diritti sono riservati @2017</h6>
    </div> <!--footer-->
</div> <!-- container-->
</body>
</html>

