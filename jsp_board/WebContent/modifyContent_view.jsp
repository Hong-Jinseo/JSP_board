<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="modify.do" method="post">
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
				<td colspan="8"> <input type="text" name="bTitle" value="${content_view.bTitle}" size="20" style="width:100%; border:0;"> </td>
			</tr>
			<tr>
				<td colspan="1"> 내용 </td>
				<td colspan="8"> <textarea name="bContent" rows="10" style="width:100%; border: 0;"> ${content_view.bContent} </textarea> </td>
			</tr>
			<tr>
				<td colspan="9">
					<input type="submit" value="수정 완료">
					<input type="hidden" name="bId" value="${content_view.bId}">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>