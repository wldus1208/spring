<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event</title>
<style>
	table {
		border: 1px solid #444444;
	}
	Button {
		width: 150px;
		height: 40px;
		background-color: black;
		color: white;
	}
</style>
<script type="text/javascript">
	$(function() {
		$('#send').on("click", send);
	});
	
	function send() {
		if($("#name").val() == ""){
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return;
		}
		
		if($("#tel").val() == ""){
			alert("연락처를 입력해주세요.");
			$("#tel").focus();
			return;
		}
		
		$('#frm').submit();  
	  }
</script>
</head>
<body>
	<div>
	<h3 style="font-weight: bold;">경품 추첨 이벤트</h3>
	<table>
		<tr><td>추첨을 통해 총 100분께 적립금 1만원을 드립니다.</td></tr>
		<tr><td></td></tr>
		<tr><td>* 응모기간 : 2023년 1월 16일(월) ~ 1월 31일(화)</td></tr>
		<tr><td>* 추첨대상자 : 응모자 중 이벤트 기간 내 구매이력 1회 이상 고객</td></tr>
		<tr><td>* 당첨자 발표 : 2월 7일(화)  [홈페이지 > 공지사항]</td></tr>
		<tr><td>* 이벤트 경품 : 적립금 1만원</td></tr>
		<tr><td>* 경품지급일 : 2월 10일(금)</td></tr>
		<tr><td>* 경품지급문의 : help@naver.com</td></tr>
	</table>
	</div>
	<form name="frm" id="frm" method="POST" action="./tab1.do">
	<div>
		<div>
		<br><br>
			1. 개인정보 수집 및 이용 내역을안내 드립니다.<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;아래 내용 확인하신 후 동의 버튼 누르시고, 응모 부탁드립니다.<br><br>
			 &nbsp;&nbsp;&nbsp;&nbsp;[개인정보 수집 및 이용 목적]<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;이벤트 참여, 당첨자 확인, 고지 사항 안내 및 경품 증정, 기타 이벤트 관련 상담 처리를 포함한 이벤트 운영<br><br>
			 &nbsp;&nbsp;&nbsp;&nbsp;[개인정보 수집 항목]<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;이름, 휴대전화번호, ID<br><br>
			 &nbsp;&nbsp;&nbsp;&nbsp;[개인정보 보유 기간]<br>
			 &nbsp;&nbsp;&nbsp;&nbsp;<strong>이벤트 종료 후 30일 후까지 보관 후 파기</strong><br>
			 <div>
			 	<input type="radio" id="arg" name="arg" value="Y">
			 	<label for="arg">동의합니다.</label>
			 </div>
		</div><br>
		<div>
		<br>
			2. 응모자의 이름을 기재해 주세요.<br>
			<input type="text" id="name" name="name" value="">
		</div>
		<div>
		<br>
			3. 응모자의 연락처를 기재해 주세요.<br>
			<input type="text" id="tel" name="tel" placeholder="010-0000-0000">
		</div>
		<div>
		<br>
			4. 본 이벤트 응모 후, 기간 내에 '1회 이상의 구매 이력'이 있어야 대상자가 됩니다.<br>
			&nbsp;&nbsp;&nbsp;&nbsp;해당 내용 이해 하셨습니까?<br>
			<input type="radio" id="und" name="und" value="Y">
			<label for="und">네</label>
		</div>
		<div>
		<br>
			<Button type="button" id="send">제출</Button>
		</div>
	</div>
	</form>
</body>
</html>