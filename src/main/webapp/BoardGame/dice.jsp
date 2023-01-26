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
	int currentPos = 0;
	int diceNum = 7;
	int diceTwo = 7;
	if(request.getParameter("currentPos")==null){
		currentPos = 1;
		System.out.println(currentPos);
	}else{
		int prePos = Integer.parseInt(request.getParameter("currentPos"));
		diceNum = (int)(Math.random()*6)+1;
		diceTwo = (int)(Math.random()*6)+1;
		System.out.println(prePos);
		currentPos = prePos + diceNum + diceTwo;
	}
	if(currentPos > 50){
		currentPos -= 50; 
	}
%>
	<form method="post" action="dice.jsp">
	<div>
		현재 위치 : <input type = "text" name="currentPos" value="<%=currentPos%>" readonly="readonly">
	</div>
	<div>주사위의 합 : <%=diceNum+diceTwo %></div>
	<div>
		<img alt="주사위" src= "<%=diceNum %>.jpg" width="200px" height="200px">
		<img alt="주사위" src= "<%=diceTwo %>.jpg" width="200px" height="200px">
	</div>
	<button type="submit">주사위 play</button>
	</form>
</body>
</html>