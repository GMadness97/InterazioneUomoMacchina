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
<div class="container" id='ins'>
<div class="form-group col-sm-offset-4" id='ins'>
  
 <input type="text" class="form-control form-control-lg"  placeholder="Inserisci codice" name="codice" required oninput ="controlloCognome2()"> 
<input type="text" class="form-control form-control-lg"  placeholder="Inserisci marca" name="marca" required oninput ="controlloCognome2()"> 
<input type="text" class="form-control form-control-lg"  placeholder="Inserisci modello" name="modello" required oninput ="controlloCognome2()">
<input type="text" class="form-control form-control-lg"  placeholder="Inserisci descrizione" name="descrizione" required oninput ="controlloCognome2()">
<input type="file" accept="image/*" class="form-control form-control-lg"   name="foto" > 
<input type="text" class="form-control form-control-lg"  placeholder="Inserisci quantità" name="quantita" required oninput ="controlloQnt()"> 
</div>
</div>
</body>
</html>