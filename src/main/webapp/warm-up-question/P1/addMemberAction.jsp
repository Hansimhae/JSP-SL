<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="vo.P_Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String memberId = request.getParameter("memberId");
	String memberPw = request.getParameter("memberPw");		
	String memberGender = request.getParameter("memberGender");
	String memberBirth = request.getParameter("memberBirth");
	String memberEmail = request.getParameter("memberEmail1")
							+ "@" + request.getParameter("memberEmail2");
	String[] memberHobby = request.getParameterValues("memberHobby");
	
	//debug
	System.out.println(memberId +" <- memberId");
	System.out.println(memberPw+" <- memberPw");
	System.out.println(memberGender+" <- memberGender");
	System.out.println(memberBirth+" <- memberBirth");
	System.out.println(memberEmail+" <- memberEmail");
	//System.out.println(memberHobby+" <- memberHobby");
	
	if(memberHobby == null){
		System.out.println("선택한 취미가 없습니다. <- memberHobby");
	}else{
		for(String s : memberHobby){
			System.out.print(s+" ");
		}
		System.out.println("<- memberHobby");
	}
	
	P_Member pm = new P_Member();
	pm.memberId = memberId;
	pm.memberPw = memberPw;
	pm.memberGender = memberGender;
	pm.memberBirth = memberBirth;
	pm.memberEmail = memberEmail;
	pm.memberHobby = memberHobby;
%>
	<table border="1">
		<tr>
			<td>memberId</td>
			<td><%=pm.memberId %></td>
		</tr>
		<tr>
			<td>memberPw</td>
			<td><%=pm.memberPw.substring(0,1)%>****</td>
		</tr>
		<tr>
			<td>memberGender</td>
			<td>
				<%
					if(pm.memberGender == null){
				%>
						성별을 선택하지 않아 알수 없습니다.		
				<%
					}else if(pm.memberGender.equals("Male")){
				%>
						<img src="./img/man.png" width="150" height="150">
				<%
					}else{
				%>
						<img src="./img/woman.png" width="150" height="150">
				<%
					}
				%>
			</td>
		</tr>
		<tr>
			<td>memberBirth</td>
			<td>
				<%
					Calendar today = Calendar.getInstance();
					int todayYear = today.get(Calendar.YEAR);
					int birth = Integer.parseInt(memberBirth.substring(0,4));
					int age = todayYear-birth;
				%>
				Birth : <%=pm.memberBirth%>,  Age : <%=age %>
			</td>
		</tr>
		<tr>
			<td>memberEmail</td>
			<td><%=pm.memberEmail %></td>
		</tr>
		<tr>
			<td>memberHobby</td>
			<td>
		<%
			if(pm.memberHobby == null){
		%>
				취미가 없습니다.
		<% 		
			}else{
				for(String s : pm.memberHobby){
		%>
					<%=s %>
		<%
				}
			}
		%>
			</td>
		</tr>
	</table>
</body>
</html>