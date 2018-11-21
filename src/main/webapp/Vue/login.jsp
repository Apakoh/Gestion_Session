<%-- 
    Document   : login
    Created on : 20 nov. 2018, 16:24:31
    Author     : Spard
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Please login</title>
	</head>
	<body>
		<form action="<c:url value="/" />" method="POST"> <!-- l'action par défaut est l'URL courant, qui va rappeler la servlet -->
			login (untel) : <input name='loginParam'><br>
			password (ABCD): <input name='passwordParam' type='password'><br>
			<input type='submit' name='action' value='login'>
		</form>
		<!-- On montre le nombre d'utilisateurs connectés -->
		<!-- Cette information est stockée dans le scope "application" par le listener -->
		<h3>Il y a actuellement ${applicationScope.numberConnected} utilisateurs connectés</h3>
	</body>
</html>
