<%@page import="vo.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	vo.Student s = new vo.Student();
	s.no = 1;
	s.age = 24;
	s.name = "YH-LEE21";
	
	Student s2 = null;
	s2 = new Student();
	s2.no = 2;
	s2.age = 23;
	s2.name = "My Friend";
%>
	<div><%=s.no %></div>
	<div><%=s.age %></div>
	<div><%=s.name %></div>
	<br>
	<div><%=s2.no %></div>
	<div><%=s2.age %></div>
	<div><%=s2.name %></div>
	
</body>
</html>