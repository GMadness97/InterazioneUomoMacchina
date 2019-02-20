<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Percorso</title>
<link href="Stile.css" rel="stylesheet">
<style>
.slidecontainer {
  width: 80%;
}

.slider {
  -webkit-appearance: none;
  width: 75%;
  height: 15px;
  border-radius: 5px;
  background: #999999;
  outline: none;
  opacity: 0.7;
  -webkit-transition: .2s;
  transition: opacity .2s;
}

.slider:hover {
  opacity: 1;
}

.slider::-webkit-slider-thumb {
  -webkit-appearance: none;
  appearance: none;
  width: 25px;
  height: 25px;
  border-radius: 50%;
  background: #E6E6E6;
  cursor: pointer;
}

}
</style>

</head>
<body style="color:white;">
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<%@ page import="java.util.*, java.text.*, model.*" %>
<div class=container-fluid id=dettagliPercorso class=percorso>
						<%
								Percorso percorso = (Percorso) session.getAttribute("percorso");
								DecimalFormat formatter = new DecimalFormat("#0.0");
						%>
						
				<div class="wrapper row">
					<div class="preview col-md-6">
						<h1><%= percorso.getCreatore() %></h1>
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="img/mappa2.jpg" /></div>
						  
						</div>
					</div>
					<div class="details col-md-6">
						<h3 class="product-title"> </h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							
						</div>
						<form action="ValutaPercorso">
						<div class="slidecontainer">
 							<input type="range" min="1" max="5" value="4" name="voto" class="slider" id="myRange">
 							<input class="btn btn-light" type="submit" value="Valuta" style="float:right;width:20%;">
						</div>
						</form>
						<br><br>
						<h5 class="product-description">Da: <%= percorso.getPartenza() %></h5>
						<br>
						<h5 class="price">A: <%= percorso.getArrivo() %></h5>
						<br>
						<h5>Compagnia: <%= percorso.getCompagnia() %></h5>
						<br>
						<h5>Alle: <%= percorso.getOraPartenza() %></h5>
						<br>
						<h5>Durata: <%= percorso.getDurata() %> minuti</h5>
						<br>
						<h5>Valutazione: <%= formatter.format(percorso.getValutazione()) %></h5>
						
						
						
					</div>
				</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>