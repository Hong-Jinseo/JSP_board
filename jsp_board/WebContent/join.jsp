<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="joinOk.jsp" method="post" name="reg_frm">
		
			ID<br/>
			<input type="text" name="id" size="20"><br/><br/>
			
			��й�ȣ<br/>
			<input type="password" name="pw" size="20"><br/><br/>
			
			��й�ȣ Ȯ��<br/>
			<input type="password" name="pw_chk" size="20"><br/><br/>
			
			�̸�<br/>
			<input type="text" name="name" size="20"><br/><br/>
			
			��ȭ��ȣ<br/>
			<select name="phone1">
				<option value="010">010</option>
				<option value="02">016</option>
			</select>
			- <input type="text" name="phone2" size="5"> - <input type="text" name="phone3" size="5"><br/><br/>
			
			�̸���<br/>
			<input type="text" name="email" size="20"><br/><br/>
			
			����<br/>
			<input type="radio" name="gender" value="woman">����
			<input type="radio" name="gender" value="man">���� <br><br/>
			
			������� <br/>
			<select name="birthY">
				<option value="2000" selected>2000</option>
				<option value="2001">2001</option>
			</select>�� 
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
			</select>�� 
			<select name="birthD">
				<option value="25">25</option>
				<option value="26" selected>26</option>
				<option value="27">27</option>
			</select>��
			
			<br/><br/>
			
			<input type="submit" value="ȸ������" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp; 
			<input type="reset" value="���" onclick="javascript:window.location='login.jsp'">
			
			<!-- input type="button" onclick="infoConfirm()" value="ȸ�������ϱ�"/>
			<input type="button" onClick="location.href='login.jsp'" value="ù ȭ������"/-->
		</form>
	</body>
</html>