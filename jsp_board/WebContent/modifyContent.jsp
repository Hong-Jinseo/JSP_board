<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width="500" cellpadding="1" cellspacing="0" border="1">
		<form action="modify.do" method="post">
			
			<tr>
				<td> 번호 </td>
				<td> ${content_view.bId} </td>
			</tr>
			<tr>
				
			</tr>
			<tr>
				<td> 이름 </td>
				<td> ${content_view.bName} </td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="bTitle" value="${content_view.bTitle}"> </td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <input type="text" name="bContent" value="${content_view.bContent}"> </td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="수정 완료">
					<input type="hidden" name="bId" value="${content_view.bId}">
				</td>
			</tr>
			
		</form>
	</table>

</body>
</html>