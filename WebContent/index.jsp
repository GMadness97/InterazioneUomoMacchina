<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UniRoad</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="Stile.css" rel="stylesheet" >
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<%@ page import="java.util.*, java.text.*" %>
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
<div>
<img src="img/mappa1.jpg" class="img-fluid" alt="Responsive image">
</div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>