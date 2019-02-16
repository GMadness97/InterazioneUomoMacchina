<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Percorsi</title>
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
<table class="table table-hover table-bordered">
  <thead>
    <tr class = table-dark>
      <th scope="col">Percorso</th>
      <th scope="col">Inserito da</th>
      <th scope="col">Valutazione</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><a href="">1</a></th>
      <td>Mark</td>
      <td>Otto</td>
    </tr>
    <tr>
      <th scope="row"><a href="">1</a></th>
      <td>Jacob</td>
      <td>Thornton</td>
    </tr>
    <tr>
      <th scope="row"><a href="">1</a></th>
      <td>Larry the Bird</td>
      <td>Thornton</td>
    </tr>
  </tbody>
</table>


</div>
<%@ include file="footer.jsp" %>
</body>
</html>