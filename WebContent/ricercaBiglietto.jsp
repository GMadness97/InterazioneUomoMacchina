<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="Stile.css" rel="stylesheet" >
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>
<div class = ricercaBiglietto>
<div class="row">
<div class="container  col-md-6 ">
<div class="input-group input-group-sm mb-3" id='ric'>
   <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" name=posizione placeholder="Inserisci la tua posizione">
</div>
<div class="dropdown">
  <button class="dropbtn">Tipologia biglietto</button>
  <div class="dropdown-content">
  <a href="#">Sita</a>
  <a href="#">Cstp</a>
  </div>
</div>
<br><br><br>
<table class="table table-hover" id='info'>
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">Distanza</th>
     <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td></td>
     
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td> </td>
      
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td> </td>
    </tr>
  </tbody>
</table>
</div>
<br><br><br><br><br><br><br>




<div class="container  col-md-6 ">


<img src="img/mappa2.jpg" class="img-fluid  w-150 p-1"  alt="Responsive image">

</div>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>