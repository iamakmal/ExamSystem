<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="com.examsystem.web.model.Student" %>
<%@page import="com.examsystem.web.model.Feedback" %>
<%@page import="com.examsystem.web.dao.FeedbackDao" %>

<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>Student Feedback</title>
<link rel="stylesheet" href="${contextPath}/css/bootstrap.css">	
<link rel="stylesheet" href="${contextPath}/styles.css">	
</head>
<body>
<%
HttpSession ses = request.getSession();
Student s1=new Student();
s1=(Student)ses.getAttribute("student");
int uid=s1.getUser_id();
String sid=s1.getSID();
String sname=s1.getSname();
String email=s1.getEmail(); 
%>  

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #A55086;">
<div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="images/Logo.png" alt="Logo" width="160"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="student-index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="std-modules.jsp">Modules</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Exam</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="std-results.jsp">Results</a>
        </li>
    </ul>
    </div>    
</div>
</nav>
<br>
<div align="right" class="container-fluid"><button class="btn btn-outline-primary"><a href="feedback-form.jsp" style="text-decoration:none;">Send Feedback</a></button></div>
<h2 align="center">Feedback</h2>

<%        
FeedbackDao dao=new FeedbackDao();
List<Feedback> fd = new ArrayList<>();
fd=dao.getFeedback(sid); 
for(Feedback item:fd){
%>
<table class="table card-body table-borderless" style="width:50%;  margin-left: auto; margin-right: auto; background:white; border-style:groove" >
<tr class="table-info">
<th>MessageID</th>
<th>Date</th>
<th>Exam ID</th>
<th>Subject</th>
<th>Message</th>
<th></th>
</tr>
<tr>
<td>
<% 
ses.setAttribute("mid", item.getMessageID());
out.println(item.getMessageID());
%> 
</td>
<td><% out.println(item.getDate()); %> </td>
<td><% out.println(item.getExamID()); %></td>
<td><% out.println(item.getSubject()); %></td>
<td><% out.println(item.getContent()); %></td>
<td>
<form action=deleteFB>
<input type="submit" value="Delete" class="btn btn-danger">
</form></td>
</tr>
</table> 
<% 
}
%>






<script type="text/javascript" src="${contextPath}/js/bootstrap.bundle.js" >
</body>
</html>


