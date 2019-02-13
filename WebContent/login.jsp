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
<%@ include file="header.jsp" %>
<%@ include file="menu.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<form action="LoginControl" method="post" name="login">
<div class="container login-container"> 
            <div class="row">
                <div class="col-md-9 col-md-offset-5 login-form-1">
                    <h3>Login</h3>
                    
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email *" name ="email"   required oninput ="controlloEmail()">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Password *" name ="password" required oninput ="controlloPassword()" />
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnSubmit" name="invio" value="Login" name="login" onclick="validazione()"/>
                        </div>
                    	<div class="form-group">
                       <p class="btnForgetPwd">Non hai un account? <a href="registrazione.jsp" >registrati</a></p>
                        </div>
                </div>
                
                    
                </div>
            </div>
       
    </form>    
    
    <%@ include file="footer.jsp" %>
</body>
</html>