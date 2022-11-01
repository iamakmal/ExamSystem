package com.examsystem.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.examsystem.web.dao.StudentDao;
import com.examsystem.web.model.Student;

@WebServlet("/GetStudent")
public class GetStudentController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int uid=11;
        StudentDao dao=new StudentDao();
        Student s1=dao.getStudent(uid);
        
        HttpSession ses = request.getSession();
        ses.setAttribute("student", s1);
        response.sendRedirect("student-index.jsp");
	}

}
