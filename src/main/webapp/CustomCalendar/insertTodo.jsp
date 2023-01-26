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
		request.setCharacterEncoding("utf-8");
		String y = request.getParameter("y");
		String m = request.getParameter("m");
		String d = request.getParameter("d");
		String day = y+"-"+(Integer.parseInt(m)+1)+"-"+d;
		System.out.println(day+"<--day");
	%>
	<h1>일정 추가</h1>
	<form method="post" action="./insertTodoAction.jsp">
		<div>
			날짜	<input type="text" value="<%=day %>" readonly="readonly" name="day">
		</div>
		<div>
			memo <input type="text" name="memo">
		</div>
		<button type="submit">입력</button>
	</form>
</body>
</html>