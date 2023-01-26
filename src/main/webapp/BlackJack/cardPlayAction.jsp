<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.Card" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	//players 1~3
	//int players = Integer.parseInt(request.getParameter("players"));

	//52개의 카드를 생성
	Card[] card = new Card[52]; //0~51
	for(int i =0;i<card.length;i++){//card.length -> 52
		card[i] = new Card();
		if(i/13 == 0){
			card[i].kind = "spade";
		}else if(i/13 == 1){
			card[i].kind = "diamond";
		}else if(i/13 == 2){
			card[i].kind = "heart";
		}else{
			card[i].kind = "clover";
		}
		card[i].num = (i%13)+1;
	}
	
	/* for(Card c : card){
		//debug check clear
		//System.out.println(c.kind +", "+ c.num);
	} */
	for(int i=0;i<5000;i++){
		int rand = (int)(Math.random()*52);
		Card temp = card[0];
		card[0] = card[rand];
		card[rand] = temp;
	}
	
	/*int count=0;
	 for(Card c : card){
		//debug check
		count++;
		System.out.print(c.kind +", "+ c.num+" / ");
	}
	System.out.println();
	System.out.println(count); */
	
	//dealer,user
	int[] dealerCard = new int[3]; //0,1,2
	int[] userCard = new int[3]; //0,1,2
	
	//dealerTotal, userTotal
	int dealerTotal = 0;
	int userTotal = 0;
	
	for(int i = 0;i<6;i++){
		if(i<3){
			if(card[i].num > 10){
				dealerCard[i] = 10;
				dealerTotal += 10;
			}else{
				dealerCard[i] = card[i].num;
				dealerTotal += card[i].num;
			}
		}else{
			if(card[i].num > 10){
				userCard[i-3] = 10;
				userTotal += 10;
			}else{
				userCard[i-3] = card[i].num;
				userTotal += card[i].num;
			}
		}
	}
%>
	<div> 딜러의 카드 번호 : <%=dealerCard[0] %>, <%=dealerCard[1] %>, <%=dealerCard[2] %>     합 : <%=dealerTotal %></div>
	<div> 유저의 카드 번호 : <%=userCard[0] %>, <%=userCard[1] %>, <%=userCard[2] %>     합 : <%=userTotal %></div>
<%
	if((dealerTotal > 21 && userTotal > 21) || (dealerTotal == userTotal)){
		//draw
%>

		<div>비겼다!!</div>
<%	
	}else if(userTotal < 22 && userTotal > dealerTotal || userTotal<22 && dealerTotal>21){
		//user win!!
%>	
		<div>유저승!!</div>
<%
	}else{
		//user lose...
%>
		<div>딜러 승!!</div>
<%
	}
%>
</body>
</html>