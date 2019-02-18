<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orari Corse</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="/Stile.css" rel="stylesheet">
</head>
<body>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<%@ include file="header.jsp" %>
	<%@ include file="menu.jsp" %>

	<div class="tavole">
	<table class="table-dark" id="alf">
		<thead>
			<tr>
				<th scope="col">Compagnia</th>
				<th scope="col">Orario</th>
				<th scope="col">Prezzo</th>
				<th scope="col">Durata</th>
			</tr>
		</thead>
		<tbody>
			<c:set var ="x" scope="session" value="true"></c:set>
			<c:forEach var="i" items="${orariSelect.lista}">
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
					<td><c:out value="${i.compagnia }" /></td>
					<td><c:out value="${i.orario }" /></td>
					<td><c:out value="${i.prezzo }" /></td>
					<td><c:out value="${i.durata }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<table class="table-dark" id="alf">
	<thead>
		<tr>
			<th scope="col">Ricerca Orario</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>	
				<form action="SearchOrario" method="POST">
					<div class="form-group">
						<input type="text" class="form-control" name="partenzaSel"
							placeholder="Luogo di Partenza" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="arrivoSel"
							placeholder="Luogo di Arrivo" required>
					</div>
					<div class="form-group col-md-6">
						<select class="custom-select" name="giornoSel" required>
							<option selected>Giorno</option>
							<option value="Lunedì">Lunedì</option>
							<option value="Martedì">Martedì</option>
							<option value="Mercoledì">Mercoledì</option>
							<option value="Giovedì">Giovedì</option>
							<option value="Venerdì">Venerdì</option>
							<option value="Settimanale">Settimanale</option>
						</select>
					</div>
					<div class="form-group">
						<button type="submit">Cerca</button>
					</div>
				</form>
			</td>
		</tr>
	</tbody>
	</table>
	</div>
</body>
</html>