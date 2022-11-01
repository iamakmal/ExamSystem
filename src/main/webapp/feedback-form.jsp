<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="com.examsystem.web.model.Student" %>
<%@page import="com.examsystem.web.model.Student" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>Update Student</title>
<link rel="stylesheet" href="${contextPath}/css/bootstrap.css">	
<link rel="stylesheet" href="${contextPath}/styles.css">	
</head>
<body>
<%
HttpSession ses = request.getSession();
Student s1=new Student();
s1=(Student)ses.getAttribute("student");
String sid=s1.getSID();
String sname=s1.getSname();
String email=s1.getEmail(); 
ses.setAttribute("sid",sid);
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
            <a class="nav-link active" href="student-index.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Modules</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Exam</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Results</a>
        </li>
    </ul>
    </div>
    
</div>
</nav>
<h2 align="center">Feedback</h2>
<form method="post" action="stdFeedback">
<div>
<table class="table card-body table-borderless" style="width:50%;  margin-left: auto; margin-right: auto; background:white;">
    <tr>
        <th>SID</th>
        <td><input type="text" name="sid" class="form-control" value="<%out.println(sid);%>" disabled></td>
    </tr>
    <tr>
        <th>Sname</th>
        <td><input type="text" name="sname" class="form-control" value="<%out.println(sname);%>" disabled></td>
    </tr>
        <tr>
        <th>E-mail</th>
        <td><input type="text" name="email" class="form-control" value="<%out.println(email);%>" disabled></td>
    </tr>
    <tr>
        <th>Exam ID</th>
        <td><input type="text" name="examID" class="form-control"></td>
    </tr>
    <tr>
        <th>Subject</th>
        <td>
        <div class="form-check form-check-inline">
        <label class="form-check-label"> Comments </label>
        <input type="radio" name="subject" class="form-check-input" value="comments">        
        </div>
        
        <div class="form-check form-check-inline">
        <label class="form-check-label"> Suggestions </label>
		<input type="radio" name="subject" class="form-check-input" value="suggestions">		
		</div>
		
		<div class="form-check form-check-inline">
		<label class="form-check-label"> Issues </label>
		<input type="radio" name="subject" class="form-check-input" value="issues">		
		</div>
		
		<div class="form-check form-check-inline">
		<label class="form-check-label"> Questions </label>
		<input type="radio" name="subject" class="form-check-input" value="questions">		
		</div>
		
		</td>
    </tr>
    <tr>
        <th>Message</th>
        <td>
        <textarea rows="5" cols="30" name="message" class="form-control"></textarea>
        </td>
    </tr>
    <tr>
    <td colspan="2" style="text-align:center;">
    <input type="submit" value="Submit" class="btn btn-primary">
    </td>
    </tr>
</table>
</div>

</form>


<script type="text/javascript" src="${contextPath}/js/bootstrap.bundle.js" >
</body>
</html>