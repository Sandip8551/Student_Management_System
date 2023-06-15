<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
html{
	overflow : hidden;
}

body{
		display: flex;
		justify-content: center;
		align-items: center;
		width: 100;	
		height:90vh;
		font-family: 'Poppins', sans-serif;
}

form{
		width: 40%;
		height: max-content;
		border: 3px solid #565656;
		border-radius: 20px;
		padding: 1rem;

}

input{
		width: 90%;
		padding: .5em 1em;
		font-size: 1.3rem;
		font-weight: 500;
		border: 0;
		border-bottom: 3px solid #565656;
		
}

.btn:hover{
		background-color: salmon;
		border: 3px solid salmon;
		color: #fff;
}

h2 {
		font-size: 2rem;
}
</style>
<body>
	<form action="signUp"method="post">
		<h2>Admin SignUp</h2>
		<input name="AdminName" placeholder="Enter Name :" type="text"><br></br>
		<input name="AdminEmail" placeholder="Enter Email :" type="email"><br></br>
		<input name="AdminPassword" placeholder="Enter Password :" type="password"><br></br>
		<input type="submit" class="btn" value="SignUp">
	</form>
	
</body>
</html>