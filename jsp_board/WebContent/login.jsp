<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- �̹� �α��� �� ���¶�� �ٷ� main���� -->
<% if(session.getAttribute("ValidMem") != null) { %>
	<jsp:forward page="main.jsp"></jsp:forward>
<% } %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Welcome to Hong's BOARD</title>
	</head>
	<body>
		<form action="LoginOk" method="post">
			���̵�<br/>
			<input type="text" name="id" value="<% if(session.getAttribute("id")!=null) out.println(session.getAttribute("id")); %>" size="30"> <br/><br/>
			<!-- id���� �ԷµǾ��ٸ� value�� ���� -->
			
			��й�ȣ<br/>
			<input type="password" name="pw" size="30"> <br/><br/>
			
			<button type="submit">�α���</button>
			<button type="button" onclick="location.href='join.jsp'">ȸ������</button>
		</form>
	</body>
</html>