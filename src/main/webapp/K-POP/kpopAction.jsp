<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paperAction</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	// 결과 점수
	int totalScore = 0;
	// 한문제당 점수
	int scorePerQuestion = 10;
	
	String a1 = "RM"; 
	String a2 = "리사";
	String a3 = "이특";
	String a4 = "지효";
	String a5 = "청하";
	String a6 = "1";
	String a7 = "2";
	String a8 = "3";
	String a9 = "4";
	String a10 = "2";
	
	String q1 = request.getParameter("q1");
	String q2 = request.getParameter("q2");
	String q3 = request.getParameter("q3");
	String q4 = request.getParameter("q4");
	String q5 = request.getParameter("q5");
	String q6 = request.getParameter("q6");
	String q7 = request.getParameter("q7");
	String q8 = request.getParameter("q8");
	String q9 = request.getParameter("q9");
	String q10 = request.getParameter("q10");
	
	String output1 = "X";
	String output2 = "X";
	String output3 = "X";
	String output4 = "X";
	String output5 = "X";
	String output6 = "X";
	String output7 = "X";
	String output8 = "X";
	String output9 = "X";
	String output10 = "X";
	
	if(a1.equals(q1)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output1 = "O";
	}
	if(a2.equals(q2)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output2 = "O";
	}
	if(a3.equals(q3)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output3 = "O";
	}
	if(a4.equals(q4)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output4 = "O";
	}
	if(a5.equals(q5)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output5 = "O";
	}
	if(a6.equals(q6)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output6 = "O";
	}
	if(a7.equals(q7)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output7 = "O";
	}
	if(a8.equals(q8)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output8 = "O";
	}
	if(a9.equals(q9)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output9 = "O";
	}
	if(a10.equals(q10)) { // true일때만 {}안의 코드가 진행
		totalScore = totalScore+10; // totalScore += 10;
		output10 = "O";
	}
%>
	<div>이름 : <%=name %></div>
	<div>점수 : <%=totalScore%></div>
	<table border="1">
		<tr>
			<td>1 번</td>
			<td><%=output1%></td>
		</tr>
		<tr>
			<td>2 번</td>
			<td><%=output2%></td>
		</tr>
		<tr>
			<td>3 번</td>
			<td><%=output3%></td>
		</tr>
		<tr>
			<td>4 번</td>
			<td><%=output4%></td>
		</tr>
		<tr>
			<td>5 번</td>
			<td><%=output5%></td>
		</tr>
		<tr>
			<td>6 번</td>
			<td><%=output6%></td>
		</tr>
		<tr>
			<td>7 번</td>
			<td><%=output7%></td>
		</tr>
		<tr>
			<td>8 번</td>
			<td><%=output8%></td>
		</tr>
		<tr>
			<td>9 번</td>
			<td><%=output9%></td>
		</tr>
		<tr>
			<td>10 번</td>
			<td><%=output10%></td>
		</tr>
	</table>
</body>
</html>
