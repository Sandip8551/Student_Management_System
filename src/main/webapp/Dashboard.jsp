<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Management System</title>
<link rel="preconnect" href="http://fonts.googleleapis.com">
<link rel="preconnect" href="http://fonts.gstatic.com" crossorigin>

</head>
<style>
	body{
		height:80vh;
		width:100vw;
		display: felx;
		flex-direction: column;
		align-content: center;
		justify-content: center;
		font-family: 'Poppins', sans-serif;
	}
	a{
		padding:5em,1em;
		font-size:1.3rem;
		border:2px solid #565656;
		border-redius: 50px;
		text-decoration: none;
		color: #303030;
		margin: .5rem 2rem;
		font-weight: 600;
	}
	a:hover{
		background-color: salmon;
		color: #fff;
		border: 3px solid salmon;
	}
	
	h1{
		padding: 3rem 0rem 0rem 0rem;
		font-size:7rem;
		color: #565656;
		background-color: #f6f6f6;
		width: 100%;
		text-align: center;
		font-weigth: 500;
		margin: 0;
	}
	
	h3{
		padding: 0rem;
		padding-bottom: 3rem;
		font-weight: 500;
		font-size: 1.3rem;
		background-color: #f6f6f6;
		width: 100%;
		text-align: center;
		margin: 0;
		margin-bottom: 3rem;
	}
	
	.a{
		width:100%
		display:flex;
		justify-context: center;
}
	.logout{
		width:100%;
		position:fixed;
	}
	
</style>
<body>
	
	<% Admin admin = (Admin) session.getAttribute("admin");
		if(admin!=null){
	%>
	<h1>Welcome Admin</h1>
	<h3>You can manage Students Data here!!</h3>
	<div class="a">
		<a href="saveStudent.jsp">Save_Student</a>
		<a href="viewStudens">View_Students</a>
	</div>
	<%}else{
		response.sendRedirect("AdminLogin.jsp");
	}%>
	
	<div class="logout"><a href="logout">Logout</a></div>
	
</body>
</html>