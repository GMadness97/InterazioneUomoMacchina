<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Percorsi</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="Stile.css" rel="stylesheet" >
</head>
<body style="color:white;">
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<%@ page import="java.util.*, java.text.*, model.*" %>
<div class=container-fluid id = dettagliPercorso>
<form action=RicercaPercorso>
  <div class="row">
  	<div class=col style="margin-right: -20%;">
  		<h5>Da:</h5>
  	</div>
    <div class="col">
      <input type="text" class="form-control" name=partenza value="La tua posizione">
    </div>
    <div class=col style="margin-right: -20%;">
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
  	<%
  		ArrayList<Percorso> percorsi = (ArrayList<Percorso>) session.getAttribute("trovati");
  		DecimalFormat formatter1 = new DecimalFormat("#0.0");
  		if(!percorsi.isEmpty()){
  	%>
<table class="table table-striped table-dark">
  <thead>
    <tr>
      <th scope="col">Nome percorso</th>
      <th scope="col">Creato da</th>
      <th scope="col">Valutazione</th>
    </tr>
  </thead>
  <tbody>
  <%
  		for(Percorso p : percorsi){
  			System.out.println(p.getId());
  %>
    <tr>
      <th scope="row"><a href = "VisualizzaPercorso?id=<%= p.getId() %>"><%= p.getPartenza() + " - " + p.getArrivo() %></a></th>
      <td><%= p.getCreatore() %></td>
      <td><%= formatter1.format(p.getValutazione()) %></td>
    </tr>
    <% } %>
  </tbody>
</table>
<% } %>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>