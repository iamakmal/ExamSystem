package com.examsystem.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.examsystem.web.dao.StudentDao;

@WebServlet("/editStudent")
public class EditStudentController extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int uid=13;
        String sname=request.getParameter("sname");
        String address=request.getParameter("address");
        String dob=request.getParameter("dob");
        StudentDao dao=new StudentDao();
        dao.updateStudent(uid,sname,address,dob);
        
        response.sendRedirect("GetStudent");
    }

}
