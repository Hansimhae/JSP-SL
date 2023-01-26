<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paperForm</title>
</head>
<body>
	<h1>K Pop 온라인 시험</h1>
	<form action="kpopAction.jsp">
		
		<div>
			이름 : <input type="text" name = "name"> 
		</div>
		<!-- 단답형 5문제(보기에서 고르기) -->
		<h2>1~5번 : 보기에서 고르시오.</h2>
		<!-- 보기 -->
		<div>
			<h3>보기</h3>
			<div>
				RM, 진, 슈가, 제이홉, 지민, 뷔, 정국, 지수, 제니, 로제, 리사,
				이특, 희철, 예성, 신동, 은혁, 동해, 시원, 려욱, 규현, 성민,
				나연, 정연, 모모, 사나, 지효, 미나, 다현, 채영, 쯔위, 청하
			</div>
		</div>
		
		<div>
			<!-- 문제1 -->
			<div>
				1. BTS 리더를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="q1">
			</div>
		</div>
		
		<div>
			<!-- 문제2 -->
			<div>
				2. 블랙핑크의 리더를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="q2">
			</div>
		</div>
		
		<div>
			<!-- 문제3 -->
			<div>
				3. 슈퍼주니어의 리더를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="q3">
			</div>
		</div>
		
		<div>
			<!-- 문제4 -->
			<div>
				4. 트와이스의 리더를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="q4">
			</div>
		</div>
		
		<div>
			<!-- 문제5 -->
			<div>
				5. 솔로 여자가수를 보기에서 고르시오.
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="text" name="q5">
			</div>
		</div>
		
		<!-- 객관식 5문제 -->
		<div>
			<!-- 문제6 -->
			<div>
				6. 한국 가수 최초 빌보드 싱글 차트 1위 가수는?
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="radio" name="q6" value="1">1. 방탄소년단<br>
				<input type="radio" name="q6" value="2">2. 젝스키스<br>
				<input type="radio" name="q6" value="3">3. 토이<br>
				<input type="radio" name="q6" value="4">4. 블랙핑크
			</div>
		</div>
		
		<div>
			<!-- 문제7 -->
			<div>
				7. 다음중 멤버수가 가장 많은 그룹은?
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="radio" name="q7" value="1">1. 여자친구<br>
				<input type="radio" name="q7" value="2">2. 슈퍼주니어<br>
				<input type="radio" name="q7" value="3">3. 아이즈원<br>
				<input type="radio" name="q7" value="4">4. 트와이스
			</div>
		</div>
		
		<div>
			<!-- 문제8 -->
			<div>
				8. 다음중 보이 그룹은?
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="radio" name="q8" value="1">1. 트와이스<br>
				<input type="radio" name="q8" value="2">2. 블래핑크<br>
				<input type="radio" name="q8" value="3">3. 동방신기<br>
				<input type="radio" name="q8" value="4">4. 코요테
			</div>
		</div>
		
		<div>
			<!-- 문제8 -->
			<div>
				9. 다음중 밴드 그룹은?
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="radio" name="q9" value="1">1. 제시<br>
				<input type="radio" name="q9" value="2">2. SF9<br>
				<input type="radio" name="q9" value="3">3. 몬스터 엑스<br>
				<input type="radio" name="q9" value="4">4. FT아일랜드
			</div>
		</div>
		
		<div>
			<!-- 문제8 -->
			<div>
				10. 다음중 남자 솔로 가수가 아닌것은?
			</div>
			<!-- 답안입력 -->
			<div>
				<input type="radio" name="q10" value="1">1. 비<br>
				<input type="radio" name="q10" value="2">2. 솔라<br>
				<input type="radio" name="q10" value="3">3. JYP<br>
				<input type="radio" name="q10" value="4">4. 강다니엘
			</div>
		</div>
        <button type="submit">답안전송</button>
	</form>
</body>
</html>
