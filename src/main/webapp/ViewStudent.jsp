<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% List<Student> student = (List) request.getAttribute("student"); %>
	
	<h1>Student List</h1>
	<table border="" cellPadding="10px" cellSPacing="o">
		<tr>
			<th>Student_Id</th>
			<th>Student_Name</th>
			<th>Student_Email</th>
			<th>Student_PhNo.</th>
			<th>Student_Fee</th>
			<th>Update_Student</th>
			<th>Delete_Student</th>
		</tr>
	<% for( Student student : student){ %>
	<tr>
		<td><%=student.getStudentId()%></td>
		<td><%=student.getStudentName()%></td>
		<td><%=student.getStudentEmail()%></td>
		<td><%=student.getStudentPhoneNumber()%></td>
		<td><%=student.getStudentFee()%></td>
		<td><a href="updateStudent?studentId=<%=student.getStudentId() %>">Update</a></td>
		<td><a href="deleteStudent?studentId=<%=student.getStudentId() %>">Delete</a></td>
		</tr>
		<% } %>
		
	</table>
		
		
</body>
</html>