<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aggiornamenti</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="/Stile.css" rel="stylesheet" >
</head>
<body>
	<jsp:useBean id="aggiornamenti" class="model.ListAggiornamenti" scope="page"></jsp:useBean>
	<jsp:useBean id="aggiornamento0" class="model.Aggiornamento" scope="page"></jsp:useBean>
	<jsp:useBean id="aggiornamento1" class="model.Aggiornamento" scope="page"></jsp:useBean>
	<jsp:useBean id="aggiornamento2" class="model.Aggiornamento" scope="page"></jsp:useBean>
	<%  
		aggiornamento0.setNumAvviso(0);
		aggiornamento0.setCompagnia("Sita Sud");
		aggiornamento0.setAvviso("Domani giorno 19/01/2019 la linea Fisciano-Napoli, non sarà garantita per difficoltà meteorologiche");
		aggiornamenti.addItem(aggiornamento0);
		aggiornamento1.setNumAvviso(1);
		aggiornamento1.setCompagnia("SNAV");
		aggiornamento1.setAvviso("Domani giorno 19/01/2019 i traghetti da e verso Napoli saranno sospesi per difficoltà meteorologiche");
		aggiornamenti.addItem(aggiornamento1);
		aggiornamento2.setNumAvviso(2);
		aggiornamento2.setCompagnia("E.A.V.");
		aggiornamento2.setAvviso("Mercoledì 20/01/2019 è indetto lo sciopero nazionale degli autotrasportatori per cui le corse dalle ...");
		aggiornamenti.addItem(aggiornamento2);
	%>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<%@ include file="header.jsp" %>
	<%@ include file="menu.jsp" %>
	
	<table class="table-dark">
	  <thead>
    	<tr>
      	<th scope="col">Compagnia</th>
      	<th scope="col">Avviso</th>
    	</tr>
  	  </thead>
 	 	<tbody>
 	 	<tr>
  			<td>
 	 			<p><%= aggiornamenti.getItem(0).getCompagnia() %></p>
 	 		</td>
			<td>
 	 			<p><%= aggiornamenti.getItem(0).getAvviso() %></p>
 	 		</td>
		</tr>
		<tr>
  			<td>
 	 			<p><%= aggiornamenti.getItem(1).getCompagnia() %></p>
 	 		</td>
			<td>
 	 			<p><%= aggiornamenti.getItem(1).getAvviso() %></p>
 	 		</td>
		</tr>
 	 	<tr>
  			<td>
 	 			<p><%= aggiornamenti.getItem(2).getCompagnia() %></p>
 	 		</td>
			<td>
 	 			<p><%= aggiornamenti.getItem(2).getAvviso() %></p>
 	 		</td>
		</tr>
		<tr>
  			<td>
 	 			<p></p>
 	 		</td>
			<td>
 	 			<p></p>
 	 		</td>
		</tr>
		<tr>
  			<td>
 	 			<p></p>
 	 		</td>
			<td>
 	 			<p></p>
 	 		</td>
		</tr>
		<tr>
  			<td>
 	 			<p></p>
 	 		</td>
			<td>
 	 			<p></p>
 	 		</td>
		</tr>
		<tr>
  			<td>
 	 			<p></p>
 	 		</td>
			<td>
 	 			<p></p>
 	 		</td>
		</tr>
 	 	</tbody>
	</table>
	

</body>
</html>