<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AVVISO</title>
<link href="css/bootstrap.min.css" rel="stylesheet" >
<link href="/Stile.css" rel="stylesheet" >
</head>
<body>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<table class="table-dark">
		<tbody>
			<tr>
			<td>
				<p><c:out value="${aggSingl.compagnia}" /><p>
					<c:out value="${aggSingl.verificato }"/>
				</p>
				
			</td>
			</tr>
			<tr>
			<td>
				<p><c:out value="${aggSingl.avviso }"></c:out>
			</td>
			</tr>
		</tbody>
	</table>
</body>
</html>