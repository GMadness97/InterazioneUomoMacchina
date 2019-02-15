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


	
	<table class="table-dark">
	  <thead>
    	<tr>
    	<th scope="col">Verificato</th>
      	<th scope="col">Compagnia</th>
      	<th scope="col">Avviso</th>
    	</tr>
  	  </thead>
 	 	<tbody id="agg">
 	 		<c:forEach var = "i" items="${aggiornamenti.lista}">
 	 		<tr>
 	 			<td>
 	 				<p><c:out value="${i.verificato}" /></p>
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