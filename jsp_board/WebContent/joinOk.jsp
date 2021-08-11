<%@page import="java.sql.Timestamp" %>
<%@page import="board.member.db.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("EUC-KR"); %>

<jsp:useBean id="dto" class="board.member.db.MemberDto"/>
<jsp:setProperty name="dto" property="*"/>

<%
	dto.setrDate(new Timestamp(System.currentTimeMillis()));
	MemberDao dao = MemberDao.getInstance();
	if(dao.confirmId(dto.getId()) == MemberDao.MEMBER_EXISTENT){
%>
	<script language="javascript">
		alert("이미 존재하는 아이디입니다.");
		history.back();
	</script>
<%
	}else{
		int ri = dao.insertMember(dto);
		if(ri == MemberDao.MEMBER_JOIN_SUCCESS){
			session.setAttribute("id", dto.getId());
%>
	<script language="javascript">
		alert("회원 가입을 축하합니다.");
		document.location.href="login.jsp";
	</script>
<%
		}else{
%>
		<script language="javascript">
			alert("회원 가입에 실패했습니다.");
			history.back();
		</script>
<%
		}
	}
%>