<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Person</title>
</head>
<body>
<h1>Item to be updated</h1>

<form action="updateitem" method="post">
		ID: ${item.id }  <!-- this value cannot be changed by a user -->
		<input type="hidden" name="id" value="${item.id }">
		Item: <input type="text" name="item" value=${item.name }> 
		Description: <input type="text" name="desc" value=${item.description }> 
		<input type="submit" name="Submit">
	</form>


</body>
</html>