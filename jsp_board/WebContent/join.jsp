<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<script language="JavaScript" src="member.js" ></script>
	</head>
	<body>
		<form name="reg_frm" action="joinOk.jsp" method="post">
		
			ID<br/>
			<input type="text" name="id" size="20"><br/><br/>
			
			비밀번호<br/>
			<input type="password" name="pw" size="20"><br/><br/>
			
			비밀번호 확인<br/>
			<input type="password" name="pw_chk" size="20"><br/><br/>
			
			이름<br/>
			<input type="text" name="name" size="20"><br/><br/>
			
			닉네임<br/>
			<input type="text" name="nickname" size="20"><br/><br/>
			
			전화번호<br/>
			<select name="phone1">
				<option value="010">010</option>
				<option value="02">016</option>
			</select>
			- <input type="text" name="phone2" size="5"> - <input type="text" name="phone3" size="5"><br/><br/>
			
			이메일<br/>
			<input type="text" name="email" size="20"><br/><br/>
			
			성별<br/>
			<input type="radio" name="gender" value="woman">여자
			<input type="radio" name="gender" value="man">남자 <br><br/>
			
			생년월일 <br/>
			<select name="birthY">
				<option value="2000" selected>2000</option>
				<option value="2001">2001</option>
			</select>년 
			<select name="birthM">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6" selected>6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>월 
			<select name="birthD">
				<option value="25">25</option>
				<option value="26" selected>26</option>
				<option value="27">27</option>
			</select>일
			
			<br/><br/>
			
			<input type="button" value="회원가입" onclick="infoConfirm()"/> &nbsp;&nbsp;&nbsp; 
			<input type="button" value="취소" onclick="javascript:window.location='login.jsp'"/>
		</form>
	</body>
</html>