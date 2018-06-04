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
	<div class="container">
		<h1 class="mt-5">Task List</h1>
	</div>
	<div class="container">
		<div class="row">
		
		
		<div class="col-md mt-5">
		
		<h1>Sign In!</h1>
		<form class="form-group" action="signin">
		<input class="form-control" type="name" name="name" placeholder="Name" required>
		<input class="form-control" type="password" name="password" placeholder="Password" required>
		<input class="btn btn-primary" type="submit" value="Submit">
		</form>
		
		</div>
		
		
		<div class="col-md mt-5">
		<h1>OR</h1>
		</div>
		
		
		<div class="col-md mt-5">
		
		<h1>Sign Up!</h1>
		<form class="form-group" action="signup">
		<input class="form-control" type="text" name="name" placeholder="Enter your name" required>
		<input class="form-control" type="email" name="email" placeholder="Enter your email" required>
		<input class="form-control" type="password" name="password" placeholder="Enter your password" required>
		<input class="btn btn-primary" type="submit" value="Submit">
		</form>	
		
		</div>
		
		
		
		</div>
	</div>



</body>
</html>