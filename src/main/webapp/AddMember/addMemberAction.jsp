<%@page import="vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.util.Calendar" %>
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
	String memberName = request.getParameter("memberName");
	String memberSn = request.getParameter("memberSn");
	String temp = request.getParameter("memberGrade");
	
	//debug
	System.out.println(memberId);
	System.out.println(memberPw);
	System.out.println(memberName);
	System.out.println(memberSn);
	System.out.println(temp);
	
	//매개변수값을 가공단계 : memberGrade -> int값으로
	int memberGrade = Integer.parseInt(temp);
	
	//입력받은 여러개의 값을 논리적으로 하나의 변수에 저장 -> 사용자 정의 타입이 필요(클래스)
	Member member = new Member();
	member.memberId = memberId;
	member.memberPw = memberPw;
	member.memberName = memberName;
	member.memberSn = memberSn;
	member.memberGrade = memberGrade;
%>
	<div>주민번호 : <%=member.memberSn%></div>

<%
	String yearStr = member.memberSn.substring(0,2);
	System.out.println(yearStr);
	
	Calendar today = Calendar.getInstance();
	int todayYear = today.get(Calendar.YEAR);
	
	
	int myBirthYear = 0;
	String[]memberSn2 = member.memberSn.split("-");
	
	//성별체크
	String gender = "남";
	if(Integer.parseInt(memberSn2[1].substring(0,1)) % 2 ==0){
		gender = "여";
	}
	
	if(memberSn2[1].substring(0,1).equals("1")||memberSn2[1].substring(0,1).equals("3")||memberSn2[1].substring(0,1).equals("5")||memberSn2[1].substring(0,1).equals("6")){
		myBirthYear = Integer.parseInt("19"+yearStr);
	}else if(memberSn2[1].substring(0,1).equals("2")||memberSn2[1].substring(0,1).equals("4")||memberSn2[1].substring(0,1).equals("6")||memberSn2[1].substring(0,1).equals("8")){
		myBirthYear = Integer.parseInt("20"+yearStr);
	}else if(memberSn2[1].substring(0,1).equals("9")||memberSn2[1].substring(0,1).equals("0")){
		myBirthYear = Integer.parseInt("18"+yearStr);
	}
%>
<div>성별 : <%=gender%></div>
<div>나이 : <%=todayYear-myBirthYear %></div>
<div>태어난해 : <%=myBirthYear%></div>
</body>
</html>