<%@page import="dao.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 요청분석
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num")); 
	
	// 2. 비지니스 로직(dao메서드 호출)
	StudentDao studentDao = new StudentDao();
	studentDao.deleteStudent(num);
	
	//페이지를 Student.jsp
	response.sendRedirect("./Student.jsp");
%>