<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Percorso</title>
<link href="Stile.css" rel="stylesheet" >
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<%@ page import="java.util.*, java.text.*, model.*" %>
<div class=container-fluid id=dettagliPercorso class=percorso>

	

				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="img/mappa2.jpg" /></div>
						  
						</div>
						<%
								Percorso percorso = (Percorso) session.getAttribute("percorso");
						%>
						
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
						<h5 class="product-description">Da: <%= percorso.getPartenza() %></h5>
						<h5 class="price">A: <%= percorso.getArrivo() %></h5>
						<h5><%= percorso.getCompagnia() %></h5>
						<h5>Alle: <%= percorso.getOraPartenza() %></h5>
						<h5>Durata: <%= percorso.getDurata() %></h5>
						<h5>Valutazione <%= percorso.getValutazione() %></h5>
						
						
						
					</div>
				</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>