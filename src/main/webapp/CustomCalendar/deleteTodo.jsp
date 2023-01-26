<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="dao.TodoDao" %>
<%@ page import="vo.Todo" %>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	TodoDao todoDao = new TodoDao();
	todoDao.deleteTodo(no);
	response.sendRedirect("./diary.jsp");
%>