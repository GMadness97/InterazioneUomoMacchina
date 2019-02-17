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
	<jsp:useBean id="orariSelect" scope="session" class="model.ListOrari"></jsp:useBean>
	<jsp:useBean id="orarioX" scope="session" class="model.Orario"></jsp:useBean>
	<%
		orarioX.setPartenza("Napoli Galileo Ferraris");
		orarioX.setArrivo("Unisa Fisciano");
		orarioX.setOrario("9:30");
		orarioX.setGiorno("Lunedi");
		orarioX.setCompagnia("Sita Sud");
		orarioX.setPrezzo("4.50");
		orarioX.setDurata("1:00");
		orariSelect.addItem(orarioX);
	%>

	<table class="table-dark">
		<thead>
			<tr>
				<th scope="col">Compagnia</th>
				<th scope="col">Orario</th>
				<th scope="col">Prezzo</th>
				<th scope="col">Durata</th>
		</thead>
		<tbody>
			
			<c:forEach var="i" items="${orariSelect.lista}">
				<tr>
					<td><c:out value="${i.compagnia }" /></td>
					<td><c:out value="${i.orario }" /></td>
					<td><c:out value="${i.prezzo }" /></td>
					<td><c:out value="${i.durata }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<table class="table-dark">
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
</body>
</html>