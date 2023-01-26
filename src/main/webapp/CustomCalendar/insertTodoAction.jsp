<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.Todo" %>
<%@ page import="dao.TodoDao" %>
<%
	request.setCharacterEncoding("utf-8");
	String day = request.getParameter("day");
	String memo = request.getParameter("memo");
	Todo todo = new Todo();
	todo.setDay(day);
	todo.setMemo(memo);
	
	TodoDao dao = new TodoDao();
	dao.insertTodo(todo);
	
	response.sendRedirect("diary.jsp");
%>