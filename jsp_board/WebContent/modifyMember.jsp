<%@ page import="board.member.db.MemberDto"%>
<%@ page import="board.member.db.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
<%
	String id = (String)session.getAttribute("id");
	MemberDao dao = MemberDao.getInstance();
	MemberDto dto = dao.getMember(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<script language="JavaScript" src="member.js"></script>
	</head>
	<body>
		<form action="modifyMemberOk.jsp" method="post" name="reg_frm">
		
			ID<br/>
			&nbsp;&nbsp;&nbsp; <%= dto.getId() %> <br/><br/>
			
			비밀번호 변경 <br/>
			<input type="button" value="여기를 누르세요" onclick="javascript:window.location='changePw.jsp'"/><br/><br/>
			
			이름<br/>
			&nbsp;&nbsp;&nbsp; <%= dto.getName() %> <br/><br/>
			
			닉네임<br/>
			&nbsp;&nbsp;&nbsp;
			<input type="text" name="nickname" size="30" value="<%= dto.getNickname() %>"> <br/><br/>
			
			전화번호<br/>
			&nbsp;&nbsp;&nbsp;
			<input type="text" name="phone1" size="5" value="<%= dto.getPhone1() %>"> &nbsp;-&nbsp;
			<input type="text" name="phone2" size="5" value="<%= dto.getPhone2() %>"> &nbsp;-&nbsp;
			<input type="text" name="phone3" size="5" value="<%= dto.getPhone3() %>"> <br/><br/>
			
			이메일<br/>
			&nbsp;&nbsp;&nbsp;
			<input type="text" name="email" size="30" value="<%= dto.getEmail() %>"> <br/><br/>
			
			성별<br/>
			&nbsp;&nbsp;&nbsp; <%= dto.getGender() %> <br/><br/>
			
			생년월일 <br/>
			<input type="text" name="birthY" size="3" value="<%= dto.getBirthY() %>"> &nbsp;.
			<input type="text" name="birthM" size="3" value="<%= dto.getBirthM() %>"> &nbsp;.
			<input type="text" name="birthD" size="3" value="<%= dto.getBirthD() %>"> <br/><br/>
			
			<br/><br/>
			
			<input type="button" value="수정" onclick="updateInfoConfirm()"/> &nbsp;&nbsp;&nbsp; 
			<input type="button" value="취소" onclick="javascript:window.location='login.jsp'"/>
		</form>
	</body>
</html>