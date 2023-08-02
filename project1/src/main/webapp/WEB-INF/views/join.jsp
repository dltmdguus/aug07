<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/join.css">
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
$(function(){
$("#idCheck").click(function(){
	let id = $("#id").val();
	//console.log(id);
	//console.log(id.length);
	if(id == "" || id.length < 5){
		$("#id").focus();
		$("#resultMSG").text("아이디는 다섯글자 이상이어야 합니다.");
		$("#resultMSG").css("color", "red").css("font-weight", "bold").css("font-size", "15pt");
	} else {
		$.ajax({// ajax 시작
			url : "./checkID", //
			type: "post",
			data: {"id" : id},
			dataType : "json", //{result : 0}
			success: function(data){
				//alert(data.result);
				if(data.result == 1) { //1이면 등록이 되어 있는 얘니까
					$("#id").css("background-color", "red").focus();
					$("#resultMSG").css("color", "red").text("이미 등록된 아이디입니다.");
				} else {
					$("#id").css("background-color", "white");
					$("#resultMSG").css("color", "green").text("가입할 수 있습니다.");	
				}
				//$("#resultMSG").text("성공시 결과값 : " + data);
			},
			error: function(request, status, error){
				$("#resultMSG").text("실패시 결과값 : " + error);
			}
		});// ajax 끝
	}
	return false; //멈추기
});
});
</script>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<form action="./join" method="post">
		<div class="join-div" align="center">

			<div>
				<h1>회원가입</h1>
			</div>

			<div>
				<div>아이디</div>
				<div>
					<input type="text" name="id" id="id" placeholder="아이디를 입력해 주세요">
					<button id="idCheck">중복검사</button>
					<br>
				</div>
				<span id="resultMSG"></span>
			</div>
			<div class="label-row" style="height: 40px" id="resultForm">
				<div class="label-name"></div>
				<div class="label-in">
					<span id="resultMSG"></span>
				</div>
			</div>
			<div>
				<div>비밀번호</div>
				<div>
					<input type="password" name="pw1" placeholder="비밀번호를 입력해 주세요">
					<input type="password" name="pw2" placeholder="비밀번호를 다시 입력해 주세요">
				</div>
			</div>
			<div>
				<div>이름</div>
				<div>
					<input type="text" name="name" placeholder="이름을 입력해 주세요">
				</div>
			</div>
			<div>
				<div>주소</div>
				<div>
					<input type="text" name="addr" placeholder="주소를 입력해 주세요">
				</div>
			</div>
			<div>
				<div>MBTI</div>
				<div>
					<select name="mbti">
						<option>선택하세요</option>
						<optgroup label="내향형">
							<option value="ISTJ">ISTJ</option>
							<option value="ISTP">ISTP</option>
							<option value="ISFJ">ISFJ</option>
							<option value="ISFP">ISFP</option>
							<option value="INFJ">INFJ</option>
							<option value="INFP">INFP</option>
							<option value="INTJ">INTJ</option>
							<option value="INTP">INTP</option>
						</optgroup>
						<optgroup label="외향형">
							<option value="ESTP">ESTP</option>
							<option value="ESTH">ESTH</option>
							<option value="ESFP">ESFP</option>
							<option value="ESFJ">ESFJ</option>
							<option value="ENFP">ENFP</option>
							<option value="ENFJ">ENFJ</option>
							<option value="ENTP">ENTP</option>
							<option value="ENTJ">ENTJ</option>
						</optgroup>
						<optgroup label="기타">
							<option value="CUTE">CUTE</option>
							<option value="PRETTY">PRETTY</option>
						</optgroup>
					</select>
				</div>
			</div>
			<div>
				<div>생년원일</div>
				<div>
					<input type="date" name="brith">
				</div>
			</div>
			<div>
				<div>성별</div>
				<div>
					<input type="radio" name="gender" id="m" value="0"> <label
						for="m">남자 </label> <input type="radio" name="gender" id="f"
						value="1"> <label for="f">여자 </label>
				</div>
			</div>
			<div>
				<button type="reset">취소</button>
				<button type="submit">가입</button>
			</div>

		</div>
	</form>
</body>
</html>