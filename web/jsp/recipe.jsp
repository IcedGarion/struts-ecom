<%@ page import="util.loginCheck" %>
<%@ page import="Beans.LoginBean" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>INFORMAZIONI RICETTA</title>
    <jsp:include page="../util/checkLog.jsp"/>
    <script type="text/javascript" src="<%=request.getContextPath()%>/javascript/validation.js"></script>
</head>
<body>
<div id="container">
    <div id="header">
        <h1>FARMACO CON RICETTA</h1>
    </div> <!-- header -->

    <div id="cont">
        <div id="left" class="left">
            <jsp:include page="../util/sidebar.jsp"/>
        </div>
        <div id="body" class="right">
        <form action="<%=request.getContextPath()%>/addRecipeToCart.do" method="post" name="form" onsubmit="return validatePersonnelForm()">
            <h4>Dati Paziente: </h4>
            <input type="text" name="cfPaz" id="cfPaz" required>Codice fiscale paziente<br>
            <input type="text" name="nomePaz" id="nomePaz" required>Nome paziente<br>
            <input type="text" name="cognomePaz" id="cognomePaz" required>Cognome paziente<br>

            <!-- calendario!!! -->
            <input type="text" name="dataNascitaPaz" id="dataNscitaPaz" required>Data di nascita Paziente<br>

            <h4>Dati Ricetta:</h4>
            <input type="text" name="codRegMed" id="codRegMed" required>Codice regionale medico<br>

            <input type="submit" value="REGISTRA">
        </form>
        </div> <!-- body -->
        <div class="clear"/>
    </div>


    <div id= "footer">
        <h6>Creato da Garion Musetta _ Tutti i diritti sono riservati @2017</h6>
    </div> <!--footer-->
</div> <!-- container>
</body>
</html>
