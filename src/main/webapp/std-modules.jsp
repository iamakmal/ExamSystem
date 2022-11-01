<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="com.examsystem.web.model.Student" %>
<%@page import="com.examsystem.web.model.Module" %>
<%@page import="com.examsystem.web.dao.ModuleDao" %>

<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<title>Student Modules</title>
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
            <a class="nav-link active" href="std-modules.jsp">Modules</a>
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

<h2 align="center">Modules</h2>
<%        
ModuleDao dao=new ModuleDao();
List<Module> md = new ArrayList<>();
md=dao.getModule(sid); 
for(Module item:md){
%>
<table class="table card-body table-borderless" style="width:50%;  margin-left: auto; margin-right: auto; background:white; border-style:groove;" >
<tr class="table-warning">
<th>Module Code</th>
<th>Module Name</th>
</tr>
<tr>
<td><%out.println(item.getMcode());%></td>
<td><%out.println(item.getMname());%></td>
</tr>
</table> 
<% 
}
%>
<script type="text/javascript" src="${contextPath}/js/bootstrap.bundle.js" >
</body>
</html>


