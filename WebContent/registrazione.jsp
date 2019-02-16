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
<br><br>
<br><br>
<div class="container container-registrazione">
<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Crea un Account</h4>
	
	
	<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
        <input type="text" class="form-control" placeholder="Nome" name="nome" required oninput="controlloNome()" id="due" >
   		 </div>
   
    </div> <!-- form-group// -->
    <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
        <input type="text" class="form-control" placeholder="Cognome" name="cognome" required oninput="controlloCognome()" id="tre" >
    </div> <!-- form-group// -->
    	</div>
    
     <div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
        <input type="date" class="form-control" placeholder="Data di nascita dd/mm/yy" name="data_nascita" required oninput="controlloData()" id="uno" >
   		 </div>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
        <input type="email" class="form-control" placeholder="Email" name="email" required oninput="controlloEmail()" id="sei">
		 </div>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
        <input type="password" class="form-control" placeholder="Inserisci password" name="password" required oninput="controlloPassword()" id="cinque">
    		 </div>
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	
     </div> <!-- form-group// -->                                      
    <div class="form-group">
        <input type="submit" class="btn btn-primary btn-block" value="Registrati" onclick="validazione();"name="regButtom">
        
</div>
    <p class="text-center">Hai già un account? <a href="login.jsp">Log In</a> </p>                                                                 
 
</article>
</div> <!-- card.// -->
</div>

<!--container end.//-->
<br><br>
<br><br>
<%@ include file="footer.jsp" %>
</body>
</html>