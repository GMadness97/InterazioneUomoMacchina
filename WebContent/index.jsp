<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UniRoad</title>
<link href="Stile.css" rel="stylesheet" >
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class=container-fluid id = dettagliPercorso>
<form>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" placeholder="First name">
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Last name">
    </div>
    <div class ="col">
   <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span > <i class="fa fa-user"></i> </span>
        <input type="datetime-local" class="form-control" placeholder="Data di nascita dd/mm/yy" name="data_nascita" id="uno" >
   		 </div>
    </div>
  	</div>
  	<div class="col">
  		<button type="button" class="btn btn-light">Cerca</button>
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