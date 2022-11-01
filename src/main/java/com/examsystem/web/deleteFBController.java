package com.examsystem.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.examsystem.web.dao.FeedbackDao;

@WebServlet("/deleteFB")
public class deleteFBController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession ses = request.getSession();
	    int mid=(int) ses.getAttribute("mid");
        FeedbackDao dao=new FeedbackDao();
        dao.deleteFeedback(mid);
        
        response.sendRedirect("std-feedback.jsp");
	}

}
