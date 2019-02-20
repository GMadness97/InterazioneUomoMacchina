<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UniRoad</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="InterazioneUomoMacchina/WebContent/Stile.css" rel="stylesheet" type="text/css" >
</head>
<body>
	<jsp:useBean id="orari" scope="session" class="model.ListOrari"></jsp:useBean>
	<jsp:useBean id="rivenditori" scope="session" class="model.ListRivenditori"></jsp:useBean>
	<jsp:useBean id="orariSelect" scope="session" class="model.ListOrari"></jsp:useBean>
	<jsp:useBean id="orarioX" scope="session" class="model.Orario"></jsp:useBean>	
	<%
		orarioX.setPartenza("Napoli Galileo Ferraris");
		orarioX.setArrivo("Unisa Fisciano");
		orarioX.setOrario("9:30");
		orarioX.setGiorno("Lunedì");
		orarioX.setCompagnia("Sita Sud");
		orarioX.setPrezzo("4.50");
		orarioX.setDurata("1:00");
		orariSelect.addWithControll(orarioX);
	%>
	<jsp:useBean id="aggiornamento" scope="session" class="model.Aggiornamento"></jsp:useBean>
	<jsp:useBean id="singAgg" scope="session" class="model.Aggiornamento"></jsp:useBean>	
	<jsp:useBean id="aggiornamenti" class="model.ListAggiornamenti" scope="session"></jsp:useBean>
	<jsp:useBean id="aggiornamento0" class="model.Aggiornamento" scope="page"></jsp:useBean>
	<jsp:useBean id="aggiornamento1" class="model.Aggiornamento" scope="page"></jsp:useBean>
	<jsp:useBean id="aggiornamento2" class="model.Aggiornamento" scope="page"></jsp:useBean>
	<%  
		aggiornamento0.setNumAvviso(0);
		aggiornamento0.setCompagnia("Sita Sud");
		aggiornamento0.setAvviso("Domani giorno 19/01/2019 la linea Fisciano-Napoli, non sarà garantita per difficoltà meteorologiche");
		aggiornamenti.addWithControll(aggiornamento0);
		aggiornamento1.setNumAvviso(1);
		aggiornamento1.setCompagnia("SNAV");
		aggiornamento1.setAvviso("Domani giorno 19/01/2019 i traghetti da e verso Napoli saranno sospesi per difficoltà meteorologiche");
		aggiornamenti.addWithControll(aggiornamento1);
		aggiornamento2.setNumAvviso(2);
		aggiornamento2.setCompagnia("E.A.V.");
		aggiornamento2.setAvviso("Mercoledì 20/01/2019 è indetto lo sciopero nazionale degli autotrasportatori per cui le corse dalle ...");
		aggiornamenti.addWithControll(aggiornamento2);
	%>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<%@ page import="java.util.*, java.text.*" %>
<div class=container-fluid id = dettagliPercorso>
<form action=RicercaPercorso>
  <div class="row">
  	<div class=col style="margin-right: -20%; color: white;">
  		<h5>Da:</h5>
  	</div>
    <div class="col">
      <input type="text" class="form-control" name=partenza value="La tua posizione">
    </div>
    <div class=col style="margin-right: -20%; color: white;">
  		<h5>A:</h5>
  	</div>
    <div class="col">
      <input type="text" class="form-control" name=arrivo placeholder="Arrivo">
    </div>
    <div class ="col">
   <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span > <i class="fa fa-user"></i> </span>
		    <% GregorianCalendar data = new GregorianCalendar(); 
		    	int anno = data.get(Calendar.YEAR);
		    	int mese = data.get(Calendar.MONTH)+1;
		    	int giorno = data.get(Calendar.DAY_OF_MONTH);
		    	int ore = data.get(Calendar.HOUR_OF_DAY);
		    	int min = data.get(Calendar.MINUTE);
		    	DecimalFormat formatter = new DecimalFormat("00");
		    	System.out.println(anno + "-" + formatter.format(mese) + "-" + formatter.format(giorno) + "T" + formatter.format(ore) + ":" + formatter.format(min)); %>
        <input type="datetime-local" class="form-control" value=<%= anno + "-" + formatter.format(mese) + "-" + formatter.format(giorno) + "T" + formatter.format(ore) + ":" + formatter.format(min) %> id="uno" >
   		 </div>
    </div>
  	</div>
  	<div class="col">
  		<button type="submit" class="btn btn-light">Cerca</button>
  	</div>
  	</div>
</form>
<div>
<img src="img/mappa1.jpg" class="img-fluid" alt="Responsive image">
</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>