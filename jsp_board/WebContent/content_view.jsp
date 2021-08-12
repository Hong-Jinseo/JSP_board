<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 로그인 안 한 상태라면 login 페이지로 -->
<% 	if(session.getAttribute("ValidMem") == null) { %>
		<jsp:forward page="main.jsp"></jsp:forward>
<%
	} 
	String id = (String)session.getAttribute("id");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script language="JavaScript" src="member.js" ></script>
</head>
<body>
	
	<table width="500" cellpadding="1" cellspacing="0" border="1">
		<form name="contentform" action="toModify.do" method="post">
			<input type="hidden" name="bId" value="${content_view.bId}">
			<input type="hidden" name="bUserId" value="${content_view.bUserId}">
			<input type="hidden" name="loginId" value="${content_view.bUserId}">
			<tr>
				<td> 번호 </td>
				<td> ${content_view.bId} </td>
			</tr>
			<tr>
				<td> 조회수 </td>
				<td> ${content_view.bHit} </td>
			</tr>
			<tr>
				<td> 이름 </td>
				<td> ${content_view.bName} </td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> ${content_view.bTitle} </td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> ${content_view.bContent} </td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="수정" onclick="changeContentConfirm()"/>
					<a href="list.do"> 목록보기 </a> &nbsp;&nbsp;&nbsp;
					<a href="delete.do?bId=${content_view.bId}"> 삭제 </a> &nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</form>
	</table>
	
</body>
</html>