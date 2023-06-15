package com.student_management_system.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.student_management_system.dao.StudentDao;
import com.student_management_system.dto.Admin;
import com.student_management_system.dto.Student;

import antlr.collections.List;

@WebServlet("/deleteStudent")
public class DeleteStudent extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Admin admin = (Admin) session.getAttribute("admin");
	
		if(admin!=null) {
		String StudentId = (String) req.getParameter("studentId");
		int id = Integer.parseInt(StudentId);	
		StudentDao dao = new StudentDao();
		dao.deleteStudent(id);
		
		List<Student> student = dao.getAllStudent(admin);
		req.setAttribute("student", student);
		req.getRequestDispatcher("ViewStudent.jsp").forward(req, resp);
		
		}else {
				resp.sendRedirect("AdminLogin.jsp");
		}
	}
}
