<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci Aggiornamento</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="/Stile.css" rel="stylesheet" >
</head>
<body>
	<jsp:useBean id="orari" scope="session" class="model.ListOrari"></jsp:useBean>
	<jsp:useBean id="rivenditori" scope="session" class="model.ListRivenditori"></jsp:useBean>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<%@ include file="header.jsp" %>
	<%@ include file="menu.jsp" %>

<table class="table-dark">
  <thead>
    <tr>
      <th scope="col">Inserisci Aggiornamento</th>
    </tr>
  </thead>
  <tbody>
  	<tr>
  	<td>
  	<form action="AddRivenditore" method="POST">
		<div class="form-group">
   			<input type="text" class="form-control" name="compAvv" placeholder="Compagnia Avviso" required>
  		</div>
  		<div class="form-group">
   			<input type="text" class="form-control" name="avviso" placeholder="Avviso" required>
  		</div>
  		<div class="form-group">
  			<input type="hidden" class="form-control" name="verificato" value="<%= %>">
  		</div>
  		<div class="form-group">
  			<button type="submit">Conferma</button>
  		</div>
  	</form>
  	</td>
  	</tr>
  </tbody>
</table>	

</body>
</html>