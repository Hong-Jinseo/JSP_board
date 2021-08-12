<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 이미 로그인 한 상태라면 바로 main으로 -->
<% if(session.getAttribute("ValidMem") != null) { %>
	<jsp:forward page="main.jsp"></jsp:forward>
<% } %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Welcome to Hong's BOARD</title>
	</head>
	<body>
		<form action="loginOk.jsp" method="post">
			아이디<br/>
			<input type="text" name="id" value="<% if(session.getAttribute("id")!=null) out.println(session.getAttribute("id")); %>" size="30"> <br/><br/>
			<!-- id값이 입력되었다면 value에 저장 -->
			
			비밀번호<br/>
			<input type="password" name="pw" size="30"> <br/><br/>
			
			<button type="submit">로그인</button> &nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='join.jsp'">회원가입</button> <br/><br/>
			<a href="main.jsp">메인 화면으로</a>
		</form>
	</body>
</html>