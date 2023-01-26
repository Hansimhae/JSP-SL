<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img alt="카드 뒷면" src="./card/cardback.png">
	<form method="post" action="cardPlayAction.jsp">
		<input type = "text" name="players" placeholder="1~3명(딜러 포함x)">
		<button type="submit">play</button>
	</form>
</body>
</html>