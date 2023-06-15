package com.student_management_system.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student_management_system.dao.StudentDao;
import com.student_management_system.dto.Admin;
import com.student_management_system.dto.Student;

@SuppressWarnings("serial")
@WebServlet("/saveUpdateStudent")
public class SaveUpdateStudent extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
		
		if(admin!=null) {
		
		int StudentId = Integer.parseInt(req.getParameter("studentId"));
		String studentName = req.getParameter("studentName");
		String studentEmail = req.getParameter("studentEmail");
		long studentPhoneNumber= Long.parseLong(req.getParameter("studentPhoneNumber"));
		double studentFee = Double.parseDouble(req.getParameter("studentFee"));
		
		Student student1 = new Student();
		student1.setStudentId(StudentId);
		student1.setStudentName(studentName);
		student1.setStudentPhoneNumber(studentPhoneNumber);
		student1.setStudentEmail(studentEmail);
		student1.setStudentFee(studentFee);
		
		new StudentDao().updateStudent(student1);
		
		List<Student> student = new StudentDao().getAllStudent(admin);
		req.setAttribute("student", student);
		
		req.getRequestDispatcher("ViewStudent.jsp").forward(req, resp);		
	
	}else {
			resp.sendRedirect("AdminLogin.jsp");
		}
	}
}



	
	
