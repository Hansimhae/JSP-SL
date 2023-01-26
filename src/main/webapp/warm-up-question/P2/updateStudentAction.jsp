<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dao.*" %>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	Student student = new Student();
	student.setNum(num);
	student.setName(name);
	
	StudentDao studentDao = new StudentDao();
	studentDao.updateStudent(student);
	
	//페이지를 Student.jsp
	response.sendRedirect("./Student.jsp");
%>