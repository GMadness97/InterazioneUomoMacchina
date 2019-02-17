<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserisci Info</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="/Stile.css" rel="stylesheet" >
</head>
<body>
	<jsp:useBean id="orari" scope="session" class="model.ListOrari"></jsp:useBean>
	<jsp:useBean id="rivenditori" scope="session" class="model.ListRivenditori"></jsp:useBean>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	
<table class="table-dark">
  <thead>
    <tr>
      <th scope="col">Inserisci Rivenditore</th>
      <th scope="col">Inserisci Orario</th>
    </tr>
  </thead>
  <tbody>
  	<tr>
  	<td>
	<form action="AddRivenditore" method="POST">
		<div class="form-group">
   			<input type="text" class="form-control" name="compagniaRiv" placeholder="Compagnia" required>
  		</div>
  		<div class="form-group">
   			<input type="text" class="form-control" name="luogoRiv" placeholder="Luogo Rivenditore" required>
  		</div>
  		<div class="form-group">
  			<button type="submit">Conferma</button>
  		</div>
  	</form>
	</td>
	<td>
	<form action="AddOrario" method="POST">
		<div class="form-group">
   			<input type="text" class="form-control" name="partenza" placeholder="Luogo di Partenza" required>
  		</div>
  		<div class="form-group">
   			<input type="text" class="form-control" name="arrivo" placeholder="Luogo di Arrivo" required>
  		</div>
  		<div class="form-row">
  		    <div class="form-group col-md-6">
      		<input type="text" class="form-control" name="orario" placeholder="Orario Partenza" required>
    		</div>
    		<div class="form-group col-md-6">
      		  <select class="custom-select" name="giorno" required>
	   			 	<option selected>Giorno</option>
    				<option value="Lunedì">Lunedì</option>
    				<option value="Martedì">Martedì</option>
    				<option value="Mercoledì">Mercoledì</option>
    				<option value="Giovedì">Giovedì</option>
    				<option value="Venerdì">Venerdì</option>
    				<option value="Settimanale">Settimanale</option>
    		  </select>
    		</div>
  		</div>
  		<div class="form-group">
   			<input type="text" class="form-control" name="compagnia" placeholder="Compagnia" required>
  		</div>
  		<div class="form-group">
   			<input type="text" class="form-control" name="prezzo" placeholder="Prezzo" required>
  		</div>
  		<div class="form-group">
   			<input type="text" class="form-control" name="durata" placeholder="Durata" required>
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