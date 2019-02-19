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

	<%@ include file="header.jsp" %>
	<%@ include file="menu.jsp" %>
	<table class="table-dark">
	  <thead>
    	<tr>
    	<th scope="col">Verificato</th>
      	<th scope="col">Compagnia</th>
      	<th scope="col">Avviso</th>
    	</tr>
  	  </thead>
 	 	<tbody>
 	 		<c:set var ="x" scope="session" value="true"></c:set>
 	 		<c:forEach var = "i" items="${aggiornamenti.lista}">
 	 		<c:choose>
 	 			<c:when test="${x == true}">
 	 			<c:set var="x" value="false"/>
 	 			<tr>
 	 			</c:when>
 	 			<c:otherwise>
 	 			<c:set var="x" value="true"/>
 	 			<tr style="background-color:#808080;">
 	 			</c:otherwise>
 	 		</c:choose>
 	 			<td>
 	 				<c:choose>
 	 					<c:when test="${i.verificato == true}">
 	 						<img src="img/true.png" width="30px" height="30px"> 
 	 					</c:when>
 	 					<c:otherwise>
 	 						<img src="img/false.png" width="30px" height="30px"> 
 	 					</c:otherwise>
 	 				</c:choose>
 	 				<a href="SingleAgg?param1=<c:out value='${i.numAvviso }' />">Visualizza</a>
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