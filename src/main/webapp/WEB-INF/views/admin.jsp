<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item Admin</title>
</head>
<body>
	<div class="container">
		<h1>Welcome to Grand Circus Coffee</h1>
		<table class="table" border="1">
			<thead>
				<tr>
					<th>ID</th>
					<th>Item</th>
					<th>Description</th>
					<th>Quantity</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${itemData}">
					<tr>
						<td>${item.itemId}</td>
						<td>${item.itemName}</td>
						<td>${item.description}</td>
						<td>${item.quantity}</td>
						<td>${item.price}</td>
						<td><a href="delete?id=${item.itemId}">Delete</a></td>
						<td><a href="update?id=${item.itemId}">Update</a></td>
						<td></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>