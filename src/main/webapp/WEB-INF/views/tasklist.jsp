<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Task List</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>
<body class="text-center">
	<div class="container mt-5">
		<h1>Task List</h1>
	</div>
	
	<div class="mt-5">
	
	<table class="table table-bordered table-striped table-hover">



			<thead class="bg-secondary">
				<th>Task</th>
				<th>Due Date</th>
				<th>Complete</th>
			</thead>
			<tbody>
				<c:forEach var="myVar" items="${tasks}">
					<tr>
						<td>${myVar.task}</td>
						<td>${myVar.duedate}</td>
						<td>${myVar.complete}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	</div>

</body>
</html>