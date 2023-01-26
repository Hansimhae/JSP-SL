<%@ page language = "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "dao.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// currentPage가 넘어오지 않으면 1, 넘어오면 넘어온 값으로 설정
	int currentPage = 1;
	if(request.getParameter("currentPage") != null) {
		currentPage = Integer.parseInt(request.getParameter("currentPage"));
	}
	StudentDao studentDao = new StudentDao();
	ArrayList<Student> list = studentDao.getStudentList(currentPage);
	int lastPage = 0;
	int totalCount = studentDao.getTotalCount();
	lastPage = totalCount / 10;
	if(totalCount % 10 != 0) {
		lastPage = lastPage + 1;
	}
%>
	<h1>학생 목록</h1>
	
	<div>
		<a href="./diary.jsp">다이어리</a>
	</div>
	<div>
		<a href="./insertStudentForm.jsp">학생 추가</a>
	</div>
	<div>
		<%=currentPage%> / <%=lastPage%> 페이지
	</div>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
		</tr>
		<%
			for(Student s : list) {
		%>
				<tr>
					<td><%=s.getNum()%></td>
					<td><%=s.getName()%></td>
					<td><a href="./updateStudentForm.jsp?num=<%=s.getNum() %>">이름 수정</a></td>
					<td><a href="./deleteStudentAction.jsp?num=<%=s.getNum() %>">삭제</a></td>
				</tr>
		<%		
			}
		%>
	</table>


<%
	if(currentPage > 1) {
%>
		<a href="./Student.jsp?currentPage=<%=currentPage-1%>">[이전]</a>
<%		
	}
%>

<%
	if(currentPage < lastPage) {
%>
		<a href="./Student.jsp?currentPage=<%=currentPage+1%>">[다음]</a>
<%		
	}
%>
</body>
</html>
