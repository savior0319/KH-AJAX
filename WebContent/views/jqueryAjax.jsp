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

		#out2 {
			width: 150px;
			height: 65px;
			border: 3px solid lightgray;
			margin: 0 auto;
		}

		#out3,
		#out4,
		#out5,
		#out6,
		#out7 {
			width: 280px;
			height: 230px;
			border: 3px solid lightgray;
			margin: 0 auto;
		}

		#selectList {
			margin-top: 5px;
		}
	</style>

	<body>
		<br>
		<div class="ui container">
			<br>
			<center>
				<h1>JQuery를 이용한 Ajax 테스트</h1>
				<hr>
			</center>
			<div class="ui center aligned segment">
				<h1>1. 서버로 값 전송</h1>
				<div class="ui labeled input">
					<div class="ui label">이름</div>
					<input type="text" id="myName" placeholder="입력" />
					<button onclick="test1();" class="ui blue button">클릭</button>
				</div>
			</div>

			<div class="ui center aligned segment">
				<h1>2. 버튼 클릭 시 서버에서 보낸 값을 브라우저에서 출력</h1>
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
				<h1>3. 서버로 기본 값 전송하고, 결과를 받아 출력</h1>
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

			<div class="ui center aligned segment">
				<h1>4. 서버로 Object 형태의 데이터 전송, 서버에서 처리 후 결과 값 리턴</h1>
				<div class="ui labeled input">
					<div class="ui label">이름</div>
					<input type="text" id="studentName" placeholder="입력" />
				</div>
				<br>
				<br>
				<div class="ui labeled input">
					<div class="ui label">나이</div>
					<input type="text" id="studentAge" placeholder="입력" />
				</div>
				<br>
				<br>
				<div class="ui labeled input">
					<div class="ui label">주소</div>
					<input type="text" id="studentAddr" placeholder="입력" />
				</div>
				<br>
				<br>
				<button onclick="test4();" class="ui blue button">결과확인</button>
			</div>

			<div class="ui center aligned segment">
				<h1>5. 서버에게 기본 데이터 전송 후 객체 리턴</h1>
				<div class="ui labeled input">
					<div class="ui label">유저번호 입력</div>
					<input type="text" id="userIndex" placeholder="입력" onchange="test5();" />
				</div>
				<br>
				<br> 결과
				<div id="out2"></div>
			</div>
			<!--
					 서버에서 만든 객체를 자바스크립트에서 처리 할 수 없음
					 서버와 자바가 공통적으로 인식 할 수 있는 객체 타입을 사용 해야 함(JSON)

					 ## JSON 이란 ##
					 -> JavaScript Object Notation
					 -> 자바에서 객체를 표현하기 위한 표기법
					 -> 자바에서 만든 객체를 자바스크립트에서 사용하려면
					 JSON객체를 사용 해야 함
				-->

			<div class="ui center aligned segment">
				<h1>6. 기본 값을 전송, 서버에서 리스트 객체 반환</h1>
				<div class="ui labeled input">
					<div class="ui label">유저정보 순번</div>
					<input type="text" id="userIndex2" placeholder="입력" onchange="test6();" />
				</div>
				<br>
				<br>
				<br> 결과
				<div id="out3"></div>
			</div>

			<div class="ui center aligned segment">
				<h1>7. 번호 여러개 전송하여 여러개의 리스트 반환 유저 정보(번호, 번호, 번호)</h1>
				<div class="ui labeled input">
					<div class="ui label">유저정보 순번</div>
					<input type="text" id="userIndexs" placeholder="입력" onchange="test7();" />
				</div>
				<br>
				<br>
				<br> 결과
				<div id="out4"></div>
			</div>

			<div class="ui center aligned segment">
				<h1>8. 서버로 기본형 데이터 여러개 전송, 서버에서 맵 형태의 객체 리턴 유저 정보(번호, 번호, 번호)</h1>
				<div class="ui labeled input">
					<div class="ui label">유저정보 순번</div>
					<input type="text" id="userIndexs2" placeholder="입력" onchange="test8();" />
				</div>
				<br>
				<br>
				<br> 결과
				<div id="out5"></div>
			</div>

			<div class="ui center aligned segment">
				<h1>9. 서버 정보 요청후 표(table) 구성하기</h1>

				<button onclick="test9();" class="ui orange button">유저 정보 불러오기</button>
				<br>
				<table id="userTbl" class="ui table">
					<thead>
						<tr>
							<th>이름</th>
							<th>나이</th>
							<th>주소</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
				<br>
				<br>
				<br>
			</div>

			<div class="ui center aligned segment">
				<h1>10. 서버D에서 전송한 list 객체를 바탕으로 select 리스트 받아오기 </h1>
				<div class="ui labeled input">
					<div class="ui label">유저이름</div>
					<input type="text" id="selectUserName" placeholder="입력" />
				</div>
				<button onclick="test10();" class="ui orange button">선택</button>
				<br>
				<select name="selectList" id="selectList"></select>
			</div>

			<div class="ui center aligned segment">
				<h1>11. GSON을 이용한 List 받아오기 </h1>
				<h5>자바객체 &lt; - &gt; JSON 상호 변환 가능</h5>
				<button onclick="test11();" class="ui orange button">가져오기</button>
				<br>
				<br>
				<p id="out6"></p>
			</div>

			<div class="ui center aligned segment">
				<h1>12. GSON을 이용한 Map 받아오기 </h1>
				<button onclick="test12();" class="ui orange button">가져오기</button>
				<br>
				<br>
				<p id="out7"></p>
			</div>
			<br>
			<br>
			<br>
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
					$('#out1').val("서버에서 전송 실패");
				}
			});
		}

		function test4() {
			var $studentName = $('#studentName').val();
			var $studentAge = $('#studentAge').val();
			var $studentAddr = $('#studentAddr').val();

			var student = {
				name: $studentName,
				age: $studentAge,
				addr: $studentAddr
			};

			$.ajax({
				url: "/test4",
				type: "GET",
				data: student,
				success: function () {
					console.log('성공');
				},
				error: function () {
					console.log('실패');
				}
			});
		}

		function test5() {
			var $userIndex = $('#userIndex').val();

			$.ajax({
				url: '/test5',
				type: "GET",
				data: {
					userIndex: $userIndex
				},
				success: function (data) {
					console.log('성공');
					$('#out2').html('이름 : ' + data.name + '<br>' + '나이 : ' + data.age + '<br>' + '주소 : ' + data.addr);
				},
				error: function () {
					console.log('실패');
				}
			});
		}

		function test6() {
			var $userIndex2 = $('#userIndex2').val();

			$.ajax({
				url: '/test6',
				type: 'GET',
				data: {
					userIndex: $userIndex2
				},
				success: function (data) {
					console.log('성공');

					var result = "";

					for (var i = 0; i < data.length; i++) {
						result += "이름 : " + data[i].name + " / 나이 : " + data[i].age + " / 주소 : " + data[i].addr + "<br>";
					}

					$('#out3').html(result);
				},
				error: function () {
					console.log('실패');
				}
			});
		}

		function test7() {
			var $userIndexs = $('#userIndexs').val();

			$.ajax({
				url: '/test7',
				type: 'GET',
				data: {
					userIndexs: $userIndexs
				},
				success: function (data) {
					console.log('성공');

					var result = "";

					for (var i = 0; i < data.length; i++) {
						result += "이름 : " + data[i].name + " / 나이 : " + data[i].age + " / 주소 : " + data[i].addr + "<br>";
					}

					$('#out4').html(result);
				},
				error: function () {
					console.log('실패');
				}
			});
		}

		function test8() {
			var $userIndexs = $('#userIndexs2').val();

			$.ajax({
				url: '/test8',
				type: 'GET',
				data: {
					userIndexs: $userIndexs
				},
				success: function (data) {
					console.log('성공');

					var result = "";

					var keys = Object.keys(data);
					// JSON에서 MAP 형태로 꺼내오려면
					// data[키] 형태로 꺼내오면 됨

					for (var i = 0; i < keys.length; i++) {
						result += "이름 : " + data[keys[i]].name + " / 나이 : " + data[keys[i]].age + " / 주소 : " + data[keys[i]].addr +
							"<br>";
					}

					$('#out5').html(result);
				},
				error: function () {
					console.log('실패');
				}
			});
		}

		function test9() {
			var $userIndexs = $('#userIndexs2').val();

			$.ajax({
				url: '/test9',
				type: 'GET',
				data: {
					userIndexs: $userIndexs
				},
				success: function (data) {
					console.log('성공');

					for (var i = 0; i < data.length; i++) {
						var tr = $('<tr>');
						var nameTd = $('<td>').text(data[i].name);
						var ageTd = $('<td>').text(data[i].age);
						var addrTd = $('<td>').text(data[i].addr);
						tr.append(nameTd);
						tr.append(ageTd);
						tr.append(addrTd);

						$('#userTbl').append(tr);
					}
				},
				error: function () {
					console.log('실패');
				}
			});
		}

		function test10() {
			var selectUserName = $('#selectUserName').val();

			$.ajax({
				url: '/test10',
				type: 'GET',
				success: function (data) {
					console.log('성공');

					var selected = '';
					$('#selectList').find('option').remove();

					for (var i = 0; i < data.length; i++) {
						var name = data[i].name;
						if (name == selectUserName) {
							selected = "selected";
						} else {
							selected = "";
						}
						$('#selectList').append('<option ' + selected + '>' + name + '</option>');
					}

				},
				error: function () {
					console.log('실패');
				}
			});
		}

		function test11() {

			$.ajax({
				url: '/test11',
				type: 'GET',
				success: function (data) {
					console.log('성공');

					var result = "";
					for (var i = 0; i < data.length; i++) {
						result += "이름 : " + data[i].name + " / 나이 : " + data[i].age + " / 주소 : " + data[i].addr + "<br>";
					}

					$('#out6').html(result);
				},
				error: function () {
					console.log('실패');
				}
			});
		}

		function test12() {

			$.ajax({
				url: '/test12',
				type: 'GET',
				success: function (data) {
					console.log('성공');
					var result = "";
					var keys = Object.keys(data);

					for (var i = 0; i < keys.length; i++) {
						result += "이름 : " + data[keys[i]].name + " / 나이 : " + data[keys[i]].age + " / 주소 : " + data[keys[i]].addr +
							"<br>";
					}
					$('#out7').html(result);

				},
				error: function () {
					console.log('실패');
				}
			});
		}
	</script>

	</html>