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

	<form name="content_form" action="toModify.do" method="post">

		<input type="hidden" name="bId" value="${content_view.bId}">
		<input type="hidden" name="bUserId" value="${content_view.bUserId}">
		<input type="hidden" name="loginId" value="<%= id %>">
				
		<table width="500" cellpadding="5" cellspacing="0" border="1">
			<tr>
				<td colspan="1"> 번호 </td>
				<td colspan="2"> ${content_view.bId} </td>
				<td colspan="1"> 조회수 </td>
				<td colspan="2"> ${content_view.bHit} </td>
				<td colspan="1"> 작성자 </td>
				<td colspan="2"> ${content_view.bName} </td>
			</tr>
			<tr>
				<td colspan="1"> 제목 </td>
				<td colspan="8"> ${content_view.bTitle} </td>
			</tr>
			<tr height="100">
				<td colspan="1"> 내용 </td>
				<td colspan="8" style="word-break:break-all;"> ${content_view.bContent} </td>
			</tr>
			<tr>
				<td colspan="9">
					<input type="button" value="수정" onclick="changeContentConfirm()"/>
					<a href="list.do"> 목록보기 </a> &nbsp;&nbsp;&nbsp;
					<a href="delete.do?bId=${content_view.bId}"> 삭제 </a> &nbsp;&nbsp;&nbsp;
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>