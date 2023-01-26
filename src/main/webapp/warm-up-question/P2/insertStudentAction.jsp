<%@page import="dao.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 요청분석
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name"); 
	Student student = new Student();
	student.setName(name);
	
	// 2. 비지니스 로직(dao메서드 호출)
	StudentDao studentDao = new StudentDao();
	studentDao.insertStudent(student);
	
	//페이지를 Student.jsp
	response.sendRedirect("./Student.jsp");
%>