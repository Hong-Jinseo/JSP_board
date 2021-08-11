<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("ValidMem") == null){
%>
	<jsp:forward page="login.jsp"/>
<%
	}

	String nickname = (String)session.getAttribute("nickname");
	String id = (String)session.getAttribute("id");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1><%= nickname %>님 안녕하세요!</h1><br/>
		<form action="logout.jsp" method="post">
			<input type="button" value="게시판" onclick="javascript:window.location=''"><br/><br/>
			<input type="submit" value="로그아웃"> &nbsp;&nbsp;&nbsp;
			<input type="button" value="정보 수정" onclick="javascript:window.location='modify.jsp'">
		</form>
	</body>
</html>