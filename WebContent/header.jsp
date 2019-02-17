<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="style.css" rel="stylesheet" >
</head>
<body>
<%
	String name = "Login", link = "login.jsp";
	if(session.getAttribute("isLogged") != null){
		name = "Logout";
		link = "LogoutControl";
	}
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<div class = container-fluid>

<nav class="navbar fixed-top navbar-dark bg-dark">
  <a class="navbar-brand" href=""></a>
   <div id="logo">
   	<a href = index.jsp>
        <img class="center" src="img/logo.png" width="50%"/>    
    </a>
   </div>
  <a class="navbar-brand" href= <%= link %> > <%= name %> </a>

   
</nav>
</div>
</body>
</html>