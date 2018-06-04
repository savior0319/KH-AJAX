<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<link rel="stylesheet" type="text/css" href="/semantic.min.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
		    crossorigin="anonymous"></script>
		<script src="/semantic.min.js"></script>
		<title>JQuery Ajax</title>
	</head>

	<style>
		#myName,
		#value,
		#num1,
		#num2 {
			margin-right: 5px;
		}
	</style>

	<body>
		<br>
		<div class="ui container">
			<div class="ui center aligned segment">
				<h1>JQuery를 이용한 Ajax</h1>
				<div class="ui labeled input">
					<div class="ui label">이름</div>
					<input type="text" id="myName" placeholder="입력" />
					<button onclick="test1();" class="ui blue button">클릭</button>
				</div>
			</div>

			<div class="ui center aligned segment">
				<h1>버튼 클릭 시 서버에서 보낸 값을 브라우저에서 출력</h1>
				<div class="ui labeled input">
					<div class="ui label">값 입력</div>
					<input type="text" id="value" placeholder="입력" />
					<button onclick="test2();" class="ui blue button">결과확인</button>
				</div>
				<br>
				<br>
				<div class="ui labeled input">
					<div class="ui label">출력</div>
					<input type="text" id="out" readonly="readonly" />
				</div>
			</div>

			<div class="ui center aligned segment">
				<h1>서버로 기본 값 전송하고, 결과를 받아 출력</h1>
				<div class="ui labeled input">
					<div class="ui label">첫번째 수</div>
					<input type="text" id="num1" placeholder="입력" />
					<div class="ui label">두번째 수</div>
					<input type="text" id="num2" placeholder="입력" />
					<button onclick="test3();" class="ui blue button">결과확인</button>
				</div>
				<br>
				<br>
				<div class="ui labeled input">
					<div class="ui label">출력</div>
					<input type="text" id="out1" readonly="readonly" />
				</div>
			</div>

		</div>
	</body>

	<script type="text/javascript">
		function test1() {
			// 값 가져 오기
			var $myName = $('#myName').val();

			// JQuery Ajax 코드
			$.ajax({
				url: "/test1",
				data: {
					myName: $myName
				},
				type: "GET",
				success: function () {
					console.log('서버로 값 전송 성공');
				},
				error: function () {
					console.log('서버로 값 전송 실패');
				},
				complete: function () {
					console.log('무적권 호출');
				}
			});
		}

		function test2() {
			var $value = $('#value').val();

			$.ajax({
				url: "/test2",
				data: {
					value: $value
				},
				type: "GET",
				success: function (result) {
					$('#out').val(result);
				},
				error: function () {
					$('#out').val("서버에서 전송 실패");
				}
			});
		}

		function test3() {
			var $num1 = $('#num1').val();
			var $num2 = $('#num2').val();

			$.ajax({
				url: "/test3",
				data: {
					num1: $num1,
					num2: $num2
				},
				type: "GET",
				success: function (result) {
					$('#out1').val(result);
				},
				error: function () {
					$('#out').val("서버에서 전송 실패");
				}
			});
		}
	</script>

	</html>