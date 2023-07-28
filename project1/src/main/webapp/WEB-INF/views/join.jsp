<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/join.css">
</head>
<body>
	<%@ include file="menu.jsp"%>
	<form action="./join" method="post" >
	<div class="join-div" align="center">
	
	<div>
		<h1>회원가입</h1>
	</div>
	
		<div>
			<div>아이디</div>
			<div>
				<input type="text" name="id" placeholder="아이디를 입력해 주세요">
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
				<select name="mbti" >
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
				<input type="radio" name="gender" id="m"  value="0">
				<label for="m">남자 </label>
				<input type="radio" name="gender" id="f" value="1">
				<label for="f">여자 </label>	
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