<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="com.examsystem.web.model.Student" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>

<title>Student Dashboard</title>
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
String address=s1.getAddress();
String dob=s1.getDOB();
String nic=s1.getNIC();
String cid=s1.getCID();
String email=s1.getEmail();  
String profile_photo=s1.getProfile_photo();
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
<div class="container-fluid" align="right"><button class="btn btn-outline-primary"><a href="std-feedback.jsp" style="text-decoration:none;">Feedback</a></button></div>
 
<h2 align="center">Welcome <%out.println(sname);%></h2>
<br>
<table class="table card-body table-borderless" style="width:80%;  margin-left: auto; margin-right: auto; background:white; border-style:hidden;" >
    <tr>
    <td colspan="2" style="text-align:right;">
    <button class="btn btn-outline-primary"><a href="edit-student.jsp" style="text-decoration:none;">Edit</a></button>
    </td>
    </tr>
    <tr>
        <th>SID</th>
        <td><%out.println(sid);%></td>
    </tr>
    <tr>
        <th>Sname</th>
        <td><%out.println(sname);%></td>
    </tr>
    <tr>
        <th>Address</th>
        <td><%out.println(address);%></td>
    </tr>
    <tr>
        <th>DOB</th>
        <td><%out.println(dob);%></td>
    </tr>
    <tr>
        <th>NIC</th>
        <td><%out.println(nic);%></td>
    </tr>
    <tr>
        <th>Enrolled Course</th>
        <td><%out.println(cid);%></td>
    </tr>
    <tr>
        <th>E-mail</th>
        <td><%out.println(email);%></td>
    </tr>
</table>




<script type="text/javascript" src="${contextPath}/js/bootstrap.bundle.js" >
</body>
</html>