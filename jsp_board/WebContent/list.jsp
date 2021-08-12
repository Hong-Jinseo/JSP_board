<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 로그인 안 한 상태라면 login 페이지로 -->
<% 	
	String id = null;
	if(session.getAttribute("ValidMem") != null) {
		 id = (String)session.getAttribute("id");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<script language="JavaScript" src="member.js"></script>
	</head>
	
	<body>
		<form name="form" action="write_view.do" method="post">
			<input type="hidden" name="id" value="<%= id %>">
			<table width="500" cellpadding="5" cellspacing="0" border="1">
				<tr>
					<td>번호</td>
					<td>이름</td>
					<td>제목</td>
					<td>날짜</td>
					<td>조회수</td>
				</tr>
				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.bId}</td>
						<td>${dto.bName}</td>
						<td>
							<a href="content_view.do?bId=${dto.bId}"> ${dto.bTitle} </a>
						</td>
						<td>${dto.bDate}</td>
						<td>${dto.bHit}</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5">  
						<input type="button" value="글 작성" onclick="suggestLogin()"/>
					</td>
				</tr>
			</table>
		</form>
		
		<br/><br/>
		<a href="main.do">메인 화면으로</a>
	</body>
</html>