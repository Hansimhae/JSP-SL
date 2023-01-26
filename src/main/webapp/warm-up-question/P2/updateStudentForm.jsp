<%@page import="dao.*"%>
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
	int num = Integer.parseInt(request.getParameter("num"));
	StudentDao studentDao = new StudentDao();
	Student student = studentDao.selectStudentOne(num);
%>

	<h1>학생 수정</h1>
	<form action="./updateStudentAction.jsp">
		<div>
			학생 번호 :
			<input type="text" name="num" value ="<%=student.getNum() %>" readonly="readonly">
		</div>
		
		<div>
			학생 이름 :
			<input type="text" name="name" value="<%=student.getName()%>">
		</div>
		<div>
			<button type="submit">학생 수정</button>
		</div>
	</form>
</body>
</html>