<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiornamenti</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="/Stile.css" rel="stylesheet" >
</head>
<body>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<jsp:useBean id="aggiornamento" scope="session" class="model.Aggiornamento"></jsp:useBean>
	<jsp:useBean id="singAgg" scope="session" class="model.Aggiornamento"></jsp:useBean>
	<table class="table-dark">
	  <thead>
    	<tr>
    	<th scope="col">Verificato</th>
      	<th scope="col">Compagnia</th>
      	<th scope="col">Avviso</th>
    	</tr>
  	  </thead>
 	 	<tbody>
 	 		<c:forEach var = "i" items="${aggiornamenti.lista}">
 	 		<tr>
 	 			<td>
 	 				<a href="SingleAgg?param1=<c:out value='${i.numAvviso }' />"><c:out value="${i.verificato}" /></a>
 	 			</td>
 	 			<td>
 	 				<p><c:out value="${i.compagnia}" /></p>
 	 			</td>
 	 			<td>
 	 				<p><c:out value="${i.avviso}" /></p>
 	 			</td>
 	 		</tr>
 	 		</c:forEach>
		</tbody>
	</table>
	
</body>
</html>