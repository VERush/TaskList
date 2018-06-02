<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Task List Login Page</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>
<body class="text-center">
	<div class="container"></div>
	<h1 class="mt-5">Task List</h1>
	</div>
	<div class="container mt-5">
		<div class="row">
		
		
		<div class="col-5">
		
		<h1>Sign In!</h1>
		<form action="signin">
		<input type="name" name="name" placeholder="Name">
		<input type="password" name="password" placeholder="Password">
		<input type="submit" value="submit" class="btn-secondary">
		</form>
		
		</div>
		
		
		<div class="col-1">
		<h1>OR</h1>
		</div>
		
		
		<div class="col-5">
		
		<h1>Sign Up!</h1>
		<form action="signup">
		<input type="text" name="name" placeholder="Enter your name">
		<input type="email" name="email" placeholder="Enter your email">
		<input type="password" name="password" placeholder="Enter your password">
		<input type="submit" value="submit" class="btn-secondary">
		</form>	
		
		</div>
		
		
		
		</div>
	</div>



</body>
</html>