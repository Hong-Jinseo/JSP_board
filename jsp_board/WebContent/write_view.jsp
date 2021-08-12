<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
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
	<form action="write.do" method="post">
		<input type="hidden" name="bName" value="<%= nickname %>">
		<input type="hidden" name="bUserId" value="<%= id %>">
		
		<table width="500" cellpadding="5" cellspacing="0" border="1">		
			<tr>
				<td> 이름 </td>
				<td> <%= nickname %> </td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="bTitle" size="20" style="width:100%; border:0;"> </td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea name="bContent" rows="10" style="width:100%; border: 0;"></textarea> </td>
			</tr>
			<tr>
				<td colspan="2"> <input type="submit" value="입력"> &nbsp;&nbsp; <a href="list.do">목록보기</a></td>
			</tr>
		</table>
	</form>
</body>
</html>