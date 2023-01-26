<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method = "post" action="addMemberAction.jsp">
		<div>
			아이디 :
			<input type="text" name = "memberId" value="test">
		</div>
		<div>
			비밀번호 :
			<input type="password" name="memberPw" value="1234">
		</div>
		<div>
			이름 :
			<input type="text" name="memberName" value="허혜민">
		</div>
		<div>
			주민번호 :
			<input type="text" name="memberSn" value="010426-0000000">
		</div>
		<div>
			학년 : 
			<input type="radio" name = "memberGrade" value="1">1
			<input type="radio" name = "memberGrade" value="2">2
			<input type="radio" name = "memberGrade" value="3" checked="checked">3
		</div>
		<div>
			<button type="submit">회원가입</button>
		</div>
	</form>
</body>
</html>