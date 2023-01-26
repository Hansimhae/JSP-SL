<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="addMemberAction.jsp">
		<fieldset>
			<legend>회원가입</legend>
			<table border="1">
				<tr>
					<td>memberId</td>
					<td><input type="text" name="memberId"></td>
				</tr>
				<tr>
					<td>memberPw</td>
					<td><input type="password" name="memberPw"></td>
				</tr>
				<tr>
					<td>memberGender</td>
					<td>
						<input type="radio" name = "memberGender" value="Male">남
						<input type="radio" name = "memberGender" value="Female">여
					</td>
				</tr>
				<tr>
					<td>memberBirth</td>
					<td><input type="date" name="memberBirth"></td>
				</tr>
				<tr>
					<td>memberEmail</td>
					<td>
						<input type="text" name = "memberEmail1">
						@
						<select name="memberEmail2">
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
							<option value="hangame.com">hangame.com</option>
							<option value="i.softbank.jp">i.softbank.jp</option>
							<option value="docomo.ne.jp">docomo.ne.jp</option>
							<option value="ezweb.ne.jp">ezweb.ne.jp</option>
							<option value="gmail.com">gmail.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>memberHobby</td>
					<td>
						<input type="checkbox" name="memberHobby" value="sport">운동
						<input type="checkbox" name="memberHobby" value="game">게임
						<input type="checkbox" name="memberHobby" value="sing">노래
					</td>
				</tr>
			</table>
			<button type="submit"> 회원 가입 </button>
		</fieldset>
	</form>
</body>
</html>