<%@ page import="board.member.db.MemberDto"%>
<%@ page import="board.member.db.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<%
	String id;
	if(session.getAttribute("ValidMem") == "yes")
		id = (String)session.getAttribute("id");
	else
		id = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>
			<% if(id==null) {%>
				로그인 하셨나요?
			<% } else { %>
				<%= session.getAttribute("nickname") %> 님 안녕하세요!
			<% } %>
		</h1><br/>
		
		<% if(id==null){ %> <form action="login.jsp" method="post">
		<% }else{ %> 	<form action="logout.jsp" method="post"> <% } %>
		
			<input type="button" value="게시판" onclick="javascript:window.location='list.do'"><br/><br/>
			<% if(id==null){ %> <input type="submit" value="로그인"> &nbsp;&nbsp;&nbsp;
			<% }else{ %> 
				<input type="submit" value="로그아웃"> &nbsp;&nbsp;&nbsp; 
				<input type="button" value="정보 수정" onclick="javascript:window.location='modifyMember.jsp'">
			<% } %>
		</form>
	</body>
</html>