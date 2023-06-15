<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student_Management_System</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<style>
html {
	overflow: hidden;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 100vw;
	height: 90vh;
	font-family: 'Poppins', sans-serif;
}

form {
	width: 40%;
	height: max-content;
	border: 3px solid #565656;
	border-radius: 20px;
	padding: 1rem;
}

input {
	width:90%;
	padding: .5em 1em;
	font-size: 1.3rem;
	font-weight: 500;
	border: 0;
	border-bottom: 3px solid #565656;
}

.btn {
	width: 30%;
	border: 3px solid #565656;
	border-radius: 50px;
	text-decoration: none;
	color: #303030;
	margin-top: 2rem;
	font-weight: 600;
}

.btn:hover {
	background-color: salmon;
	border: 3px solid salmon;
	color: #fff;
}

h2 {
	font-size: 2rem;
}
</style>
<body>
	<% Student student = (Student) request.getAttribute("student"); %>
	
	<form action ="saveUpdateStudent" method="post">
		 <input name="studentId" value="<%= student.getStudentId() %>" type="text" readonly="readonly" type="text"><br><br>
		 <input name="studnetName"value="<%=student.getStudentName() %>" type="text"><br><br>
		 <input name="studnetPhoneNumber"value="<%=student.getStudentPhoneNumber() %>" type="text"><br><br>
		 <input name="studnetEmail"value="<%=student.getStudentEmail() %>" type="text"><br><br>
		 <input name="studentFee" value="<%= student.getStudentFee() %>" type="text" readonly="readonly" type="text"><br><br>
		 <input type="submit" value="Save">
	
	</form>
</body>
</html>