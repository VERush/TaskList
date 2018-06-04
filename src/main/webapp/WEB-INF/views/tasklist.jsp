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
	
	<style>
	.table > tbody > tr > td {
	vertical-align: middle;
	}
	</style>
	
	
</head>
<body class=" bg-info text-center">
	<div class="container mt-5">
		<h1>Task List</h1>
	</div>

	<div class="container mt-5">

		<table
			class="table table-sm table-bordered table-striped table-hover bg-warning">



			<thead class="bg-secondary">
				<th>Task</th>
				<th>Due Date</th>
				<th>Complete</th>
				<th>Update</th>
				<th>Delete</th>
			</thead>
			<tbody>
				<c:forEach var="myVar" items="${tasks}">
					<tr>
						<td>${myVar.task}</td>
						<td>${myVar.duedate}</td>
						<td>${myVar.complete}</td>
						<td> <a href="/update?id=${myVar.id}"><button class="btn btn-primary">Complete</button></a> </td>
						<td> <a href="/delete?id=${myVar.id}"><button class="btn btn-primary">Delete</button></a> </td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	<div class="container bg-success mt-5">
		<h1>Add New Task</h1>
  
		<form class="form-group" action="addtotask">
			<input class="form-control-inline" type="text" name="task" placeholder="Enter New Task" required>
			<input class="form-control-inline" type="date" name="duedate" placeholder="YYYY-MM-DD" required> <input
				class="form-control" type="hidden" name="userid" value="${userid }"><input
				class="btn btn-primary" type="submit" name="Submit">

		</form>

	</div>

</body>
</html>