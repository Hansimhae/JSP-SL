<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "vo.Todo" %>
<%@ page import = "dao.TodoDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	TodoDao todoDao = new TodoDao();
	Todo todo = todoDao.selectTodoOne(no);
%>
<h1>일정 상세</h1>
<table border="1">
	<tr>
		<td>no</td>
		<td><%=todo.getNo() %></td>
	</tr>
	<tr>
		<td>day</td>
		<td><%=todo.getDay()%></td>
	</tr>
	<tr>
		<td>memo</td>
		<td><%=todo.getMemo()%></td>
	</tr>
</table>
<a href="./deleteTodo.jsp?no=<%=todo.getNo()%>">삭제</a>
</body>
</html>