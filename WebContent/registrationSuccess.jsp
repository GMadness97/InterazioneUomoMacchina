<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Stile.css">
<title>Registrazione Effetuata</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
	
<div class = regSucc>	
	<h1>
	Benvenuto <% String h = (String) request.getParameter("nome");%>
			<% out.println(h); %>
	</h1>
	<h5>Ti confermiamo che la registrazione è stata effettuata con successo!
	<br>Torna alla <a href="index.jsp">home</a>.
	</h5>
</div>	
 <%@ include file="footer.jsp" %>
</body>
</html>