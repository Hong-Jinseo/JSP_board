<%@page import="java.sql.Timestamp" %>
<%@page import="board.member.db.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>

<jsp:useBean id="dto" class="board.member.db.MemberDto"/>
<jsp:setProperty name="dto" property="*"/>

<%
	dto.setrDate(new Timestamp(System.currentTimeMillis()));
	MemberDao dao = MemberDao.getInstance();
	if(dao.confirmId(dto.getId()) == MemberDao.MEMBER_EXISTENT){
%>
	<script language="javascript">
		alert("�̹� �����ϴ� ���̵��Դϴ�.");
		history.back();
	</script>
<%
	}else{
		int ri = dao.insertMember(dto);
		if(ri == MemberDao.MEMBER_JOIN_SUCCESS){
			session.setAttribute("id", dto.getId());
%>
	<script language="javascript">
		alert("ȸ�� ������ �����մϴ�.");
		document.location.href="login.jsp";
	</script>
<%
		}else{
%>
		<script language="javascript">
			alert("ȸ�� ���Կ� �����߽��ϴ�.");
			history.back();
		</script>
<%
		}
	}
%>