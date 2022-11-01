package com.examsystem.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.examsystem.web.dao.FeedbackDao;

@WebServlet("/stdFeedback")
public class stdFeedbackController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession ses = request.getSession();
        String sid=(String) ses.getAttribute("sid");
	    String examID=request.getParameter("examID");
        String subject=request.getParameter("subject");
        String message=request.getParameter("message");
        FeedbackDao dao=new FeedbackDao();
        dao.insertFeedback(sid,examID,subject,message);
        
        response.sendRedirect("std-feedback.jsp");
	}

}
