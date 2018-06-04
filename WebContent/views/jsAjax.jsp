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
		<title>자바스크립트 Ajax</title>
	</head>

	<body>
		<br>
		<div class="ui container">
			<div class="ui center aligned segment">
				<div class="ui labeled input">
					<div class="ui label">
						입력
					</div>
					<input type="text" id="data1" />
				</div>
				<button class="ui secondary button" onclick="test1()">클릭</button>
			</div>
		</div>
	</body>

	<script type="text/javascript">
		function test1() {
			var data = document.getElementById("data1").value;
			// Ajax 처리 순서 4단계
			// 1. XMLHttpRequest 객체 생성
			// 2. 요청 정보 설정
			// 3. 데이터 처리에 따른 작동할 메소드 설정(콜백 함수)
			// 4. 서버에 요청 처리

			// 1. XMLHttpRequest 객체 생성
			var xhttp = new XMLHttpRequest(); // IE가 7 ~ 9 버전 또는 크롬, 사파리 등
			// IE 버전이 6버전 이하 일 경우
			// var xhttp = new ActiveXObject(Microsoft.XMLHTTP);
			// IE 버전이 9버전 이후 일 경우
			// var xhttp = new ActiveXObject("Msxml2.XMLHTTP");

			// 2 요청 정보 설정(method 방식, url 정보, 동기 / 비동기 설정)
			// 마지막 false / true 값은 동기 / 비동기를 의미
			// Ajax 처리이기 때문에 true를 사용
			xhttp.open("GET", "/jsTest1=" + data, true)

			//POST 방식(쿼리 스트링에 값을 넣지 않음)
			// xhttp.open("POST", "/jsTest1", true)

			// 3. 데이터 처리에 따른 작동할 메소드 설정
			// readyState 값
			// 0: 요청이 시작되지 않은 상태
			// 1: 서버와 접속된 상태
			// 2: send 메소드가 호출되고 헤더는 도착하지 않은 상태
			// 3: 일부 데이터를 받은 상태
			// 4: 요청을 완료하고 응답하는 상태

			// status 속성 값
			// 200(OK) : 요청 성공
			// 404(Not Found) :페이지 없음
			// 500(Internal Server Error) : 서버 오류 발생
			xhttp.onreadystatechange = function () {
				if (this.readyState == 4) {
					if (this.status == 200) {
						console.log("서버에 데이터 전송 성공");
					} else if (this.status == 404) {
						console.log("서버에 데이터 전송 실패");
					}
				}
			}

			// 4. 서버에게 요청 처리
			xhttp.send(); // GET 방식

			// POST 방식 (POST 방식은 requestHeader를 변경해야함)
			// xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			// xhttp.send("data" + data);

		}
	</script>

	</html>